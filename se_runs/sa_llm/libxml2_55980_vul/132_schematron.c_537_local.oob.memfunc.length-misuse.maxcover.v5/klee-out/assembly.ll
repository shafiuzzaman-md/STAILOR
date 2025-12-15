; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/132_schematron.c_537_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/132_schematron.c_537_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchematronParserCtxt = type { i32 }
%struct._xmlSchematronPattern = type { i8*, %struct._xmlSchematronPattern* }
%struct._xmlSchematron = type { %struct._xmlSchematronPattern* }

@.str = private unnamed_addr constant [26 x i8] c"allocating schema pattern\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"(result != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/132_schematron.c_537_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchematronPErrMemory(%struct._xmlSchematronParserCtxt* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !24 {
  %4 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %4, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !39, metadata !DIExpression()), !dbg !40
  ret void, !dbg !41
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !42 {
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
define dso_local %struct._xmlSchematronPattern* @xmlSchematronPatternCreate(%struct._xmlSchematronParserCtxt* noundef %0, %struct._xmlSchematron* noundef %1, i8* noundef %2, i8* noundef %3) #0 !dbg !53 {
  %5 = alloca %struct._xmlSchematronPattern*, align 8
  %6 = alloca %struct._xmlSchematronParserCtxt*, align 8
  %7 = alloca %struct._xmlSchematron*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct._xmlSchematronPattern*, align 8
  %11 = alloca %struct._xmlSchematronPattern*, align 8
  store %struct._xmlSchematronParserCtxt* %0, %struct._xmlSchematronParserCtxt** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt** %6, metadata !61, metadata !DIExpression()), !dbg !62
  store %struct._xmlSchematron* %1, %struct._xmlSchematron** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron** %7, metadata !63, metadata !DIExpression()), !dbg !64
  store i8* %2, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !65, metadata !DIExpression()), !dbg !66
  store i8* %3, i8** %9, align 8
  call void @llvm.dbg.declare(metadata i8** %9, metadata !67, metadata !DIExpression()), !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronPattern** %10, metadata !69, metadata !DIExpression()), !dbg !70
  %12 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %6, align 8, !dbg !71
  %13 = icmp eq %struct._xmlSchematronParserCtxt* %12, null, !dbg !73
  br i1 %13, label %23, label %14, !dbg !74

14:                                               ; preds = %4
  %15 = load %struct._xmlSchematron*, %struct._xmlSchematron** %7, align 8, !dbg !75
  %16 = icmp eq %struct._xmlSchematron* %15, null, !dbg !76
  br i1 %16, label %23, label %17, !dbg !77

17:                                               ; preds = %14
  %18 = load i8*, i8** %8, align 8, !dbg !78
  %19 = icmp eq i8* %18, null, !dbg !79
  br i1 %19, label %23, label %20, !dbg !80

20:                                               ; preds = %17
  %21 = load i8*, i8** %9, align 8, !dbg !81
  %22 = icmp eq i8* %21, null, !dbg !82
  br i1 %22, label %23, label %24, !dbg !83

23:                                               ; preds = %20, %17, %14, %4
  store %struct._xmlSchematronPattern* null, %struct._xmlSchematronPattern** %5, align 8, !dbg !84
  br label %68, !dbg !84

24:                                               ; preds = %20
  %25 = call i8* @xmlMalloc(i64 noundef 16), !dbg !85
  %26 = bitcast i8* %25 to %struct._xmlSchematronPattern*, !dbg !86
  store %struct._xmlSchematronPattern* %26, %struct._xmlSchematronPattern** %10, align 8, !dbg !87
  %27 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !88
  %28 = icmp eq %struct._xmlSchematronPattern* %27, null, !dbg !90
  br i1 %28, label %29, label %32, !dbg !91

29:                                               ; preds = %24
  %30 = load %struct._xmlSchematronParserCtxt*, %struct._xmlSchematronParserCtxt** %6, align 8, !dbg !92
  %31 = load i8*, i8** %8, align 8, !dbg !94
  call void @xmlSchematronPErrMemory(%struct._xmlSchematronParserCtxt* noundef %30, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef %31), !dbg !95
  store %struct._xmlSchematronPattern* null, %struct._xmlSchematronPattern** %5, align 8, !dbg !96
  br label %68, !dbg !96

32:                                               ; preds = %24
  %33 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !97
  %34 = bitcast %struct._xmlSchematronPattern* %33 to i8*, !dbg !98
  %35 = call i8* @memset(i8* %34, i32 0, i64 16), !dbg !98
  %36 = load i8*, i8** %9, align 8, !dbg !99
  %37 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !100
  %38 = getelementptr inbounds %struct._xmlSchematronPattern, %struct._xmlSchematronPattern* %37, i32 0, i32 0, !dbg !101
  store i8* %36, i8** %38, align 8, !dbg !102
  %39 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !103
  %40 = getelementptr inbounds %struct._xmlSchematronPattern, %struct._xmlSchematronPattern* %39, i32 0, i32 1, !dbg !104
  store %struct._xmlSchematronPattern* null, %struct._xmlSchematronPattern** %40, align 8, !dbg !105
  %41 = load %struct._xmlSchematron*, %struct._xmlSchematron** %7, align 8, !dbg !106
  %42 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %41, i32 0, i32 0, !dbg !108
  %43 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %42, align 8, !dbg !108
  %44 = icmp eq %struct._xmlSchematronPattern* %43, null, !dbg !109
  br i1 %44, label %45, label %49, !dbg !110

45:                                               ; preds = %32
  %46 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !111
  %47 = load %struct._xmlSchematron*, %struct._xmlSchematron** %7, align 8, !dbg !113
  %48 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %47, i32 0, i32 0, !dbg !114
  store %struct._xmlSchematronPattern* %46, %struct._xmlSchematronPattern** %48, align 8, !dbg !115
  br label %66, !dbg !116

49:                                               ; preds = %32
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronPattern** %11, metadata !117, metadata !DIExpression()), !dbg !119
  %50 = load %struct._xmlSchematron*, %struct._xmlSchematron** %7, align 8, !dbg !120
  %51 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %50, i32 0, i32 0, !dbg !121
  %52 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %51, align 8, !dbg !121
  store %struct._xmlSchematronPattern* %52, %struct._xmlSchematronPattern** %11, align 8, !dbg !119
  br label %53, !dbg !122

53:                                               ; preds = %58, %49
  %54 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %11, align 8, !dbg !123
  %55 = getelementptr inbounds %struct._xmlSchematronPattern, %struct._xmlSchematronPattern* %54, i32 0, i32 1, !dbg !124
  %56 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %55, align 8, !dbg !124
  %57 = icmp ne %struct._xmlSchematronPattern* %56, null, !dbg !125
  br i1 %57, label %58, label %62, !dbg !122

58:                                               ; preds = %53
  %59 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %11, align 8, !dbg !126
  %60 = getelementptr inbounds %struct._xmlSchematronPattern, %struct._xmlSchematronPattern* %59, i32 0, i32 1, !dbg !127
  %61 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %60, align 8, !dbg !127
  store %struct._xmlSchematronPattern* %61, %struct._xmlSchematronPattern** %11, align 8, !dbg !128
  br label %53, !dbg !122, !llvm.loop !129

62:                                               ; preds = %53
  %63 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !131
  %64 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %11, align 8, !dbg !132
  %65 = getelementptr inbounds %struct._xmlSchematronPattern, %struct._xmlSchematronPattern* %64, i32 0, i32 1, !dbg !133
  store %struct._xmlSchematronPattern* %63, %struct._xmlSchematronPattern** %65, align 8, !dbg !134
  br label %66

66:                                               ; preds = %62, %45
  %67 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %10, align 8, !dbg !135
  store %struct._xmlSchematronPattern* %67, %struct._xmlSchematronPattern** %5, align 8, !dbg !136
  br label %68, !dbg !136

68:                                               ; preds = %66, %29, %23
  %69 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %5, align 8, !dbg !137
  ret %struct._xmlSchematronPattern* %69, !dbg !137
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !138 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchematronParserCtxt, align 4
  %3 = alloca %struct._xmlSchematron, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct._xmlSchematronPattern*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronParserCtxt* %2, metadata !141, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata %struct._xmlSchematron* %3, metadata !143, metadata !DIExpression()), !dbg !144
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata [32 x i8]* %5, metadata !147, metadata !DIExpression()), !dbg !151
  %7 = getelementptr inbounds %struct._xmlSchematron, %struct._xmlSchematron* %3, i32 0, i32 0, !dbg !152
  store %struct._xmlSchematronPattern* null, %struct._xmlSchematronPattern** %7, align 8, !dbg !153
  %8 = bitcast %struct._xmlSchematronParserCtxt* %2 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !155
  %9 = bitcast i8** %4 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !157
  %10 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !158
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !159
  %11 = icmp ne %struct._xmlSchematronParserCtxt* %2, null, !dbg !160
  %12 = zext i1 %11 to i32, !dbg !160
  %13 = sext i32 %12 to i64, !dbg !161
  call void @klee_assume(i64 noundef %13), !dbg !162
  %14 = icmp ne %struct._xmlSchematron* %3, null, !dbg !163
  %15 = zext i1 %14 to i32, !dbg !163
  %16 = sext i32 %15 to i64, !dbg !164
  call void @klee_assume(i64 noundef %16), !dbg !165
  %17 = load i8*, i8** %4, align 8, !dbg !166
  %18 = icmp ne i8* %17, null, !dbg !167
  %19 = zext i1 %18 to i32, !dbg !167
  %20 = sext i32 %19 to i64, !dbg !166
  call void @klee_assume(i64 noundef %20), !dbg !168
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !169
  %22 = icmp ne i8* %21, null, !dbg !170
  %23 = zext i1 %22 to i32, !dbg !170
  %24 = sext i32 %23 to i64, !dbg !169
  call void @klee_assume(i64 noundef %24), !dbg !171
  call void @llvm.dbg.declare(metadata %struct._xmlSchematronPattern** %6, metadata !172, metadata !DIExpression()), !dbg !173
  %25 = load i8*, i8** %4, align 8, !dbg !174
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0, !dbg !175
  %27 = call %struct._xmlSchematronPattern* @xmlSchematronPatternCreate(%struct._xmlSchematronParserCtxt* noundef %2, %struct._xmlSchematron* noundef %3, i8* noundef %25, i8* noundef %26), !dbg !176
  store %struct._xmlSchematronPattern* %27, %struct._xmlSchematronPattern** %6, align 8, !dbg !173
  %28 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %6, align 8, !dbg !177
  %29 = icmp ne %struct._xmlSchematronPattern* %28, null, !dbg !179
  br i1 %29, label %30, label %39, !dbg !180

30:                                               ; preds = %0
  %31 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %6, align 8, !dbg !181
  %32 = icmp ne %struct._xmlSchematronPattern* %31, null, !dbg !181
  br i1 %32, label %33, label %35, !dbg !181

33:                                               ; preds = %30
  br i1 true, label %34, label %35, !dbg !181

34:                                               ; preds = %33
  br label %37, !dbg !181

35:                                               ; preds = %33, %30
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 99, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !181
  br label %37, !dbg !181

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 100, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !183
  br label %39, !dbg !184

39:                                               ; preds = %37, %0
  %40 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %6, align 8, !dbg !185
  %41 = icmp ne %struct._xmlSchematronPattern* %40, null, !dbg !187
  br i1 %41, label %42, label %45, !dbg !188

42:                                               ; preds = %39
  %43 = load %struct._xmlSchematronPattern*, %struct._xmlSchematronPattern** %6, align 8, !dbg !189
  %44 = bitcast %struct._xmlSchematronPattern* %43 to i8*, !dbg !189
  call void @free(i8* noundef %44) #7, !dbg !191
  br label %45, !dbg !192

45:                                               ; preds = %42, %39
  ret i32 0, !dbg !193
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !194 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !200, metadata !DIExpression()), !dbg !201
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i8** %7, metadata !204, metadata !DIExpression()), !dbg !206
  %8 = load i8*, i8** %4, align 8, !dbg !207
  store i8* %8, i8** %7, align 8, !dbg !206
  br label %9, !dbg !208

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !209
  %11 = add i64 %10, -1, !dbg !209
  store i64 %11, i64* %6, align 8, !dbg !209
  %12 = icmp ugt i64 %10, 0, !dbg !210
  br i1 %12, label %13, label %18, !dbg !208

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !211
  %15 = trunc i32 %14 to i8, !dbg !211
  %16 = load i8*, i8** %7, align 8, !dbg !212
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !212
  store i8* %17, i8** %7, align 8, !dbg !212
  store i8 %15, i8* %16, align 1, !dbg !213
  br label %9, !dbg !208, !llvm.loop !214

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !215
  ret i8* %19, !dbg !216
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23, !23}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/132_schematron.c_537_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0ca89c487f2ef3df4f8d1f88f05b6fff")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronPatternPtr", file: !1, line: 11, baseType: !5)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronPattern", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronPattern", file: !1, line: 17, size: 128, elements: !8)
!8 = !{!9, !13}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 18, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!12 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 19, baseType: !4, size: 64, offset: 64)
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
!24 = distinct !DISubprogram(name: "xmlSchematronPErrMemory", scope: !1, file: !1, line: 31, type: !25, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !10, !33}
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematronParserCtxt", file: !1, line: 14, baseType: !29)
!29 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematronParserCtxt", file: !1, line: 26, size: 32, elements: !30)
!30 = !{!31}
!31 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !29, file: !1, line: 27, baseType: !32, size: 32)
!32 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodePtr", file: !1, line: 15, baseType: !3)
!34 = !{}
!35 = !DILocalVariable(name: "ctxt", arg: 1, scope: !24, file: !1, line: 31, type: !27)
!36 = !DILocation(line: 31, column: 55, scope: !24)
!37 = !DILocalVariable(name: "msg", arg: 2, scope: !24, file: !1, line: 31, type: !10)
!38 = !DILocation(line: 31, column: 73, scope: !24)
!39 = !DILocalVariable(name: "node", arg: 3, scope: !24, file: !1, line: 31, type: !33)
!40 = !DILocation(line: 31, column: 89, scope: !24)
!41 = !DILocation(line: 33, column: 1, scope: !24)
!42 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 35, type: !43, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!43 = !DISubroutineType(types: !44)
!44 = !{!3, !45}
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !46, line: 46, baseType: !47)
!46 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!47 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!48 = !DILocalVariable(name: "size", arg: 1, scope: !42, file: !1, line: 35, type: !45)
!49 = !DILocation(line: 35, column: 24, scope: !42)
!50 = !DILocation(line: 36, column: 19, scope: !42)
!51 = !DILocation(line: 36, column: 12, scope: !42)
!52 = !DILocation(line: 36, column: 5, scope: !42)
!53 = distinct !DISubprogram(name: "xmlSchematronPatternCreate", scope: !1, file: !1, line: 40, type: !54, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!54 = !DISubroutineType(types: !55)
!55 = !{!4, !27, !56, !33, !10}
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchematron", file: !1, line: 13, baseType: !58)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchematron", file: !1, line: 22, size: 64, elements: !59)
!59 = !{!60}
!60 = !DIDerivedType(tag: DW_TAG_member, name: "patterns", scope: !58, file: !1, line: 23, baseType: !4, size: 64)
!61 = !DILocalVariable(name: "ctxt", arg: 1, scope: !53, file: !1, line: 40, type: !27)
!62 = !DILocation(line: 40, column: 77, scope: !53)
!63 = !DILocalVariable(name: "schema", arg: 2, scope: !53, file: !1, line: 41, type: !56)
!64 = !DILocation(line: 41, column: 68, scope: !53)
!65 = !DILocalVariable(name: "node", arg: 3, scope: !53, file: !1, line: 42, type: !33)
!66 = !DILocation(line: 42, column: 64, scope: !53)
!67 = !DILocalVariable(name: "name", arg: 4, scope: !53, file: !1, line: 43, type: !10)
!68 = !DILocation(line: 43, column: 65, scope: !53)
!69 = !DILocalVariable(name: "ret", scope: !53, file: !1, line: 44, type: !4)
!70 = !DILocation(line: 44, column: 29, scope: !53)
!71 = !DILocation(line: 46, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !53, file: !1, line: 46, column: 9)
!73 = !DILocation(line: 46, column: 15, scope: !72)
!74 = !DILocation(line: 46, column: 24, scope: !72)
!75 = !DILocation(line: 46, column: 28, scope: !72)
!76 = !DILocation(line: 46, column: 35, scope: !72)
!77 = !DILocation(line: 46, column: 44, scope: !72)
!78 = !DILocation(line: 46, column: 48, scope: !72)
!79 = !DILocation(line: 46, column: 53, scope: !72)
!80 = !DILocation(line: 46, column: 62, scope: !72)
!81 = !DILocation(line: 46, column: 66, scope: !72)
!82 = !DILocation(line: 46, column: 71, scope: !72)
!83 = !DILocation(line: 46, column: 9, scope: !53)
!84 = !DILocation(line: 47, column: 9, scope: !72)
!85 = !DILocation(line: 49, column: 37, scope: !53)
!86 = !DILocation(line: 49, column: 11, scope: !53)
!87 = !DILocation(line: 49, column: 9, scope: !53)
!88 = !DILocation(line: 50, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !53, file: !1, line: 50, column: 9)
!90 = !DILocation(line: 50, column: 13, scope: !89)
!91 = !DILocation(line: 50, column: 9, scope: !53)
!92 = !DILocation(line: 51, column: 33, scope: !93)
!93 = distinct !DILexicalBlock(scope: !89, file: !1, line: 50, column: 22)
!94 = !DILocation(line: 51, column: 68, scope: !93)
!95 = !DILocation(line: 51, column: 9, scope: !93)
!96 = !DILocation(line: 52, column: 9, scope: !93)
!97 = !DILocation(line: 54, column: 12, scope: !53)
!98 = !DILocation(line: 54, column: 5, scope: !53)
!99 = !DILocation(line: 55, column: 17, scope: !53)
!100 = !DILocation(line: 55, column: 5, scope: !53)
!101 = !DILocation(line: 55, column: 10, scope: !53)
!102 = !DILocation(line: 55, column: 15, scope: !53)
!103 = !DILocation(line: 56, column: 5, scope: !53)
!104 = !DILocation(line: 56, column: 10, scope: !53)
!105 = !DILocation(line: 56, column: 15, scope: !53)
!106 = !DILocation(line: 57, column: 9, scope: !107)
!107 = distinct !DILexicalBlock(scope: !53, file: !1, line: 57, column: 9)
!108 = !DILocation(line: 57, column: 17, scope: !107)
!109 = !DILocation(line: 57, column: 26, scope: !107)
!110 = !DILocation(line: 57, column: 9, scope: !53)
!111 = !DILocation(line: 58, column: 28, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 57, column: 35)
!113 = !DILocation(line: 58, column: 9, scope: !112)
!114 = !DILocation(line: 58, column: 17, scope: !112)
!115 = !DILocation(line: 58, column: 26, scope: !112)
!116 = !DILocation(line: 59, column: 5, scope: !112)
!117 = !DILocalVariable(name: "prev", scope: !118, file: !1, line: 60, type: !4)
!118 = distinct !DILexicalBlock(scope: !107, file: !1, line: 59, column: 12)
!119 = !DILocation(line: 60, column: 33, scope: !118)
!120 = !DILocation(line: 60, column: 40, scope: !118)
!121 = !DILocation(line: 60, column: 48, scope: !118)
!122 = !DILocation(line: 61, column: 9, scope: !118)
!123 = !DILocation(line: 61, column: 16, scope: !118)
!124 = !DILocation(line: 61, column: 22, scope: !118)
!125 = !DILocation(line: 61, column: 27, scope: !118)
!126 = !DILocation(line: 62, column: 20, scope: !118)
!127 = !DILocation(line: 62, column: 26, scope: !118)
!128 = !DILocation(line: 62, column: 18, scope: !118)
!129 = distinct !{!129, !122, !127, !130}
!130 = !{!"llvm.loop.mustprogress"}
!131 = !DILocation(line: 63, column: 22, scope: !118)
!132 = !DILocation(line: 63, column: 9, scope: !118)
!133 = !DILocation(line: 63, column: 15, scope: !118)
!134 = !DILocation(line: 63, column: 20, scope: !118)
!135 = !DILocation(line: 65, column: 12, scope: !53)
!136 = !DILocation(line: 65, column: 5, scope: !53)
!137 = !DILocation(line: 66, column: 1, scope: !53)
!138 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !139, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!139 = !DISubroutineType(types: !140)
!140 = !{!32}
!141 = !DILocalVariable(name: "ctxt", scope: !138, file: !1, line: 70, type: !28)
!142 = !DILocation(line: 70, column: 29, scope: !138)
!143 = !DILocalVariable(name: "schema", scope: !138, file: !1, line: 71, type: !57)
!144 = !DILocation(line: 71, column: 19, scope: !138)
!145 = !DILocalVariable(name: "node", scope: !138, file: !1, line: 72, type: !33)
!146 = !DILocation(line: 72, column: 16, scope: !138)
!147 = !DILocalVariable(name: "name", scope: !138, file: !1, line: 73, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 256, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 32)
!151 = !DILocation(line: 73, column: 10, scope: !138)
!152 = !DILocation(line: 76, column: 12, scope: !138)
!153 = !DILocation(line: 76, column: 21, scope: !138)
!154 = !DILocation(line: 79, column: 24, scope: !138)
!155 = !DILocation(line: 79, column: 5, scope: !138)
!156 = !DILocation(line: 80, column: 24, scope: !138)
!157 = !DILocation(line: 80, column: 5, scope: !138)
!158 = !DILocation(line: 81, column: 24, scope: !138)
!159 = !DILocation(line: 81, column: 5, scope: !138)
!160 = !DILocation(line: 84, column: 23, scope: !138)
!161 = !DILocation(line: 84, column: 17, scope: !138)
!162 = !DILocation(line: 84, column: 5, scope: !138)
!163 = !DILocation(line: 85, column: 25, scope: !138)
!164 = !DILocation(line: 85, column: 17, scope: !138)
!165 = !DILocation(line: 85, column: 5, scope: !138)
!166 = !DILocation(line: 86, column: 17, scope: !138)
!167 = !DILocation(line: 86, column: 22, scope: !138)
!168 = !DILocation(line: 86, column: 5, scope: !138)
!169 = !DILocation(line: 87, column: 17, scope: !138)
!170 = !DILocation(line: 87, column: 22, scope: !138)
!171 = !DILocation(line: 87, column: 5, scope: !138)
!172 = !DILocalVariable(name: "result", scope: !138, file: !1, line: 90, type: !4)
!173 = !DILocation(line: 90, column: 29, scope: !138)
!174 = !DILocation(line: 90, column: 81, scope: !138)
!175 = !DILocation(line: 90, column: 87, scope: !138)
!176 = !DILocation(line: 90, column: 38, scope: !138)
!177 = !DILocation(line: 98, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !138, file: !1, line: 98, column: 9)
!179 = !DILocation(line: 98, column: 16, scope: !178)
!180 = !DILocation(line: 98, column: 9, scope: !138)
!181 = !DILocation(line: 99, column: 9, scope: !182)
!182 = distinct !DILexicalBlock(scope: !178, file: !1, line: 98, column: 25)
!183 = !DILocation(line: 100, column: 9, scope: !182)
!184 = !DILocation(line: 101, column: 5, scope: !182)
!185 = !DILocation(line: 104, column: 9, scope: !186)
!186 = distinct !DILexicalBlock(scope: !138, file: !1, line: 104, column: 9)
!187 = !DILocation(line: 104, column: 16, scope: !186)
!188 = !DILocation(line: 104, column: 9, scope: !138)
!189 = !DILocation(line: 105, column: 14, scope: !190)
!190 = distinct !DILexicalBlock(scope: !186, file: !1, line: 104, column: 25)
!191 = !DILocation(line: 105, column: 9, scope: !190)
!192 = !DILocation(line: 106, column: 5, scope: !190)
!193 = !DILocation(line: 108, column: 5, scope: !138)
!194 = distinct !DISubprogram(name: "memset", scope: !195, file: !195, line: 12, type: !196, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !14, retainedNodes: !34)
!195 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!196 = !DISubroutineType(types: !197)
!197 = !{!3, !3, !32, !45}
!198 = !DILocalVariable(name: "dst", arg: 1, scope: !194, file: !195, line: 12, type: !3)
!199 = !DILocation(line: 12, column: 20, scope: !194)
!200 = !DILocalVariable(name: "s", arg: 2, scope: !194, file: !195, line: 12, type: !32)
!201 = !DILocation(line: 12, column: 29, scope: !194)
!202 = !DILocalVariable(name: "count", arg: 3, scope: !194, file: !195, line: 12, type: !45)
!203 = !DILocation(line: 12, column: 39, scope: !194)
!204 = !DILocalVariable(name: "a", scope: !194, file: !195, line: 13, type: !205)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!206 = !DILocation(line: 13, column: 9, scope: !194)
!207 = !DILocation(line: 13, column: 13, scope: !194)
!208 = !DILocation(line: 14, column: 3, scope: !194)
!209 = !DILocation(line: 14, column: 15, scope: !194)
!210 = !DILocation(line: 14, column: 18, scope: !194)
!211 = !DILocation(line: 15, column: 12, scope: !194)
!212 = !DILocation(line: 15, column: 7, scope: !194)
!213 = !DILocation(line: 15, column: 10, scope: !194)
!214 = distinct !{!214, !208, !211, !130}
!215 = !DILocation(line: 16, column: 10, scope: !194)
!216 = !DILocation(line: 16, column: 3, scope: !194)

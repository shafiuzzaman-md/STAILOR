; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/356_xpath.c_3251_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/356_xpath.c_3251_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"str\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"buffersize\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/356_xpath.c_3251_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"(size <= buffersize) && \22SAILR_VULN_ASSERT\22\00", align 1
@__PRETTY_FUNCTION__.xmlXPathStringEvalNumber = private unnamed_addr constant [57 x i8] c"void xmlXPathStringEvalNumber(const char *, char *, int)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !17, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %4, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !27
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 256, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !29
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0)), !dbg !30
  %7 = bitcast i32* %4 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)), !dbg !32
  %8 = load i32, i32* %4, align 4, !dbg !33
  %9 = icmp sgt i32 %8, 0, !dbg !34
  br i1 %9, label %10, label %13, !dbg !35

10:                                               ; preds = %0
  %11 = load i32, i32* %4, align 4, !dbg !36
  %12 = icmp sle i32 %11, 256, !dbg !37
  br label %13

13:                                               ; preds = %10, %0
  %14 = phi i1 [ false, %0 ], [ %12, %10 ], !dbg !38
  %15 = zext i1 %14 to i32, !dbg !35
  %16 = sext i32 %15 to i64, !dbg !33
  call void @klee_assume(i64 noundef %16), !dbg !39
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !40
  %18 = load i8, i8* %17, align 16, !dbg !40
  %19 = sext i8 %18 to i32, !dbg !40
  %20 = icmp ne i32 %19, 0, !dbg !41
  %21 = zext i1 %20 to i32, !dbg !41
  %22 = sext i32 %21 to i64, !dbg !40
  call void @klee_assume(i64 noundef %22), !dbg !42
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !43
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !44
  %25 = load i32, i32* %4, align 4, !dbg !45
  call void @xmlXPathStringEvalNumber(i8* noundef %23, i8* noundef %24, i32 noundef %25), !dbg !46
  %26 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 43, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathStringEvalNumber(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !49 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [256 x i8], align 16
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !DIExpression()), !dbg !56
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !57, metadata !DIExpression()), !dbg !58
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !61, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i8** %8, metadata !63, metadata !DIExpression()), !dbg !64
  %11 = load i8*, i8** %4, align 8, !dbg !65
  store i8* %11, i8** %8, align 8, !dbg !64
  call void @llvm.dbg.declare(metadata i8** %9, metadata !66, metadata !DIExpression()), !dbg !67
  %12 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !68
  store i8* %12, i8** %9, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %10, metadata !69, metadata !DIExpression()), !dbg !70
  br label %13, !dbg !71

13:                                               ; preds = %25, %3
  %14 = load i8*, i8** %8, align 8, !dbg !72
  %15 = load i8, i8* %14, align 1, !dbg !73
  %16 = sext i8 %15 to i32, !dbg !73
  %17 = icmp ne i32 %16, 0, !dbg !73
  br i1 %17, label %18, label %23, !dbg !74

18:                                               ; preds = %13
  %19 = load i8*, i8** %8, align 8, !dbg !75
  %20 = load i8, i8* %19, align 1, !dbg !76
  %21 = sext i8 %20 to i32, !dbg !76
  %22 = icmp ne i32 %21, 46, !dbg !77
  br label %23

23:                                               ; preds = %18, %13
  %24 = phi i1 [ false, %13 ], [ %22, %18 ], !dbg !78
  br i1 %24, label %25, label %28, !dbg !71

25:                                               ; preds = %23
  %26 = load i8*, i8** %8, align 8, !dbg !79
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !79
  store i8* %27, i8** %8, align 8, !dbg !79
  br label %13, !dbg !71, !llvm.loop !81

28:                                               ; preds = %23
  %29 = load i8*, i8** %8, align 8, !dbg !84
  %30 = load i8, i8* %29, align 1, !dbg !86
  %31 = sext i8 %30 to i32, !dbg !86
  %32 = icmp eq i32 %31, 46, !dbg !87
  br i1 %32, label %33, label %74, !dbg !88

33:                                               ; preds = %28
  %34 = load i8*, i8** %8, align 8, !dbg !89
  %35 = getelementptr inbounds i8, i8* %34, i32 1, !dbg !89
  store i8* %35, i8** %8, align 8, !dbg !89
  br label %36, !dbg !91

36:                                               ; preds = %44, %33
  %37 = load i8*, i8** %8, align 8, !dbg !92
  %38 = getelementptr inbounds i8, i8* %37, i32 1, !dbg !92
  store i8* %38, i8** %8, align 8, !dbg !92
  %39 = load i8, i8* %37, align 1, !dbg !93
  %40 = load i8*, i8** %9, align 8, !dbg !94
  %41 = getelementptr inbounds i8, i8* %40, i32 1, !dbg !94
  store i8* %41, i8** %9, align 8, !dbg !94
  store i8 %39, i8* %40, align 1, !dbg !95
  %42 = sext i8 %39 to i32, !dbg !96
  %43 = icmp ne i32 %42, 0, !dbg !97
  br i1 %43, label %44, label %45, !dbg !91

44:                                               ; preds = %36
  br label %36, !dbg !91, !llvm.loop !98

45:                                               ; preds = %36
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !100
  %47 = call i64 @strlen(i8* noundef %46) #7, !dbg !101
  %48 = add i64 %47, 1, !dbg !102
  %49 = trunc i64 %48 to i32, !dbg !101
  store i32 %49, i32* %10, align 4, !dbg !103
  %50 = load i32, i32* %10, align 4, !dbg !104
  %51 = load i32, i32* %6, align 4, !dbg !106
  %52 = icmp sgt i32 %50, %51, !dbg !107
  br i1 %52, label %53, label %59, !dbg !108

53:                                               ; preds = %45
  %54 = load i32, i32* %6, align 4, !dbg !109
  %55 = sub nsw i32 %54, 1, !dbg !111
  %56 = sext i32 %55 to i64, !dbg !112
  %57 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 %56, !dbg !112
  store i8 0, i8* %57, align 1, !dbg !113
  %58 = load i32, i32* %6, align 4, !dbg !114
  store i32 %58, i32* %10, align 4, !dbg !115
  br label %59, !dbg !116

59:                                               ; preds = %53, %45
  %60 = load i8*, i8** %5, align 8, !dbg !117
  %61 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !118
  %62 = load i32, i32* %10, align 4, !dbg !119
  %63 = sext i32 %62 to i64, !dbg !119
  %64 = call i8* @memmove(i8* %60, i8* %61, i64 %63), !dbg !118
  %65 = load i32, i32* %10, align 4, !dbg !120
  %66 = load i32, i32* %6, align 4, !dbg !120
  %67 = icmp sle i32 %65, %66, !dbg !120
  br i1 %67, label %68, label %70, !dbg !120

68:                                               ; preds = %59
  br i1 true, label %69, label %70, !dbg !120

69:                                               ; preds = %68
  br label %72, !dbg !120

70:                                               ; preds = %68, %59
  %71 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.xmlXPathStringEvalNumber, i64 0, i64 0)), !dbg !120
  br label %72, !dbg !120

72:                                               ; preds = %70, %69
  %73 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.4, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.xmlXPathStringEvalNumber, i64 0, i64 0)), !dbg !121
  br label %74, !dbg !122

74:                                               ; preds = %72, %28
  ret void, !dbg !123
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !124 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !134, metadata !DIExpression()), !dbg !135
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !136, metadata !DIExpression()), !dbg !137
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i8** %8, metadata !140, metadata !DIExpression()), !dbg !141
  %10 = load i8*, i8** %5, align 8, !dbg !142
  store i8* %10, i8** %8, align 8, !dbg !141
  call void @llvm.dbg.declare(metadata i8** %9, metadata !143, metadata !DIExpression()), !dbg !144
  %11 = load i8*, i8** %6, align 8, !dbg !145
  store i8* %11, i8** %9, align 8, !dbg !144
  %12 = load i8*, i8** %6, align 8, !dbg !146
  %13 = load i8*, i8** %5, align 8, !dbg !148
  %14 = icmp eq i8* %12, %13, !dbg !149
  br i1 %14, label %15, label %17, !dbg !150

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !151
  store i8* %16, i8** %4, align 8, !dbg !152
  br label %52, !dbg !152

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !153
  %19 = load i8*, i8** %5, align 8, !dbg !155
  %20 = icmp ugt i8* %18, %19, !dbg !156
  br i1 %20, label %21, label %31, !dbg !157

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !158
  %23 = add i64 %22, -1, !dbg !158
  store i64 %23, i64* %7, align 8, !dbg !158
  %24 = icmp ne i64 %22, 0, !dbg !160
  br i1 %24, label %25, label %50, !dbg !160

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !161
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !161
  store i8* %27, i8** %9, align 8, !dbg !161
  %28 = load i8, i8* %26, align 1, !dbg !162
  %29 = load i8*, i8** %8, align 8, !dbg !163
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !163
  store i8* %30, i8** %8, align 8, !dbg !163
  store i8 %28, i8* %29, align 1, !dbg !164
  br label %21, !dbg !160, !llvm.loop !165

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !166
  %33 = sub i64 %32, 1, !dbg !168
  %34 = load i8*, i8** %8, align 8, !dbg !169
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !169
  store i8* %35, i8** %8, align 8, !dbg !169
  %36 = load i64, i64* %7, align 8, !dbg !170
  %37 = sub i64 %36, 1, !dbg !171
  %38 = load i8*, i8** %9, align 8, !dbg !172
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !172
  store i8* %39, i8** %9, align 8, !dbg !172
  br label %40, !dbg !173

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !174
  %42 = add i64 %41, -1, !dbg !174
  store i64 %42, i64* %7, align 8, !dbg !174
  %43 = icmp ne i64 %41, 0, !dbg !173
  br i1 %43, label %44, label %50, !dbg !173

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !175
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !175
  store i8* %46, i8** %9, align 8, !dbg !175
  %47 = load i8, i8* %45, align 1, !dbg !176
  %48 = load i8*, i8** %8, align 8, !dbg !177
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !177
  store i8* %49, i8** %8, align 8, !dbg !177
  store i8 %47, i8* %48, align 1, !dbg !178
  br label %40, !dbg !173, !llvm.loop !179

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !180
  store i8* %51, i8** %4, align 8, !dbg !181
  br label %52, !dbg !181

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !182
  ret i8* %53, !dbg !182
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/356_xpath.c_3251_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4ca440eecd9a53a88bf52942f6c56899")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 12, type: !13, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "str", scope: !12, file: !1, line: 14, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 2048, elements: !20)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !{!21}
!21 = !DISubrange(count: 256)
!22 = !DILocation(line: 14, column: 10, scope: !12)
!23 = !DILocalVariable(name: "buffer", scope: !12, file: !1, line: 15, type: !18)
!24 = !DILocation(line: 15, column: 10, scope: !12)
!25 = !DILocalVariable(name: "buffersize", scope: !12, file: !1, line: 16, type: !15)
!26 = !DILocation(line: 16, column: 9, scope: !12)
!27 = !DILocation(line: 19, column: 24, scope: !12)
!28 = !DILocation(line: 19, column: 5, scope: !12)
!29 = !DILocation(line: 20, column: 24, scope: !12)
!30 = !DILocation(line: 20, column: 5, scope: !12)
!31 = !DILocation(line: 21, column: 24, scope: !12)
!32 = !DILocation(line: 21, column: 5, scope: !12)
!33 = !DILocation(line: 25, column: 17, scope: !12)
!34 = !DILocation(line: 25, column: 28, scope: !12)
!35 = !DILocation(line: 25, column: 32, scope: !12)
!36 = !DILocation(line: 25, column: 35, scope: !12)
!37 = !DILocation(line: 25, column: 46, scope: !12)
!38 = !DILocation(line: 0, scope: !12)
!39 = !DILocation(line: 25, column: 5, scope: !12)
!40 = !DILocation(line: 29, column: 17, scope: !12)
!41 = !DILocation(line: 29, column: 24, scope: !12)
!42 = !DILocation(line: 29, column: 5, scope: !12)
!43 = !DILocation(line: 32, column: 30, scope: !12)
!44 = !DILocation(line: 32, column: 35, scope: !12)
!45 = !DILocation(line: 32, column: 43, scope: !12)
!46 = !DILocation(line: 32, column: 5, scope: !12)
!47 = !DILocation(line: 43, column: 5, scope: !12)
!48 = !DILocation(line: 45, column: 5, scope: !12)
!49 = distinct !DISubprogram(name: "xmlXPathStringEvalNumber", scope: !1, file: !1, line: 49, type: !50, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !54, !15}
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!55 = !DILocalVariable(name: "str", arg: 1, scope: !49, file: !1, line: 49, type: !52)
!56 = !DILocation(line: 49, column: 43, scope: !49)
!57 = !DILocalVariable(name: "buffer", arg: 2, scope: !49, file: !1, line: 49, type: !54)
!58 = !DILocation(line: 49, column: 54, scope: !49)
!59 = !DILocalVariable(name: "buffersize", arg: 3, scope: !49, file: !1, line: 49, type: !15)
!60 = !DILocation(line: 49, column: 66, scope: !49)
!61 = !DILocalVariable(name: "work", scope: !49, file: !1, line: 51, type: !18)
!62 = !DILocation(line: 51, column: 10, scope: !49)
!63 = !DILocalVariable(name: "after_fraction", scope: !49, file: !1, line: 52, type: !52)
!64 = !DILocation(line: 52, column: 17, scope: !49)
!65 = !DILocation(line: 52, column: 34, scope: !49)
!66 = !DILocalVariable(name: "ptr", scope: !49, file: !1, line: 53, type: !54)
!67 = !DILocation(line: 53, column: 11, scope: !49)
!68 = !DILocation(line: 53, column: 17, scope: !49)
!69 = !DILocalVariable(name: "size", scope: !49, file: !1, line: 54, type: !15)
!70 = !DILocation(line: 54, column: 9, scope: !49)
!71 = !DILocation(line: 58, column: 5, scope: !49)
!72 = !DILocation(line: 58, column: 13, scope: !49)
!73 = !DILocation(line: 58, column: 12, scope: !49)
!74 = !DILocation(line: 58, column: 28, scope: !49)
!75 = !DILocation(line: 58, column: 32, scope: !49)
!76 = !DILocation(line: 58, column: 31, scope: !49)
!77 = !DILocation(line: 58, column: 47, scope: !49)
!78 = !DILocation(line: 0, scope: !49)
!79 = !DILocation(line: 59, column: 23, scope: !80)
!80 = distinct !DILexicalBlock(scope: !49, file: !1, line: 58, column: 55)
!81 = distinct !{!81, !71, !82, !83}
!82 = !DILocation(line: 60, column: 5, scope: !49)
!83 = !{!"llvm.loop.mustprogress"}
!84 = !DILocation(line: 62, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !49, file: !1, line: 62, column: 9)
!86 = !DILocation(line: 62, column: 9, scope: !85)
!87 = !DILocation(line: 62, column: 25, scope: !85)
!88 = !DILocation(line: 62, column: 9, scope: !49)
!89 = !DILocation(line: 63, column: 23, scope: !90)
!90 = distinct !DILexicalBlock(scope: !85, file: !1, line: 62, column: 33)
!91 = !DILocation(line: 66, column: 9, scope: !90)
!92 = !DILocation(line: 66, column: 41, scope: !90)
!93 = !DILocation(line: 66, column: 26, scope: !90)
!94 = !DILocation(line: 66, column: 21, scope: !90)
!95 = !DILocation(line: 66, column: 24, scope: !90)
!96 = !DILocation(line: 66, column: 16, scope: !90)
!97 = !DILocation(line: 66, column: 45, scope: !90)
!98 = distinct !{!98, !91, !99, !83}
!99 = !DILocation(line: 66, column: 50, scope: !90)
!100 = !DILocation(line: 69, column: 23, scope: !90)
!101 = !DILocation(line: 69, column: 16, scope: !90)
!102 = !DILocation(line: 69, column: 29, scope: !90)
!103 = !DILocation(line: 69, column: 14, scope: !90)
!104 = !DILocation(line: 70, column: 13, scope: !105)
!105 = distinct !DILexicalBlock(scope: !90, file: !1, line: 70, column: 13)
!106 = !DILocation(line: 70, column: 20, scope: !105)
!107 = !DILocation(line: 70, column: 18, scope: !105)
!108 = !DILocation(line: 70, column: 13, scope: !90)
!109 = !DILocation(line: 71, column: 18, scope: !110)
!110 = distinct !DILexicalBlock(scope: !105, file: !1, line: 70, column: 32)
!111 = !DILocation(line: 71, column: 29, scope: !110)
!112 = !DILocation(line: 71, column: 13, scope: !110)
!113 = !DILocation(line: 71, column: 34, scope: !110)
!114 = !DILocation(line: 72, column: 20, scope: !110)
!115 = !DILocation(line: 72, column: 18, scope: !110)
!116 = !DILocation(line: 73, column: 9, scope: !110)
!117 = !DILocation(line: 76, column: 17, scope: !90)
!118 = !DILocation(line: 76, column: 9, scope: !90)
!119 = !DILocation(line: 76, column: 31, scope: !90)
!120 = !DILocation(line: 81, column: 9, scope: !90)
!121 = !DILocation(line: 84, column: 9, scope: !90)
!122 = !DILocation(line: 85, column: 5, scope: !90)
!123 = !DILocation(line: 86, column: 1, scope: !49)
!124 = distinct !DISubprogram(name: "memmove", scope: !125, file: !125, line: 12, type: !126, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!125 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !128, !129, !131}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !133)
!132 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DILocalVariable(name: "dst", arg: 1, scope: !124, file: !125, line: 12, type: !128)
!135 = !DILocation(line: 12, column: 21, scope: !124)
!136 = !DILocalVariable(name: "src", arg: 2, scope: !124, file: !125, line: 12, type: !129)
!137 = !DILocation(line: 12, column: 38, scope: !124)
!138 = !DILocalVariable(name: "count", arg: 3, scope: !124, file: !125, line: 12, type: !131)
!139 = !DILocation(line: 12, column: 50, scope: !124)
!140 = !DILocalVariable(name: "a", scope: !124, file: !125, line: 13, type: !54)
!141 = !DILocation(line: 13, column: 9, scope: !124)
!142 = !DILocation(line: 13, column: 13, scope: !124)
!143 = !DILocalVariable(name: "b", scope: !124, file: !125, line: 14, type: !52)
!144 = !DILocation(line: 14, column: 15, scope: !124)
!145 = !DILocation(line: 14, column: 19, scope: !124)
!146 = !DILocation(line: 16, column: 7, scope: !147)
!147 = distinct !DILexicalBlock(scope: !124, file: !125, line: 16, column: 7)
!148 = !DILocation(line: 16, column: 14, scope: !147)
!149 = !DILocation(line: 16, column: 11, scope: !147)
!150 = !DILocation(line: 16, column: 7, scope: !124)
!151 = !DILocation(line: 17, column: 12, scope: !147)
!152 = !DILocation(line: 17, column: 5, scope: !147)
!153 = !DILocation(line: 19, column: 7, scope: !154)
!154 = distinct !DILexicalBlock(scope: !124, file: !125, line: 19, column: 7)
!155 = !DILocation(line: 19, column: 13, scope: !154)
!156 = !DILocation(line: 19, column: 11, scope: !154)
!157 = !DILocation(line: 19, column: 7, scope: !124)
!158 = !DILocation(line: 20, column: 17, scope: !159)
!159 = distinct !DILexicalBlock(scope: !154, file: !125, line: 19, column: 18)
!160 = !DILocation(line: 20, column: 5, scope: !159)
!161 = !DILocation(line: 21, column: 16, scope: !159)
!162 = !DILocation(line: 21, column: 14, scope: !159)
!163 = !DILocation(line: 21, column: 9, scope: !159)
!164 = !DILocation(line: 21, column: 12, scope: !159)
!165 = distinct !{!165, !160, !161, !83}
!166 = !DILocation(line: 23, column: 10, scope: !167)
!167 = distinct !DILexicalBlock(scope: !154, file: !125, line: 22, column: 10)
!168 = !DILocation(line: 23, column: 16, scope: !167)
!169 = !DILocation(line: 23, column: 7, scope: !167)
!170 = !DILocation(line: 24, column: 10, scope: !167)
!171 = !DILocation(line: 24, column: 16, scope: !167)
!172 = !DILocation(line: 24, column: 7, scope: !167)
!173 = !DILocation(line: 25, column: 5, scope: !167)
!174 = !DILocation(line: 25, column: 17, scope: !167)
!175 = !DILocation(line: 26, column: 16, scope: !167)
!176 = !DILocation(line: 26, column: 14, scope: !167)
!177 = !DILocation(line: 26, column: 9, scope: !167)
!178 = !DILocation(line: 26, column: 12, scope: !167)
!179 = distinct !{!179, !173, !175, !83}
!180 = !DILocation(line: 29, column: 10, scope: !124)
!181 = !DILocation(line: 29, column: 3, scope: !124)
!182 = !DILocation(line: 30, column: 1, scope: !124)

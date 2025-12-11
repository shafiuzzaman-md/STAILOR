; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/311_xmlregexp.c_447_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/311_xmlregexp.c_447_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"dim1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"dim2\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"elemSize\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"test\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"check_dim1\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"check_dim2\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"check_elemSize\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.8 = private unnamed_addr constant [78 x i8] c"(!(dim1 > (18446744073709551615UL) / dim2 / elemSize)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/311_xmlregexp.c_447_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.11 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.12 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.13 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !16 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i64, i64* %2, align 8, !dbg !25
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !26
  ret i8* %4, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !31, metadata !DIExpression()), !dbg !32
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !33, metadata !DIExpression()), !dbg !34
  %5 = load i8*, i8** %3, align 8, !dbg !35
  %6 = load i64, i64* %4, align 8, !dbg !36
  %7 = call i8* @realloc(i8* noundef %5, i64 noundef %6) #7, !dbg !37
  ret i8* %7, !dbg !38
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !39 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !42, metadata !DIExpression()), !dbg !43
  %3 = load i8*, i8** %2, align 8, !dbg !44
  call void @free(i8* noundef %3) #7, !dbg !45
  ret void, !dbg !46
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRegNewParserCtxt(i8* noundef %0) #0 !dbg !47 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i64* %3, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i64* %4, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i64* %5, metadata !59, metadata !DIExpression()), !dbg !60
  %6 = bitcast i64* %3 to i8*, !dbg !61
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !62
  %7 = bitcast i64* %4 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !64
  %8 = bitcast i64* %5 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !66
  %9 = load i64, i64* %3, align 8, !dbg !67
  %10 = icmp ule i64 %9, 1024, !dbg !68
  %11 = zext i1 %10 to i32, !dbg !68
  %12 = sext i32 %11 to i64, !dbg !67
  call void @klee_assume(i64 noundef %12), !dbg !69
  %13 = load i64, i64* %4, align 8, !dbg !70
  %14 = icmp ule i64 %13, 1024, !dbg !71
  %15 = zext i1 %14 to i32, !dbg !71
  %16 = sext i32 %15 to i64, !dbg !70
  call void @klee_assume(i64 noundef %16), !dbg !72
  %17 = load i64, i64* %5, align 8, !dbg !73
  %18 = icmp ule i64 %17, 1024, !dbg !74
  %19 = zext i1 %18 to i32, !dbg !74
  %20 = sext i32 %19 to i64, !dbg !73
  call void @klee_assume(i64 noundef %20), !dbg !75
  %21 = load i64, i64* %3, align 8, !dbg !76
  %22 = load i64, i64* %4, align 8, !dbg !77
  %23 = load i64, i64* %5, align 8, !dbg !78
  %24 = call i8* @xmlCallocLoc(i64 noundef %21, i64 noundef %22, i64 noundef %23), !dbg !79
  ret i8* %24, !dbg !80
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlCallocLoc(i64 noundef %0, i64 noundef %1, i64 noundef %2) #0 !dbg !81 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store i64 %0, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !84, metadata !DIExpression()), !dbg !85
  store i64 %1, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !86, metadata !DIExpression()), !dbg !87
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata i64* %8, metadata !90, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i8** %9, metadata !92, metadata !DIExpression()), !dbg !93
  %10 = load i64, i64* %5, align 8, !dbg !94
  %11 = icmp eq i64 %10, 0, !dbg !96
  br i1 %11, label %25, label %12, !dbg !97

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8, !dbg !98
  %14 = icmp eq i64 %13, 0, !dbg !99
  br i1 %14, label %25, label %15, !dbg !100

15:                                               ; preds = %12
  %16 = load i64, i64* %7, align 8, !dbg !101
  %17 = icmp eq i64 %16, 0, !dbg !102
  br i1 %17, label %25, label %18, !dbg !103

18:                                               ; preds = %15
  %19 = load i64, i64* %5, align 8, !dbg !104
  %20 = load i64, i64* %6, align 8, !dbg !105
  call void @klee_div_zero_check(i64 %20), !dbg !106
  %21 = udiv i64 -1, %20, !dbg !106, !klee.check.div !107
  %22 = load i64, i64* %7, align 8, !dbg !108
  call void @klee_div_zero_check(i64 %22), !dbg !109
  %23 = udiv i64 %21, %22, !dbg !109, !klee.check.div !107
  %24 = icmp ugt i64 %19, %23, !dbg !110
  br i1 %24, label %25, label %26, !dbg !111

25:                                               ; preds = %18, %15, %12, %3
  store i8* null, i8** %4, align 8, !dbg !112
  br label %42, !dbg !112

26:                                               ; preds = %18
  %27 = load i64, i64* %5, align 8, !dbg !113
  %28 = load i64, i64* %6, align 8, !dbg !114
  %29 = mul i64 %27, %28, !dbg !115
  %30 = load i64, i64* %7, align 8, !dbg !116
  %31 = mul i64 %29, %30, !dbg !117
  store i64 %31, i64* %8, align 8, !dbg !118
  %32 = load i64, i64* %8, align 8, !dbg !119
  %33 = call i8* @xmlMalloc(i64 noundef %32), !dbg !120
  store i8* %33, i8** %9, align 8, !dbg !121
  %34 = load i8*, i8** %9, align 8, !dbg !122
  %35 = icmp ne i8* %34, null, !dbg !124
  br i1 %35, label %36, label %40, !dbg !125

36:                                               ; preds = %26
  %37 = load i8*, i8** %9, align 8, !dbg !126
  %38 = load i64, i64* %8, align 8, !dbg !127
  %39 = call i8* @memset(i8* %37, i32 0, i64 %38), !dbg !128
  br label %40, !dbg !128

40:                                               ; preds = %36, %26
  %41 = load i8*, i8** %9, align 8, !dbg !129
  store i8* %41, i8** %4, align 8, !dbg !130
  br label %42, !dbg !130

42:                                               ; preds = %40, %25
  %43 = load i8*, i8** %4, align 8, !dbg !131
  ret i8* %43, !dbg !131
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !132 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i8** %2, metadata !136, metadata !DIExpression()), !dbg !137
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i8** %3, metadata !138, metadata !DIExpression()), !dbg !139
  %7 = load i8*, i8** %2, align 8, !dbg !140
  %8 = call i8* @xmlRegNewParserCtxt(i8* noundef %7), !dbg !141
  store i8* %8, i8** %3, align 8, !dbg !142
  %9 = load i8*, i8** %3, align 8, !dbg !143
  %10 = icmp ne i8* %9, null, !dbg !145
  br i1 %10, label %11, label %40, !dbg !146

11:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i64* %4, metadata !147, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata i64* %5, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i64* %6, metadata !152, metadata !DIExpression()), !dbg !153
  %12 = bitcast i64* %4 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !155
  %13 = bitcast i64* %5 to i8*, !dbg !156
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.5, i64 0, i64 0)), !dbg !157
  %14 = bitcast i64* %6 to i8*, !dbg !158
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 8, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0)), !dbg !159
  %15 = load i64, i64* %4, align 8, !dbg !160
  %16 = icmp ugt i64 %15, 0, !dbg !161
  br i1 %16, label %17, label %23, !dbg !162

17:                                               ; preds = %11
  %18 = load i64, i64* %5, align 8, !dbg !163
  %19 = icmp ugt i64 %18, 0, !dbg !164
  br i1 %19, label %20, label %23, !dbg !165

20:                                               ; preds = %17
  %21 = load i64, i64* %6, align 8, !dbg !166
  %22 = icmp ugt i64 %21, 0, !dbg !167
  br label %23

23:                                               ; preds = %20, %17, %11
  %24 = phi i1 [ false, %17 ], [ false, %11 ], [ %22, %20 ], !dbg !168
  %25 = zext i1 %24 to i32, !dbg !165
  %26 = sext i32 %25 to i64, !dbg !160
  call void @klee_assume(i64 noundef %26), !dbg !169
  %27 = load i64, i64* %4, align 8, !dbg !170
  %28 = load i64, i64* %5, align 8, !dbg !170
  call void @klee_div_zero_check(i64 %28), !dbg !170
  %29 = udiv i64 -1, %28, !dbg !170, !klee.check.div !107
  %30 = load i64, i64* %6, align 8, !dbg !170
  call void @klee_div_zero_check(i64 %30), !dbg !170
  %31 = udiv i64 %29, %30, !dbg !170, !klee.check.div !107
  %32 = icmp ugt i64 %27, %31, !dbg !170
  br i1 %32, label %35, label %33, !dbg !170

33:                                               ; preds = %23
  br i1 true, label %34, label %35, !dbg !170

34:                                               ; preds = %33
  br label %37, !dbg !170

35:                                               ; preds = %33, %23
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.9, i64 0, i64 0), i32 noundef 119, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !170
  br label %37, !dbg !170

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.9, i64 0, i64 0), i32 noundef 122, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !171
  %39 = load i8*, i8** %3, align 8, !dbg !172
  call void @xmlFree(i8* noundef %39), !dbg !173
  br label %40, !dbg !174

40:                                               ; preds = %37, %0
  ret i32 0, !dbg !175
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !176 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !180, metadata !DIExpression()), !dbg !181
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !182, metadata !DIExpression()), !dbg !183
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !184, metadata !DIExpression()), !dbg !185
  call void @llvm.dbg.declare(metadata i8** %7, metadata !186, metadata !DIExpression()), !dbg !188
  %8 = load i8*, i8** %4, align 8, !dbg !189
  store i8* %8, i8** %7, align 8, !dbg !188
  br label %9, !dbg !190

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !191
  %11 = add i64 %10, -1, !dbg !191
  store i64 %11, i64* %6, align 8, !dbg !191
  %12 = icmp ugt i64 %10, 0, !dbg !192
  br i1 %12, label %13, label %18, !dbg !190

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !193
  %15 = trunc i32 %14 to i8, !dbg !193
  %16 = load i8*, i8** %7, align 8, !dbg !194
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !194
  store i8* %17, i8** %7, align 8, !dbg !194
  store i8 %15, i8* %16, align 1, !dbg !195
  br label %9, !dbg !190, !llvm.loop !196

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !198
  ret i8* %19, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #6 !dbg !200 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !205, metadata !DIExpression()), !dbg !206
  %3 = load i64, i64* %2, align 8, !dbg !207
  %4 = icmp eq i64 %3, 0, !dbg !209
  br i1 %4, label %5, label %6, !dbg !210

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.11, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.12, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.13, i64 0, i64 0)) #8, !dbg !211
  unreachable, !dbg !211

6:                                                ; preds = %1
  ret void, !dbg !212
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/311_xmlregexp.c_447_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2c298f22f9f61bedeb434796cf161d73")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!6 = distinct !DICompileUnit(language: DW_LANG_C89, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 17, type: !17, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{!3, !19}
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !20, line: 46, baseType: !21)
!20 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!21 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!22 = !{}
!23 = !DILocalVariable(name: "size", arg: 1, scope: !16, file: !1, line: 17, type: !19)
!24 = !DILocation(line: 17, column: 24, scope: !16)
!25 = !DILocation(line: 18, column: 19, scope: !16)
!26 = !DILocation(line: 18, column: 12, scope: !16)
!27 = !DILocation(line: 18, column: 5, scope: !16)
!28 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 22, type: !29, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !3, !19}
!31 = !DILocalVariable(name: "ptr", arg: 1, scope: !28, file: !1, line: 22, type: !3)
!32 = !DILocation(line: 22, column: 24, scope: !28)
!33 = !DILocalVariable(name: "size", arg: 2, scope: !28, file: !1, line: 22, type: !19)
!34 = !DILocation(line: 22, column: 36, scope: !28)
!35 = !DILocation(line: 23, column: 20, scope: !28)
!36 = !DILocation(line: 23, column: 25, scope: !28)
!37 = !DILocation(line: 23, column: 12, scope: !28)
!38 = !DILocation(line: 23, column: 5, scope: !28)
!39 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 27, type: !40, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !3}
!42 = !DILocalVariable(name: "ptr", arg: 1, scope: !39, file: !1, line: 27, type: !3)
!43 = !DILocation(line: 27, column: 20, scope: !39)
!44 = !DILocation(line: 28, column: 10, scope: !39)
!45 = !DILocation(line: 28, column: 5, scope: !39)
!46 = !DILocation(line: 29, column: 1, scope: !39)
!47 = distinct !DISubprogram(name: "xmlRegNewParserCtxt", scope: !1, file: !1, line: 66, type: !48, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!48 = !DISubroutineType(types: !49)
!49 = !{!3, !50}
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!53 = !DILocalVariable(name: "string", arg: 1, scope: !47, file: !1, line: 66, type: !50)
!54 = !DILocation(line: 66, column: 39, scope: !47)
!55 = !DILocalVariable(name: "dim1", scope: !47, file: !1, line: 69, type: !19)
!56 = !DILocation(line: 69, column: 12, scope: !47)
!57 = !DILocalVariable(name: "dim2", scope: !47, file: !1, line: 69, type: !19)
!58 = !DILocation(line: 69, column: 18, scope: !47)
!59 = !DILocalVariable(name: "elemSize", scope: !47, file: !1, line: 69, type: !19)
!60 = !DILocation(line: 69, column: 24, scope: !47)
!61 = !DILocation(line: 72, column: 24, scope: !47)
!62 = !DILocation(line: 72, column: 5, scope: !47)
!63 = !DILocation(line: 73, column: 24, scope: !47)
!64 = !DILocation(line: 73, column: 5, scope: !47)
!65 = !DILocation(line: 74, column: 24, scope: !47)
!66 = !DILocation(line: 74, column: 5, scope: !47)
!67 = !DILocation(line: 77, column: 17, scope: !47)
!68 = !DILocation(line: 77, column: 22, scope: !47)
!69 = !DILocation(line: 77, column: 5, scope: !47)
!70 = !DILocation(line: 78, column: 17, scope: !47)
!71 = !DILocation(line: 78, column: 22, scope: !47)
!72 = !DILocation(line: 78, column: 5, scope: !47)
!73 = !DILocation(line: 79, column: 17, scope: !47)
!74 = !DILocation(line: 79, column: 26, scope: !47)
!75 = !DILocation(line: 79, column: 5, scope: !47)
!76 = !DILocation(line: 82, column: 25, scope: !47)
!77 = !DILocation(line: 82, column: 31, scope: !47)
!78 = !DILocation(line: 82, column: 37, scope: !47)
!79 = !DILocation(line: 82, column: 12, scope: !47)
!80 = !DILocation(line: 82, column: 5, scope: !47)
!81 = distinct !DISubprogram(name: "xmlCallocLoc", scope: !1, file: !1, line: 49, type: !82, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !22)
!82 = !DISubroutineType(types: !83)
!83 = !{!3, !19, !19, !19}
!84 = !DILocalVariable(name: "dim1", arg: 1, scope: !81, file: !1, line: 49, type: !19)
!85 = !DILocation(line: 49, column: 34, scope: !81)
!86 = !DILocalVariable(name: "dim2", arg: 2, scope: !81, file: !1, line: 49, type: !19)
!87 = !DILocation(line: 49, column: 47, scope: !81)
!88 = !DILocalVariable(name: "elemSize", arg: 3, scope: !81, file: !1, line: 49, type: !19)
!89 = !DILocation(line: 49, column: 60, scope: !81)
!90 = !DILocalVariable(name: "totalSize", scope: !81, file: !1, line: 50, type: !19)
!91 = !DILocation(line: 50, column: 12, scope: !81)
!92 = !DILocalVariable(name: "ret", scope: !81, file: !1, line: 51, type: !3)
!93 = !DILocation(line: 51, column: 11, scope: !81)
!94 = !DILocation(line: 54, column: 10, scope: !95)
!95 = distinct !DILexicalBlock(scope: !81, file: !1, line: 54, column: 9)
!96 = !DILocation(line: 54, column: 15, scope: !95)
!97 = !DILocation(line: 54, column: 21, scope: !95)
!98 = !DILocation(line: 54, column: 25, scope: !95)
!99 = !DILocation(line: 54, column: 30, scope: !95)
!100 = !DILocation(line: 54, column: 36, scope: !95)
!101 = !DILocation(line: 54, column: 40, scope: !95)
!102 = !DILocation(line: 54, column: 49, scope: !95)
!103 = !DILocation(line: 54, column: 55, scope: !95)
!104 = !DILocation(line: 55, column: 10, scope: !95)
!105 = !DILocation(line: 55, column: 28, scope: !95)
!106 = !DILocation(line: 55, column: 26, scope: !95)
!107 = !{!"True"}
!108 = !DILocation(line: 55, column: 35, scope: !95)
!109 = !DILocation(line: 55, column: 33, scope: !95)
!110 = !DILocation(line: 55, column: 15, scope: !95)
!111 = !DILocation(line: 54, column: 9, scope: !81)
!112 = !DILocation(line: 56, column: 9, scope: !95)
!113 = !DILocation(line: 58, column: 17, scope: !81)
!114 = !DILocation(line: 58, column: 24, scope: !81)
!115 = !DILocation(line: 58, column: 22, scope: !81)
!116 = !DILocation(line: 58, column: 31, scope: !81)
!117 = !DILocation(line: 58, column: 29, scope: !81)
!118 = !DILocation(line: 58, column: 15, scope: !81)
!119 = !DILocation(line: 59, column: 21, scope: !81)
!120 = !DILocation(line: 59, column: 11, scope: !81)
!121 = !DILocation(line: 59, column: 9, scope: !81)
!122 = !DILocation(line: 60, column: 9, scope: !123)
!123 = distinct !DILexicalBlock(scope: !81, file: !1, line: 60, column: 9)
!124 = !DILocation(line: 60, column: 13, scope: !123)
!125 = !DILocation(line: 60, column: 9, scope: !81)
!126 = !DILocation(line: 61, column: 16, scope: !123)
!127 = !DILocation(line: 61, column: 24, scope: !123)
!128 = !DILocation(line: 61, column: 9, scope: !123)
!129 = !DILocation(line: 62, column: 12, scope: !81)
!130 = !DILocation(line: 62, column: 5, scope: !81)
!131 = !DILocation(line: 63, column: 1, scope: !81)
!132 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 85, type: !133, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!133 = !DISubroutineType(types: !134)
!134 = !{!135}
!135 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!136 = !DILocalVariable(name: "dummy_string", scope: !132, file: !1, line: 86, type: !50)
!137 = !DILocation(line: 86, column: 17, scope: !132)
!138 = !DILocalVariable(name: "result", scope: !132, file: !1, line: 87, type: !3)
!139 = !DILocation(line: 87, column: 11, scope: !132)
!140 = !DILocation(line: 90, column: 34, scope: !132)
!141 = !DILocation(line: 90, column: 14, scope: !132)
!142 = !DILocation(line: 90, column: 12, scope: !132)
!143 = !DILocation(line: 93, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !132, file: !1, line: 93, column: 9)
!145 = !DILocation(line: 93, column: 16, scope: !144)
!146 = !DILocation(line: 93, column: 9, scope: !132)
!147 = !DILocalVariable(name: "dim1", scope: !148, file: !1, line: 104, type: !19)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 93, column: 25)
!149 = !DILocation(line: 104, column: 16, scope: !148)
!150 = !DILocalVariable(name: "dim2", scope: !148, file: !1, line: 104, type: !19)
!151 = !DILocation(line: 104, column: 22, scope: !148)
!152 = !DILocalVariable(name: "elemSize", scope: !148, file: !1, line: 104, type: !19)
!153 = !DILocation(line: 104, column: 28, scope: !148)
!154 = !DILocation(line: 108, column: 28, scope: !148)
!155 = !DILocation(line: 108, column: 9, scope: !148)
!156 = !DILocation(line: 109, column: 28, scope: !148)
!157 = !DILocation(line: 109, column: 9, scope: !148)
!158 = !DILocation(line: 110, column: 28, scope: !148)
!159 = !DILocation(line: 110, column: 9, scope: !148)
!160 = !DILocation(line: 113, column: 21, scope: !148)
!161 = !DILocation(line: 113, column: 26, scope: !148)
!162 = !DILocation(line: 113, column: 30, scope: !148)
!163 = !DILocation(line: 113, column: 33, scope: !148)
!164 = !DILocation(line: 113, column: 38, scope: !148)
!165 = !DILocation(line: 113, column: 42, scope: !148)
!166 = !DILocation(line: 113, column: 45, scope: !148)
!167 = !DILocation(line: 113, column: 54, scope: !148)
!168 = !DILocation(line: 0, scope: !148)
!169 = !DILocation(line: 113, column: 9, scope: !148)
!170 = !DILocation(line: 119, column: 9, scope: !148)
!171 = !DILocation(line: 122, column: 9, scope: !148)
!172 = !DILocation(line: 125, column: 17, scope: !148)
!173 = !DILocation(line: 125, column: 9, scope: !148)
!174 = !DILocation(line: 126, column: 5, scope: !148)
!175 = !DILocation(line: 128, column: 5, scope: !132)
!176 = distinct !DISubprogram(name: "memset", scope: !177, file: !177, line: 12, type: !178, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !22)
!177 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!178 = !DISubroutineType(types: !179)
!179 = !{!3, !3, !135, !19}
!180 = !DILocalVariable(name: "dst", arg: 1, scope: !176, file: !177, line: 12, type: !3)
!181 = !DILocation(line: 12, column: 20, scope: !176)
!182 = !DILocalVariable(name: "s", arg: 2, scope: !176, file: !177, line: 12, type: !135)
!183 = !DILocation(line: 12, column: 29, scope: !176)
!184 = !DILocalVariable(name: "count", arg: 3, scope: !176, file: !177, line: 12, type: !19)
!185 = !DILocation(line: 12, column: 39, scope: !176)
!186 = !DILocalVariable(name: "a", scope: !176, file: !177, line: 13, type: !187)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!188 = !DILocation(line: 13, column: 9, scope: !176)
!189 = !DILocation(line: 13, column: 13, scope: !176)
!190 = !DILocation(line: 14, column: 3, scope: !176)
!191 = !DILocation(line: 14, column: 15, scope: !176)
!192 = !DILocation(line: 14, column: 18, scope: !176)
!193 = !DILocation(line: 15, column: 12, scope: !176)
!194 = !DILocation(line: 15, column: 7, scope: !176)
!195 = !DILocation(line: 15, column: 10, scope: !176)
!196 = distinct !{!196, !190, !193, !197}
!197 = !{!"llvm.loop.mustprogress"}
!198 = !DILocation(line: 16, column: 10, scope: !176)
!199 = !DILocation(line: 16, column: 3, scope: !176)
!200 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !201, file: !201, line: 12, type: !202, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !22)
!201 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!202 = !DISubroutineType(types: !203)
!203 = !{null, !204}
!204 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!205 = !DILocalVariable(name: "z", arg: 1, scope: !200, file: !201, line: 12, type: !204)
!206 = !DILocation(line: 12, column: 36, scope: !200)
!207 = !DILocation(line: 13, column: 7, scope: !208)
!208 = distinct !DILexicalBlock(scope: !200, file: !201, line: 13, column: 7)
!209 = !DILocation(line: 13, column: 9, scope: !208)
!210 = !DILocation(line: 13, column: 7, scope: !200)
!211 = !DILocation(line: 14, column: 5, scope: !208)
!212 = !DILocation(line: 15, column: 1, scope: !200)

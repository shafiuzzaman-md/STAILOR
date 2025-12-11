; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSaveCtxt = type { [81 x i8], i32, i32 }

@xmlTreeIndentString = external global [0 x i8], align 1
@.str = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [67 x i8] c"(ctxt->indent_nr * ctxt->indent_size <= 80) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNodeDumpOutputInternal(%struct._xmlSaveCtxt* noundef %0, i32 noundef %1) #0 !dbg !29 {
  %3 = alloca %struct._xmlSaveCtxt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %5, metadata !37, metadata !DIExpression()), !dbg !38
  %6 = load i32, i32* %4, align 4, !dbg !39
  %7 = icmp sle i32 %6, 0, !dbg !41
  br i1 %7, label %8, label %13, !dbg !42

8:                                                ; preds = %2
  %9 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !43
  %10 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %9, i32 0, i32 0, !dbg !45
  %11 = getelementptr inbounds [81 x i8], [81 x i8]* %10, i64 0, i64 0, !dbg !43
  %12 = call i8* @memset(i8* %11, i32 0, i64 81), !dbg !46
  br label %59, !dbg !47

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4, !dbg !48
  %15 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !50
  %16 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %15, i32 0, i32 1, !dbg !51
  store i32 %14, i32* %16, align 4, !dbg !52
  %17 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !53
  %18 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %17, i32 0, i32 1, !dbg !54
  %19 = load i32, i32* %18, align 4, !dbg !54
  %int_cast_to_i64 = zext i32 %19 to i64, !dbg !55
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !55
  %20 = sdiv i32 80, %19, !dbg !55, !klee.check.div !56
  %21 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !57
  %22 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %21, i32 0, i32 2, !dbg !58
  store i32 %20, i32* %22, align 4, !dbg !59
  store i32 0, i32* %5, align 4, !dbg !60
  br label %23, !dbg !62

23:                                               ; preds = %44, %13
  %24 = load i32, i32* %5, align 4, !dbg !63
  %25 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !65
  %26 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %25, i32 0, i32 2, !dbg !66
  %27 = load i32, i32* %26, align 4, !dbg !66
  %28 = icmp slt i32 %24, %27, !dbg !67
  br i1 %28, label %29, label %47, !dbg !68

29:                                               ; preds = %23
  %30 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !69
  %31 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %30, i32 0, i32 0, !dbg !71
  %32 = load i32, i32* %5, align 4, !dbg !72
  %33 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !73
  %34 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %33, i32 0, i32 1, !dbg !74
  %35 = load i32, i32* %34, align 4, !dbg !74
  %36 = mul nsw i32 %32, %35, !dbg !75
  %37 = sext i32 %36 to i64, !dbg !69
  %38 = getelementptr inbounds [81 x i8], [81 x i8]* %31, i64 0, i64 %37, !dbg !69
  %39 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !76
  %40 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %39, i32 0, i32 1, !dbg !77
  %41 = load i32, i32* %40, align 4, !dbg !77
  %42 = sext i32 %41 to i64, !dbg !76
  %43 = call i8* @memcpy(i8* %38, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @xmlTreeIndentString, i64 0, i64 0), i64 %42), !dbg !78
  br label %44, !dbg !79

44:                                               ; preds = %29
  %45 = load i32, i32* %5, align 4, !dbg !80
  %46 = add nsw i32 %45, 1, !dbg !80
  store i32 %46, i32* %5, align 4, !dbg !80
  br label %23, !dbg !81, !llvm.loop !82

47:                                               ; preds = %23
  %48 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !85
  %49 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %48, i32 0, i32 0, !dbg !86
  %50 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !87
  %51 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %50, i32 0, i32 2, !dbg !88
  %52 = load i32, i32* %51, align 4, !dbg !88
  %53 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %3, align 8, !dbg !89
  %54 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %53, i32 0, i32 1, !dbg !90
  %55 = load i32, i32* %54, align 4, !dbg !90
  %56 = mul nsw i32 %52, %55, !dbg !91
  %57 = sext i32 %56 to i64, !dbg !85
  %58 = getelementptr inbounds [81 x i8], [81 x i8]* %49, i64 0, i64 %57, !dbg !85
  store i8 0, i8* %58, align 1, !dbg !92
  br label %59

59:                                               ; preds = %47, %8
  ret void, !dbg !93
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !94 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !97, metadata !DIExpression()), !dbg !98
  %4 = call noalias i8* @malloc(i64 noundef 92) #8, !dbg !99
  %5 = bitcast i8* %4 to %struct._xmlSaveCtxt*, !dbg !100
  store %struct._xmlSaveCtxt* %5, %struct._xmlSaveCtxt** %2, align 8, !dbg !98
  %6 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !101
  %7 = icmp ne %struct._xmlSaveCtxt* %6, null, !dbg !101
  br i1 %7, label %9, label %8, !dbg !103

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !104
  br label %37, !dbg !104

9:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %3, metadata !105, metadata !DIExpression()), !dbg !106
  %10 = bitcast i32* %3 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !108
  %11 = load i32, i32* %3, align 4, !dbg !109
  %12 = icmp sgt i32 %11, 0, !dbg !110
  %13 = zext i1 %12 to i32, !dbg !110
  %14 = sext i32 %13 to i64, !dbg !109
  call void @klee_assume(i64 noundef %14), !dbg !111
  %15 = load i32, i32* %3, align 4, !dbg !112
  %16 = icmp sle i32 %15, 80, !dbg !113
  %17 = zext i1 %16 to i32, !dbg !113
  %18 = sext i32 %17 to i64, !dbg !112
  call void @klee_assume(i64 noundef %18), !dbg !114
  %19 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !115
  %20 = load i32, i32* %3, align 4, !dbg !116
  call void @xmlNodeDumpOutputInternal(%struct._xmlSaveCtxt* noundef %19, i32 noundef %20), !dbg !117
  %21 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !118
  %22 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %21, i32 0, i32 2, !dbg !118
  %23 = load i32, i32* %22, align 4, !dbg !118
  %24 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !118
  %25 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %24, i32 0, i32 1, !dbg !118
  %26 = load i32, i32* %25, align 4, !dbg !118
  %27 = mul nsw i32 %23, %26, !dbg !118
  %28 = icmp sle i32 %27, 80, !dbg !118
  br i1 %28, label %29, label %31, !dbg !118

29:                                               ; preds = %9
  br i1 true, label %30, label %31, !dbg !118

30:                                               ; preds = %29
  br label %33, !dbg !118

31:                                               ; preds = %29, %9
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !118
  br label %33, !dbg !118

33:                                               ; preds = %31, %30
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.3, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !119
  %35 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !120
  %36 = bitcast %struct._xmlSaveCtxt* %35 to i8*, !dbg !120
  call void @free(i8* noundef %36) #8, !dbg !121
  store i32 0, i32* %1, align 4, !dbg !122
  br label %37, !dbg !122

37:                                               ; preds = %33, %8
  %38 = load i32, i32* %1, align 4, !dbg !123
  ret i32 %38, !dbg !123
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !124 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !134, metadata !DIExpression()), !dbg !135
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !136, metadata !DIExpression()), !dbg !137
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i8** %7, metadata !140, metadata !DIExpression()), !dbg !142
  %9 = load i8*, i8** %4, align 8, !dbg !143
  store i8* %9, i8** %7, align 8, !dbg !142
  call void @llvm.dbg.declare(metadata i8** %8, metadata !144, metadata !DIExpression()), !dbg !147
  %10 = load i8*, i8** %5, align 8, !dbg !148
  store i8* %10, i8** %8, align 8, !dbg !147
  br label %11, !dbg !149

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !150
  %13 = add i64 %12, -1, !dbg !150
  store i64 %13, i64* %6, align 8, !dbg !150
  %14 = icmp ugt i64 %12, 0, !dbg !151
  br i1 %14, label %15, label %21, !dbg !149

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !152
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !152
  store i8* %17, i8** %8, align 8, !dbg !152
  %18 = load i8, i8* %16, align 1, !dbg !153
  %19 = load i8*, i8** %7, align 8, !dbg !154
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !154
  store i8* %20, i8** %7, align 8, !dbg !154
  store i8 %18, i8* %19, align 1, !dbg !155
  br label %11, !dbg !149, !llvm.loop !156

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !157
  ret i8* %22, !dbg !158
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !159 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !165, metadata !DIExpression()), !dbg !166
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !167, metadata !DIExpression()), !dbg !168
  call void @llvm.dbg.declare(metadata i8** %7, metadata !169, metadata !DIExpression()), !dbg !170
  %8 = load i8*, i8** %4, align 8, !dbg !171
  store i8* %8, i8** %7, align 8, !dbg !170
  br label %9, !dbg !172

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !173
  %11 = add i64 %10, -1, !dbg !173
  store i64 %11, i64* %6, align 8, !dbg !173
  %12 = icmp ugt i64 %10, 0, !dbg !174
  br i1 %12, label %13, label %18, !dbg !172

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !175
  %15 = trunc i32 %14 to i8, !dbg !175
  %16 = load i8*, i8** %7, align 8, !dbg !176
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !176
  store i8* %17, i8** %7, align 8, !dbg !176
  store i8 %15, i8* %16, align 1, !dbg !177
  br label %9, !dbg !172, !llvm.loop !178

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !179
  ret i8* %19, !dbg !180
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #7 !dbg !181 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !186, metadata !DIExpression()), !dbg !187
  %3 = load i64, i64* %2, align 8, !dbg !188
  %4 = icmp eq i64 %3, 0, !dbg !190
  br i1 %4, label %5, label %6, !dbg !191

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #9, !dbg !192
  unreachable, !dbg !192

6:                                                ; preds = %1
  ret void, !dbg !193
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27}
!llvm.ident = !{!28, !28, !28, !28}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/231_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "72fb584d116038fe10a5da50fc22dbc7")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 15, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 11, size: 736, elements: !6)
!6 = !{!7, !12, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !5, file: !1, line: 12, baseType: !8, size: 648)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 648, elements: !10)
!9 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!10 = !{!11}
!11 = !DISubrange(count: 81)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "indent_size", scope: !5, file: !1, line: 13, baseType: !13, size: 32, offset: 672)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "indent_nr", scope: !5, file: !1, line: 14, baseType: !13, size: 32, offset: 704)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = distinct !DICompileUnit(language: DW_LANG_C89, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!21 = !{i32 7, !"Dwarf Version", i32 5}
!22 = !{i32 2, !"Debug Info Version", i32 3}
!23 = !{i32 1, !"wchar_size", i32 4}
!24 = !{i32 7, !"PIC Level", i32 2}
!25 = !{i32 7, !"PIE Level", i32 2}
!26 = !{i32 7, !"uwtable", i32 1}
!27 = !{i32 7, !"frame-pointer", i32 2}
!28 = !{!"Ubuntu clang version 14.0.6"}
!29 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 19, type: !30, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !3, !13}
!32 = !{}
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !29, file: !1, line: 19, type: !3)
!34 = !DILocation(line: 19, column: 45, scope: !29)
!35 = !DILocalVariable(name: "len", arg: 2, scope: !29, file: !1, line: 19, type: !13)
!36 = !DILocation(line: 19, column: 55, scope: !29)
!37 = !DILocalVariable(name: "i", scope: !29, file: !1, line: 20, type: !13)
!38 = !DILocation(line: 20, column: 9, scope: !29)
!39 = !DILocation(line: 22, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !29, file: !1, line: 22, column: 9)
!41 = !DILocation(line: 22, column: 13, scope: !40)
!42 = !DILocation(line: 22, column: 9, scope: !29)
!43 = !DILocation(line: 23, column: 17, scope: !44)
!44 = distinct !DILexicalBlock(scope: !40, file: !1, line: 22, column: 19)
!45 = !DILocation(line: 23, column: 23, scope: !44)
!46 = !DILocation(line: 23, column: 9, scope: !44)
!47 = !DILocation(line: 24, column: 5, scope: !44)
!48 = !DILocation(line: 25, column: 29, scope: !49)
!49 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 12)
!50 = !DILocation(line: 25, column: 9, scope: !49)
!51 = !DILocation(line: 25, column: 15, scope: !49)
!52 = !DILocation(line: 25, column: 27, scope: !49)
!53 = !DILocation(line: 26, column: 40, scope: !49)
!54 = !DILocation(line: 26, column: 46, scope: !49)
!55 = !DILocation(line: 26, column: 38, scope: !49)
!56 = !{!"True"}
!57 = !DILocation(line: 26, column: 9, scope: !49)
!58 = !DILocation(line: 26, column: 15, scope: !49)
!59 = !DILocation(line: 26, column: 25, scope: !49)
!60 = !DILocation(line: 27, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !49, file: !1, line: 27, column: 9)
!62 = !DILocation(line: 27, column: 14, scope: !61)
!63 = !DILocation(line: 27, column: 21, scope: !64)
!64 = distinct !DILexicalBlock(scope: !61, file: !1, line: 27, column: 9)
!65 = !DILocation(line: 27, column: 25, scope: !64)
!66 = !DILocation(line: 27, column: 31, scope: !64)
!67 = !DILocation(line: 27, column: 23, scope: !64)
!68 = !DILocation(line: 27, column: 9, scope: !61)
!69 = !DILocation(line: 28, column: 21, scope: !70)
!70 = distinct !DILexicalBlock(scope: !64, file: !1, line: 27, column: 47)
!71 = !DILocation(line: 28, column: 27, scope: !70)
!72 = !DILocation(line: 28, column: 34, scope: !70)
!73 = !DILocation(line: 28, column: 38, scope: !70)
!74 = !DILocation(line: 28, column: 44, scope: !70)
!75 = !DILocation(line: 28, column: 36, scope: !70)
!76 = !DILocation(line: 29, column: 20, scope: !70)
!77 = !DILocation(line: 29, column: 26, scope: !70)
!78 = !DILocation(line: 28, column: 13, scope: !70)
!79 = !DILocation(line: 30, column: 9, scope: !70)
!80 = !DILocation(line: 27, column: 43, scope: !64)
!81 = !DILocation(line: 27, column: 9, scope: !64)
!82 = distinct !{!82, !68, !83, !84}
!83 = !DILocation(line: 30, column: 9, scope: !61)
!84 = !{!"llvm.loop.mustprogress"}
!85 = !DILocation(line: 31, column: 9, scope: !49)
!86 = !DILocation(line: 31, column: 15, scope: !49)
!87 = !DILocation(line: 31, column: 22, scope: !49)
!88 = !DILocation(line: 31, column: 28, scope: !49)
!89 = !DILocation(line: 31, column: 40, scope: !49)
!90 = !DILocation(line: 31, column: 46, scope: !49)
!91 = !DILocation(line: 31, column: 38, scope: !49)
!92 = !DILocation(line: 31, column: 59, scope: !49)
!93 = !DILocation(line: 33, column: 1, scope: !29)
!94 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !95, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!95 = !DISubroutineType(types: !96)
!96 = !{!13}
!97 = !DILocalVariable(name: "ctxt", scope: !94, file: !1, line: 36, type: !3)
!98 = !DILocation(line: 36, column: 18, scope: !94)
!99 = !DILocation(line: 36, column: 39, scope: !94)
!100 = !DILocation(line: 36, column: 25, scope: !94)
!101 = !DILocation(line: 37, column: 10, scope: !102)
!102 = distinct !DILexicalBlock(scope: !94, file: !1, line: 37, column: 9)
!103 = !DILocation(line: 37, column: 9, scope: !94)
!104 = !DILocation(line: 37, column: 16, scope: !102)
!105 = !DILocalVariable(name: "len", scope: !94, file: !1, line: 39, type: !13)
!106 = !DILocation(line: 39, column: 9, scope: !94)
!107 = !DILocation(line: 40, column: 24, scope: !94)
!108 = !DILocation(line: 40, column: 5, scope: !94)
!109 = !DILocation(line: 42, column: 17, scope: !94)
!110 = !DILocation(line: 42, column: 21, scope: !94)
!111 = !DILocation(line: 42, column: 5, scope: !94)
!112 = !DILocation(line: 43, column: 17, scope: !94)
!113 = !DILocation(line: 43, column: 21, scope: !94)
!114 = !DILocation(line: 43, column: 5, scope: !94)
!115 = !DILocation(line: 45, column: 31, scope: !94)
!116 = !DILocation(line: 45, column: 37, scope: !94)
!117 = !DILocation(line: 45, column: 5, scope: !94)
!118 = !DILocation(line: 47, column: 5, scope: !94)
!119 = !DILocation(line: 48, column: 5, scope: !94)
!120 = !DILocation(line: 50, column: 10, scope: !94)
!121 = !DILocation(line: 50, column: 5, scope: !94)
!122 = !DILocation(line: 51, column: 5, scope: !94)
!123 = !DILocation(line: 52, column: 1, scope: !94)
!124 = distinct !DISubprogram(name: "memcpy", scope: !125, file: !125, line: 12, type: !126, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !32)
!125 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!126 = !DISubroutineType(types: !127)
!127 = !{!128, !128, !129, !131}
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !132, line: 46, baseType: !133)
!132 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!133 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!134 = !DILocalVariable(name: "destaddr", arg: 1, scope: !124, file: !125, line: 12, type: !128)
!135 = !DILocation(line: 12, column: 20, scope: !124)
!136 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !124, file: !125, line: 12, type: !129)
!137 = !DILocation(line: 12, column: 42, scope: !124)
!138 = !DILocalVariable(name: "len", arg: 3, scope: !124, file: !125, line: 12, type: !131)
!139 = !DILocation(line: 12, column: 58, scope: !124)
!140 = !DILocalVariable(name: "dest", scope: !124, file: !125, line: 13, type: !141)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!142 = !DILocation(line: 13, column: 9, scope: !124)
!143 = !DILocation(line: 13, column: 16, scope: !124)
!144 = !DILocalVariable(name: "src", scope: !124, file: !125, line: 14, type: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!147 = !DILocation(line: 14, column: 15, scope: !124)
!148 = !DILocation(line: 14, column: 21, scope: !124)
!149 = !DILocation(line: 16, column: 3, scope: !124)
!150 = !DILocation(line: 16, column: 13, scope: !124)
!151 = !DILocation(line: 16, column: 16, scope: !124)
!152 = !DILocation(line: 17, column: 19, scope: !124)
!153 = !DILocation(line: 17, column: 15, scope: !124)
!154 = !DILocation(line: 17, column: 10, scope: !124)
!155 = !DILocation(line: 17, column: 13, scope: !124)
!156 = distinct !{!156, !149, !152, !84}
!157 = !DILocation(line: 18, column: 10, scope: !124)
!158 = !DILocation(line: 18, column: 3, scope: !124)
!159 = distinct !DISubprogram(name: "memset", scope: !160, file: !160, line: 12, type: !161, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !32)
!160 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!161 = !DISubroutineType(types: !162)
!162 = !{!128, !128, !13, !131}
!163 = !DILocalVariable(name: "dst", arg: 1, scope: !159, file: !160, line: 12, type: !128)
!164 = !DILocation(line: 12, column: 20, scope: !159)
!165 = !DILocalVariable(name: "s", arg: 2, scope: !159, file: !160, line: 12, type: !13)
!166 = !DILocation(line: 12, column: 29, scope: !159)
!167 = !DILocalVariable(name: "count", arg: 3, scope: !159, file: !160, line: 12, type: !131)
!168 = !DILocation(line: 12, column: 39, scope: !159)
!169 = !DILocalVariable(name: "a", scope: !159, file: !160, line: 13, type: !141)
!170 = !DILocation(line: 13, column: 9, scope: !159)
!171 = !DILocation(line: 13, column: 13, scope: !159)
!172 = !DILocation(line: 14, column: 3, scope: !159)
!173 = !DILocation(line: 14, column: 15, scope: !159)
!174 = !DILocation(line: 14, column: 18, scope: !159)
!175 = !DILocation(line: 15, column: 12, scope: !159)
!176 = !DILocation(line: 15, column: 7, scope: !159)
!177 = !DILocation(line: 15, column: 10, scope: !159)
!178 = distinct !{!178, !172, !175, !84}
!179 = !DILocation(line: 16, column: 10, scope: !159)
!180 = !DILocation(line: 16, column: 3, scope: !159)
!181 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !182, file: !182, line: 12, type: !183, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !32)
!182 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!183 = !DISubroutineType(types: !184)
!184 = !{null, !185}
!185 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!186 = !DILocalVariable(name: "z", arg: 1, scope: !181, file: !182, line: 12, type: !185)
!187 = !DILocation(line: 12, column: 36, scope: !181)
!188 = !DILocation(line: 13, column: 7, scope: !189)
!189 = distinct !DILexicalBlock(scope: !181, file: !182, line: 13, column: 7)
!190 = !DILocation(line: 13, column: 9, scope: !189)
!191 = !DILocation(line: 13, column: 7, scope: !181)
!192 = !DILocation(line: 14, column: 5, scope: !189)
!193 = !DILocation(line: 15, column: 1, scope: !181)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/229_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/229_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSaveCtxt = type { i32, i32, i32, [81 x i8], i32 }

@xmlTreeIndentString = external global i8*, align 8
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"(i * ctxt->indent_size + ctxt->indent_size <= 80) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/229_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSaveCtxtInit = private unnamed_addr constant [36 x i8] c"void xmlSaveCtxtInit(xmlSaveCtxt *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"xmlTreeIndentString\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !20 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  %4 = load i8*, i8** %3, align 8, !dbg !29
  %5 = icmp ne i8* %4, null, !dbg !29
  br i1 %5, label %7, label %6, !dbg !31

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !32
  br label %11, !dbg !32

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !33
  %9 = call i64 @strlen(i8* noundef %8) #9, !dbg !34
  %10 = trunc i64 %9 to i32, !dbg !34
  store i32 %10, i32* %2, align 4, !dbg !35
  br label %11, !dbg !35

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !36
  ret i32 %12, !dbg !36
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !37 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !52, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %3, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %4, metadata !56, metadata !DIExpression()), !dbg !57
  %5 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !58
  %6 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %5, i32 0, i32 0, !dbg !59
  store i32 0, i32* %6, align 4, !dbg !60
  %7 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !61
  %8 = call i32 @xmlStrlen(i8* noundef %7), !dbg !62
  store i32 %8, i32* %4, align 4, !dbg !63
  %9 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !64
  %10 = icmp eq i8* %9, null, !dbg !66
  br i1 %10, label %14, label %11, !dbg !67

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4, !dbg !68
  %13 = icmp eq i32 %12, 0, !dbg !69
  br i1 %13, label %14, label %19, !dbg !70

14:                                               ; preds = %11, %1
  %15 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !71
  %16 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %15, i32 0, i32 3, !dbg !73
  %17 = getelementptr inbounds [81 x i8], [81 x i8]* %16, i64 0, i64 0, !dbg !71
  %18 = call i8* @memset(i8* %17, i32 0, i64 81), !dbg !74
  br label %82, !dbg !75

19:                                               ; preds = %11
  %20 = load i32, i32* %4, align 4, !dbg !76
  %21 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !78
  %22 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %21, i32 0, i32 1, !dbg !79
  store i32 %20, i32* %22, align 4, !dbg !80
  %23 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !81
  %24 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %23, i32 0, i32 1, !dbg !82
  %25 = load i32, i32* %24, align 4, !dbg !82
  %int_cast_to_i64 = zext i32 %25 to i64, !dbg !83
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !83
  %26 = sdiv i32 80, %25, !dbg !83, !klee.check.div !84
  %27 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !85
  %28 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %27, i32 0, i32 2, !dbg !86
  store i32 %26, i32* %28, align 4, !dbg !87
  store i32 0, i32* %3, align 4, !dbg !88
  br label %29, !dbg !90

29:                                               ; preds = %67, %19
  %30 = load i32, i32* %3, align 4, !dbg !91
  %31 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !93
  %32 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %31, i32 0, i32 2, !dbg !94
  %33 = load i32, i32* %32, align 4, !dbg !94
  %34 = icmp slt i32 %30, %33, !dbg !95
  br i1 %34, label %35, label %70, !dbg !96

35:                                               ; preds = %29
  %36 = load i32, i32* %3, align 4, !dbg !97
  %37 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !97
  %38 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %37, i32 0, i32 1, !dbg !97
  %39 = load i32, i32* %38, align 4, !dbg !97
  %40 = mul nsw i32 %36, %39, !dbg !97
  %41 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !97
  %42 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %41, i32 0, i32 1, !dbg !97
  %43 = load i32, i32* %42, align 4, !dbg !97
  %44 = add nsw i32 %40, %43, !dbg !97
  %45 = icmp sle i32 %44, 80, !dbg !97
  br i1 %45, label %46, label %48, !dbg !97

46:                                               ; preds = %35
  br i1 true, label %47, label %48, !dbg !97

47:                                               ; preds = %46
  br label %50, !dbg !97

48:                                               ; preds = %46, %35
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlSaveCtxtInit, i64 0, i64 0)), !dbg !97
  br label %50, !dbg !97

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @__PRETTY_FUNCTION__.xmlSaveCtxtInit, i64 0, i64 0)), !dbg !99
  %52 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !100
  %53 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %52, i32 0, i32 3, !dbg !101
  %54 = load i32, i32* %3, align 4, !dbg !102
  %55 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !103
  %56 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %55, i32 0, i32 1, !dbg !104
  %57 = load i32, i32* %56, align 4, !dbg !104
  %58 = mul nsw i32 %54, %57, !dbg !105
  %59 = sext i32 %58 to i64, !dbg !100
  %60 = getelementptr inbounds [81 x i8], [81 x i8]* %53, i64 0, i64 %59, !dbg !100
  %61 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !106
  %62 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !107
  %63 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %62, i32 0, i32 1, !dbg !108
  %64 = load i32, i32* %63, align 4, !dbg !108
  %65 = sext i32 %64 to i64, !dbg !107
  %66 = call i8* @memcpy(i8* %60, i8* %61, i64 %65), !dbg !109
  br label %67, !dbg !110

67:                                               ; preds = %50
  %68 = load i32, i32* %3, align 4, !dbg !111
  %69 = add nsw i32 %68, 1, !dbg !111
  store i32 %69, i32* %3, align 4, !dbg !111
  br label %29, !dbg !112, !llvm.loop !113

70:                                               ; preds = %29
  %71 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !116
  %72 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %71, i32 0, i32 3, !dbg !117
  %73 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !118
  %74 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %73, i32 0, i32 2, !dbg !119
  %75 = load i32, i32* %74, align 4, !dbg !119
  %76 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !120
  %77 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %76, i32 0, i32 1, !dbg !121
  %78 = load i32, i32* %77, align 4, !dbg !121
  %79 = mul nsw i32 %75, %78, !dbg !122
  %80 = sext i32 %79 to i64, !dbg !116
  %81 = getelementptr inbounds [81 x i8], [81 x i8]* %72, i64 0, i64 %80, !dbg !116
  store i8 0, i8* %81, align 1, !dbg !123
  br label %82

82:                                               ; preds = %70, %14
  %83 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !124
  %84 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %83, i32 0, i32 4, !dbg !125
  store i32 0, i32* %84, align 4, !dbg !126
  ret void, !dbg !127
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !128 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSaveCtxt, align 4
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt* %2, metadata !131, metadata !DIExpression()), !dbg !132
  %4 = call noalias i8* @malloc(i64 noundef 81) #10, !dbg !133
  store i8* %4, i8** @xmlTreeIndentString, align 8, !dbg !134
  %5 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !135
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 81, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0)), !dbg !136
  call void @llvm.dbg.declare(metadata i32* %3, metadata !137, metadata !DIExpression()), !dbg !138
  %6 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !139
  %7 = call i32 @xmlStrlen(i8* noundef %6), !dbg !140
  store i32 %7, i32* %3, align 4, !dbg !138
  %8 = load i32, i32* %3, align 4, !dbg !141
  %9 = icmp sgt i32 %8, 0, !dbg !142
  %10 = zext i1 %9 to i32, !dbg !142
  %11 = sext i32 %10 to i64, !dbg !141
  call void @klee_assume(i64 noundef %11), !dbg !143
  %12 = load i32, i32* %3, align 4, !dbg !144
  %13 = icmp sle i32 %12, 80, !dbg !145
  %14 = zext i1 %13 to i32, !dbg !145
  %15 = sext i32 %14 to i64, !dbg !144
  call void @klee_assume(i64 noundef %15), !dbg !146
  call void @xmlSaveCtxtInit(%struct._xmlSaveCtxt* noundef %2), !dbg !147
  %16 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !148
  call void @free(i8* noundef %16) #10, !dbg !149
  ret i32 0, !dbg !150
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !151 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !DIExpression()), !dbg !161
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %7, metadata !166, metadata !DIExpression()), !dbg !167
  %9 = load i8*, i8** %4, align 8, !dbg !168
  store i8* %9, i8** %7, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata i8** %8, metadata !169, metadata !DIExpression()), !dbg !170
  %10 = load i8*, i8** %5, align 8, !dbg !171
  store i8* %10, i8** %8, align 8, !dbg !170
  br label %11, !dbg !172

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !173
  %13 = add i64 %12, -1, !dbg !173
  store i64 %13, i64* %6, align 8, !dbg !173
  %14 = icmp ugt i64 %12, 0, !dbg !174
  br i1 %14, label %15, label %21, !dbg !172

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !175
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !175
  store i8* %17, i8** %8, align 8, !dbg !175
  %18 = load i8, i8* %16, align 1, !dbg !176
  %19 = load i8*, i8** %7, align 8, !dbg !177
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !177
  store i8* %20, i8** %7, align 8, !dbg !177
  store i8 %18, i8* %19, align 1, !dbg !178
  br label %11, !dbg !172, !llvm.loop !179

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !180
  ret i8* %22, !dbg !181
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !193
  %8 = load i8*, i8** %4, align 8, !dbg !194
  store i8* %8, i8** %7, align 8, !dbg !193
  br label %9, !dbg !195

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !196
  %11 = add i64 %10, -1, !dbg !196
  store i64 %11, i64* %6, align 8, !dbg !196
  %12 = icmp ugt i64 %10, 0, !dbg !197
  br i1 %12, label %13, label %18, !dbg !195

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !198
  %15 = trunc i32 %14 to i8, !dbg !198
  %16 = load i8*, i8** %7, align 8, !dbg !199
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !199
  store i8* %17, i8** %7, align 8, !dbg !199
  store i8 %15, i8* %16, align 1, !dbg !200
  br label %9, !dbg !195, !llvm.loop !201

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !202
  ret i8* %19, !dbg !203
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #8 !dbg !204 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !209, metadata !DIExpression()), !dbg !210
  %3 = load i64, i64* %2, align 8, !dbg !211
  %4 = icmp eq i64 %3, 0, !dbg !213
  br i1 %4, label %5, label %6, !dbg !214

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #11, !dbg !215
  unreachable, !dbg !215

6:                                                ; preds = %1
  ret void, !dbg !216
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!0, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19, !19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/229_xmlsave.c_303_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "38685e999c30b8cbb7c6e86d6d23f1db")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = distinct !DICompileUnit(language: DW_LANG_C89, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlStrlen", scope: !1, file: !1, line: 21, type: !21, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{!23, !24}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!26 = !{}
!27 = !DILocalVariable(name: "str", arg: 1, scope: !20, file: !1, line: 21, type: !24)
!28 = !DILocation(line: 21, column: 27, scope: !20)
!29 = !DILocation(line: 22, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !20, file: !1, line: 22, column: 9)
!31 = !DILocation(line: 22, column: 9, scope: !20)
!32 = !DILocation(line: 22, column: 15, scope: !30)
!33 = !DILocation(line: 23, column: 19, scope: !20)
!34 = !DILocation(line: 23, column: 12, scope: !20)
!35 = !DILocation(line: 23, column: 5, scope: !20)
!36 = !DILocation(line: 24, column: 1, scope: !20)
!37 = distinct !DISubprogram(name: "xmlSaveCtxtInit", scope: !1, file: !1, line: 26, type: !38, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 17, baseType: !42)
!42 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 11, size: 800, elements: !43)
!43 = !{!44, !45, !46, !47, !51}
!44 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !42, file: !1, line: 12, baseType: !23, size: 32)
!45 = !DIDerivedType(tag: DW_TAG_member, name: "indent_size", scope: !42, file: !1, line: 13, baseType: !23, size: 32, offset: 32)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "indent_nr", scope: !42, file: !1, line: 14, baseType: !23, size: 32, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !42, file: !1, line: 15, baseType: !48, size: 648, offset: 96)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 648, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 81)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !42, file: !1, line: 16, baseType: !23, size: 32, offset: 768)
!52 = !DILocalVariable(name: "ctxt", arg: 1, scope: !37, file: !1, line: 26, type: !40)
!53 = !DILocation(line: 26, column: 35, scope: !37)
!54 = !DILocalVariable(name: "i", scope: !37, file: !1, line: 27, type: !23)
!55 = !DILocation(line: 27, column: 9, scope: !37)
!56 = !DILocalVariable(name: "len", scope: !37, file: !1, line: 27, type: !23)
!57 = !DILocation(line: 27, column: 12, scope: !37)
!58 = !DILocation(line: 29, column: 5, scope: !37)
!59 = !DILocation(line: 29, column: 11, scope: !37)
!60 = !DILocation(line: 29, column: 18, scope: !37)
!61 = !DILocation(line: 31, column: 29, scope: !37)
!62 = !DILocation(line: 31, column: 11, scope: !37)
!63 = !DILocation(line: 31, column: 9, scope: !37)
!64 = !DILocation(line: 32, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !37, file: !1, line: 32, column: 9)
!66 = !DILocation(line: 32, column: 30, scope: !65)
!67 = !DILocation(line: 32, column: 39, scope: !65)
!68 = !DILocation(line: 32, column: 43, scope: !65)
!69 = !DILocation(line: 32, column: 47, scope: !65)
!70 = !DILocation(line: 32, column: 9, scope: !37)
!71 = !DILocation(line: 33, column: 17, scope: !72)
!72 = distinct !DILexicalBlock(scope: !65, file: !1, line: 32, column: 54)
!73 = !DILocation(line: 33, column: 23, scope: !72)
!74 = !DILocation(line: 33, column: 9, scope: !72)
!75 = !DILocation(line: 34, column: 5, scope: !72)
!76 = !DILocation(line: 35, column: 29, scope: !77)
!77 = distinct !DILexicalBlock(scope: !65, file: !1, line: 34, column: 12)
!78 = !DILocation(line: 35, column: 9, scope: !77)
!79 = !DILocation(line: 35, column: 15, scope: !77)
!80 = !DILocation(line: 35, column: 27, scope: !77)
!81 = !DILocation(line: 36, column: 40, scope: !77)
!82 = !DILocation(line: 36, column: 46, scope: !77)
!83 = !DILocation(line: 36, column: 38, scope: !77)
!84 = !{!"True"}
!85 = !DILocation(line: 36, column: 9, scope: !77)
!86 = !DILocation(line: 36, column: 15, scope: !77)
!87 = !DILocation(line: 36, column: 25, scope: !77)
!88 = !DILocation(line: 37, column: 16, scope: !89)
!89 = distinct !DILexicalBlock(scope: !77, file: !1, line: 37, column: 9)
!90 = !DILocation(line: 37, column: 14, scope: !89)
!91 = !DILocation(line: 37, column: 21, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 37, column: 9)
!93 = !DILocation(line: 37, column: 25, scope: !92)
!94 = !DILocation(line: 37, column: 31, scope: !92)
!95 = !DILocation(line: 37, column: 23, scope: !92)
!96 = !DILocation(line: 37, column: 9, scope: !89)
!97 = !DILocation(line: 38, column: 13, scope: !98)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 37, column: 47)
!99 = !DILocation(line: 39, column: 13, scope: !98)
!100 = !DILocation(line: 40, column: 21, scope: !98)
!101 = !DILocation(line: 40, column: 27, scope: !98)
!102 = !DILocation(line: 40, column: 34, scope: !98)
!103 = !DILocation(line: 40, column: 38, scope: !98)
!104 = !DILocation(line: 40, column: 44, scope: !98)
!105 = !DILocation(line: 40, column: 36, scope: !98)
!106 = !DILocation(line: 40, column: 58, scope: !98)
!107 = !DILocation(line: 41, column: 20, scope: !98)
!108 = !DILocation(line: 41, column: 26, scope: !98)
!109 = !DILocation(line: 40, column: 13, scope: !98)
!110 = !DILocation(line: 42, column: 9, scope: !98)
!111 = !DILocation(line: 37, column: 43, scope: !92)
!112 = !DILocation(line: 37, column: 9, scope: !92)
!113 = distinct !{!113, !96, !114, !115}
!114 = !DILocation(line: 42, column: 9, scope: !89)
!115 = !{!"llvm.loop.mustprogress"}
!116 = !DILocation(line: 43, column: 9, scope: !77)
!117 = !DILocation(line: 43, column: 15, scope: !77)
!118 = !DILocation(line: 43, column: 22, scope: !77)
!119 = !DILocation(line: 43, column: 28, scope: !77)
!120 = !DILocation(line: 43, column: 40, scope: !77)
!121 = !DILocation(line: 43, column: 46, scope: !77)
!122 = !DILocation(line: 43, column: 38, scope: !77)
!123 = !DILocation(line: 43, column: 59, scope: !77)
!124 = !DILocation(line: 46, column: 5, scope: !37)
!125 = !DILocation(line: 46, column: 11, scope: !37)
!126 = !DILocation(line: 46, column: 19, scope: !37)
!127 = !DILocation(line: 47, column: 1, scope: !37)
!128 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 49, type: !129, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!129 = !DISubroutineType(types: !130)
!130 = !{!23}
!131 = !DILocalVariable(name: "ctxt", scope: !128, file: !1, line: 50, type: !41)
!132 = !DILocation(line: 50, column: 17, scope: !128)
!133 = !DILocation(line: 52, column: 27, scope: !128)
!134 = !DILocation(line: 52, column: 25, scope: !128)
!135 = !DILocation(line: 53, column: 24, scope: !128)
!136 = !DILocation(line: 53, column: 5, scope: !128)
!137 = !DILocalVariable(name: "len", scope: !128, file: !1, line: 55, type: !23)
!138 = !DILocation(line: 55, column: 9, scope: !128)
!139 = !DILocation(line: 55, column: 25, scope: !128)
!140 = !DILocation(line: 55, column: 15, scope: !128)
!141 = !DILocation(line: 56, column: 17, scope: !128)
!142 = !DILocation(line: 56, column: 21, scope: !128)
!143 = !DILocation(line: 56, column: 5, scope: !128)
!144 = !DILocation(line: 57, column: 17, scope: !128)
!145 = !DILocation(line: 57, column: 21, scope: !128)
!146 = !DILocation(line: 57, column: 5, scope: !128)
!147 = !DILocation(line: 59, column: 5, scope: !128)
!148 = !DILocation(line: 61, column: 10, scope: !128)
!149 = !DILocation(line: 61, column: 5, scope: !128)
!150 = !DILocation(line: 62, column: 5, scope: !128)
!151 = distinct !DISubprogram(name: "memcpy", scope: !152, file: !152, line: 12, type: !153, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !26)
!152 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!153 = !DISubroutineType(types: !154)
!154 = !{!5, !5, !155, !157}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !159)
!158 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!159 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!160 = !DILocalVariable(name: "destaddr", arg: 1, scope: !151, file: !152, line: 12, type: !5)
!161 = !DILocation(line: 12, column: 20, scope: !151)
!162 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !151, file: !152, line: 12, type: !155)
!163 = !DILocation(line: 12, column: 42, scope: !151)
!164 = !DILocalVariable(name: "len", arg: 3, scope: !151, file: !152, line: 12, type: !157)
!165 = !DILocation(line: 12, column: 58, scope: !151)
!166 = !DILocalVariable(name: "dest", scope: !151, file: !152, line: 13, type: !3)
!167 = !DILocation(line: 13, column: 9, scope: !151)
!168 = !DILocation(line: 13, column: 16, scope: !151)
!169 = !DILocalVariable(name: "src", scope: !151, file: !152, line: 14, type: !24)
!170 = !DILocation(line: 14, column: 15, scope: !151)
!171 = !DILocation(line: 14, column: 21, scope: !151)
!172 = !DILocation(line: 16, column: 3, scope: !151)
!173 = !DILocation(line: 16, column: 13, scope: !151)
!174 = !DILocation(line: 16, column: 16, scope: !151)
!175 = !DILocation(line: 17, column: 19, scope: !151)
!176 = !DILocation(line: 17, column: 15, scope: !151)
!177 = !DILocation(line: 17, column: 10, scope: !151)
!178 = !DILocation(line: 17, column: 13, scope: !151)
!179 = distinct !{!179, !172, !175, !115}
!180 = !DILocation(line: 18, column: 10, scope: !151)
!181 = !DILocation(line: 18, column: 3, scope: !151)
!182 = distinct !DISubprogram(name: "memset", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !26)
!183 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!184 = !DISubroutineType(types: !185)
!185 = !{!5, !5, !23, !157}
!186 = !DILocalVariable(name: "dst", arg: 1, scope: !182, file: !183, line: 12, type: !5)
!187 = !DILocation(line: 12, column: 20, scope: !182)
!188 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !183, line: 12, type: !23)
!189 = !DILocation(line: 12, column: 29, scope: !182)
!190 = !DILocalVariable(name: "count", arg: 3, scope: !182, file: !183, line: 12, type: !157)
!191 = !DILocation(line: 12, column: 39, scope: !182)
!192 = !DILocalVariable(name: "a", scope: !182, file: !183, line: 13, type: !3)
!193 = !DILocation(line: 13, column: 9, scope: !182)
!194 = !DILocation(line: 13, column: 13, scope: !182)
!195 = !DILocation(line: 14, column: 3, scope: !182)
!196 = !DILocation(line: 14, column: 15, scope: !182)
!197 = !DILocation(line: 14, column: 18, scope: !182)
!198 = !DILocation(line: 15, column: 12, scope: !182)
!199 = !DILocation(line: 15, column: 7, scope: !182)
!200 = !DILocation(line: 15, column: 10, scope: !182)
!201 = distinct !{!201, !195, !198, !115}
!202 = !DILocation(line: 16, column: 10, scope: !182)
!203 = !DILocation(line: 16, column: 3, scope: !182)
!204 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !205, file: !205, line: 12, type: !206, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!205 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!206 = !DISubroutineType(types: !207)
!207 = !{null, !208}
!208 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!209 = !DILocalVariable(name: "z", arg: 1, scope: !204, file: !205, line: 12, type: !208)
!210 = !DILocation(line: 12, column: 36, scope: !204)
!211 = !DILocation(line: 13, column: 7, scope: !212)
!212 = distinct !DILexicalBlock(scope: !204, file: !205, line: 13, column: 7)
!213 = !DILocation(line: 13, column: 9, scope: !212)
!214 = !DILocation(line: 13, column: 7, scope: !204)
!215 = !DILocation(line: 14, column: 5, scope: !212)
!216 = !DILocation(line: 15, column: 1, scope: !204)

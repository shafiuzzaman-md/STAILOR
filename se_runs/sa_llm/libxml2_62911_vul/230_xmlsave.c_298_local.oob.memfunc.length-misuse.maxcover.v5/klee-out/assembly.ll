; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/230_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/230_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSaveCtxt = type { i8*, i8*, [1025 x i8], i32, i32 }

@xmlEscapeEntities = external global i8*, align 8
@xmlTreeIndentString = external global i8*, align 8
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(ctxt->indent_size * (i + 1) <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/230_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal = private unnamed_addr constant [46 x i8] c"void xmlNodeDumpOutputInternal(xmlSaveCtxt *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"xmlTreeIndentString\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlNodeDumpOutputInternal(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !21 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !40, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %3, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %4, metadata !44, metadata !DIExpression()), !dbg !45
  %5 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !46
  %6 = icmp eq %struct._xmlSaveCtxt* %5, null, !dbg !48
  br i1 %6, label %7, label %8, !dbg !49

7:                                                ; preds = %1
  br label %92, !dbg !50

8:                                                ; preds = %1
  %9 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !51
  %10 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %9, i32 0, i32 0, !dbg !53
  %11 = load i8*, i8** %10, align 8, !dbg !53
  %12 = icmp eq i8* %11, null, !dbg !54
  br i1 %12, label %13, label %22, !dbg !55

13:                                               ; preds = %8
  %14 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !56
  %15 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %14, i32 0, i32 1, !dbg !57
  %16 = load i8*, i8** %15, align 8, !dbg !57
  %17 = icmp eq i8* %16, null, !dbg !58
  br i1 %17, label %18, label %22, !dbg !59

18:                                               ; preds = %13
  %19 = load i8*, i8** @xmlEscapeEntities, align 8, !dbg !60
  %20 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !61
  %21 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %20, i32 0, i32 1, !dbg !62
  store i8* %19, i8** %21, align 8, !dbg !63
  br label %22, !dbg !61

22:                                               ; preds = %18, %13, %8
  %23 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !64
  %24 = call i32 @xmlStrlen(i8* noundef %23), !dbg !65
  store i32 %24, i32* %3, align 4, !dbg !66
  %25 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !67
  %26 = icmp eq i8* %25, null, !dbg !69
  br i1 %26, label %30, label %27, !dbg !70

27:                                               ; preds = %22
  %28 = load i32, i32* %3, align 4, !dbg !71
  %29 = icmp eq i32 %28, 0, !dbg !72
  br i1 %29, label %30, label %35, !dbg !73

30:                                               ; preds = %27, %22
  %31 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !74
  %32 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %31, i32 0, i32 2, !dbg !76
  %33 = getelementptr inbounds [1025 x i8], [1025 x i8]* %32, i64 0, i64 0, !dbg !74
  %34 = call i8* @memset(i8* %33, i32 0, i64 1025), !dbg !77
  br label %92, !dbg !78

35:                                               ; preds = %27
  %36 = load i32, i32* %3, align 4, !dbg !79
  %37 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !81
  %38 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %37, i32 0, i32 3, !dbg !82
  store i32 %36, i32* %38, align 4, !dbg !83
  %39 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !84
  %40 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %39, i32 0, i32 3, !dbg !85
  %41 = load i32, i32* %40, align 4, !dbg !85
  %int_cast_to_i64 = zext i32 %41 to i64, !dbg !86
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !86
  %42 = sdiv i32 1024, %41, !dbg !86, !klee.check.div !87
  %43 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !88
  %44 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %43, i32 0, i32 4, !dbg !89
  store i32 %42, i32* %44, align 8, !dbg !90
  store i32 0, i32* %4, align 4, !dbg !91
  br label %45, !dbg !93

45:                                               ; preds = %88, %35
  %46 = load i32, i32* %4, align 4, !dbg !94
  %47 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !96
  %48 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %47, i32 0, i32 4, !dbg !97
  %49 = load i32, i32* %48, align 8, !dbg !97
  %50 = icmp slt i32 %46, %49, !dbg !98
  br i1 %50, label %51, label %91, !dbg !99

51:                                               ; preds = %45
  %52 = load i32, i32* %4, align 4, !dbg !100
  %53 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !103
  %54 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %53, i32 0, i32 4, !dbg !104
  %55 = load i32, i32* %54, align 8, !dbg !104
  %56 = sub nsw i32 %55, 1, !dbg !105
  %57 = icmp eq i32 %52, %56, !dbg !106
  br i1 %57, label %58, label %72, !dbg !107

58:                                               ; preds = %51
  %59 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !108
  %60 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %59, i32 0, i32 3, !dbg !108
  %61 = load i32, i32* %60, align 4, !dbg !108
  %62 = load i32, i32* %4, align 4, !dbg !108
  %63 = add nsw i32 %62, 1, !dbg !108
  %64 = mul nsw i32 %61, %63, !dbg !108
  %65 = icmp sle i32 %64, 1024, !dbg !108
  br i1 %65, label %66, label %68, !dbg !108

66:                                               ; preds = %58
  br i1 true, label %67, label %68, !dbg !108

67:                                               ; preds = %66
  br label %70, !dbg !108

68:                                               ; preds = %66, %58
  %69 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !108
  br label %70, !dbg !108

70:                                               ; preds = %68, %67
  %71 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.xmlNodeDumpOutputInternal, i64 0, i64 0)), !dbg !110
  br label %72, !dbg !111

72:                                               ; preds = %70, %51
  %73 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !112
  %74 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %73, i32 0, i32 2, !dbg !113
  %75 = load i32, i32* %4, align 4, !dbg !114
  %76 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !115
  %77 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %76, i32 0, i32 3, !dbg !116
  %78 = load i32, i32* %77, align 4, !dbg !116
  %79 = mul nsw i32 %75, %78, !dbg !117
  %80 = sext i32 %79 to i64, !dbg !112
  %81 = getelementptr inbounds [1025 x i8], [1025 x i8]* %74, i64 0, i64 %80, !dbg !112
  %82 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !118
  %83 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !119
  %84 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %83, i32 0, i32 3, !dbg !120
  %85 = load i32, i32* %84, align 4, !dbg !120
  %86 = sext i32 %85 to i64, !dbg !119
  %87 = call i8* @memcpy(i8* %81, i8* %82, i64 %86), !dbg !121
  br label %88, !dbg !122

88:                                               ; preds = %72
  %89 = load i32, i32* %4, align 4, !dbg !123
  %90 = add nsw i32 %89, 1, !dbg !123
  store i32 %90, i32* %4, align 4, !dbg !123
  br label %45, !dbg !124, !llvm.loop !125

91:                                               ; preds = %45
  br label %92

92:                                               ; preds = %7, %91, %30
  ret void, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare i32 @xmlStrlen(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !132, metadata !DIExpression()), !dbg !133
  %4 = call noalias i8* @malloc(i64 noundef 1056) #8, !dbg !134
  %5 = bitcast i8* %4 to %struct._xmlSaveCtxt*, !dbg !134
  store %struct._xmlSaveCtxt* %5, %struct._xmlSaveCtxt** %2, align 8, !dbg !133
  %6 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !135
  %7 = icmp ne %struct._xmlSaveCtxt* %6, null, !dbg !135
  br i1 %7, label %9, label %8, !dbg !137

8:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !138
  br label %47, !dbg !138

9:                                                ; preds = %0
  %10 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !139
  %11 = bitcast %struct._xmlSaveCtxt* %10 to i8*, !dbg !139
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 1056, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !140
  %12 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !141
  %13 = icmp ne %struct._xmlSaveCtxt* %12, null, !dbg !142
  %14 = zext i1 %13 to i32, !dbg !142
  %15 = sext i32 %14 to i64, !dbg !141
  call void @klee_assume(i64 noundef %15), !dbg !143
  %16 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !144
  %17 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %16, i32 0, i32 0, !dbg !145
  %18 = load i8*, i8** %17, align 8, !dbg !145
  %19 = icmp eq i8* %18, null, !dbg !146
  %20 = zext i1 %19 to i32, !dbg !146
  %21 = sext i32 %20 to i64, !dbg !144
  call void @klee_assume(i64 noundef %21), !dbg !147
  %22 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !148
  %23 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %22, i32 0, i32 1, !dbg !149
  %24 = load i8*, i8** %23, align 8, !dbg !149
  %25 = icmp eq i8* %24, null, !dbg !150
  %26 = zext i1 %25 to i32, !dbg !150
  %27 = sext i32 %26 to i64, !dbg !148
  call void @klee_assume(i64 noundef %27), !dbg !151
  %28 = call noalias i8* @malloc(i64 noundef 256) #8, !dbg !152
  store i8* %28, i8** @xmlTreeIndentString, align 8, !dbg !153
  %29 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !154
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 256, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)), !dbg !155
  %30 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !156
  %31 = icmp ne i8* %30, null, !dbg !157
  %32 = zext i1 %31 to i32, !dbg !157
  %33 = sext i32 %32 to i64, !dbg !156
  call void @klee_assume(i64 noundef %33), !dbg !158
  call void @llvm.dbg.declare(metadata i32* %3, metadata !159, metadata !DIExpression()), !dbg !160
  %34 = bitcast i32* %3 to i8*, !dbg !161
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !162
  %35 = load i32, i32* %3, align 4, !dbg !163
  %36 = icmp sgt i32 %35, 0, !dbg !164
  %37 = zext i1 %36 to i32, !dbg !164
  %38 = sext i32 %37 to i64, !dbg !163
  call void @klee_assume(i64 noundef %38), !dbg !165
  %39 = load i32, i32* %3, align 4, !dbg !166
  %40 = icmp sle i32 %39, 256, !dbg !167
  %41 = zext i1 %40 to i32, !dbg !167
  %42 = sext i32 %41 to i64, !dbg !166
  call void @klee_assume(i64 noundef %42), !dbg !168
  %43 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !169
  call void @xmlNodeDumpOutputInternal(%struct._xmlSaveCtxt* noundef %43), !dbg !170
  %44 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !171
  call void @free(i8* noundef %44) #8, !dbg !172
  %45 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !173
  %46 = bitcast %struct._xmlSaveCtxt* %45 to i8*, !dbg !173
  call void @free(i8* noundef %46) #8, !dbg !174
  store i32 0, i32* %1, align 4, !dbg !175
  br label %47, !dbg !175

47:                                               ; preds = %9, %8
  %48 = load i32, i32* %1, align 4, !dbg !176
  ret i32 %48, !dbg !176
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !177 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !186, metadata !DIExpression()), !dbg !187
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !188, metadata !DIExpression()), !dbg !189
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata i8** %7, metadata !192, metadata !DIExpression()), !dbg !193
  %9 = load i8*, i8** %4, align 8, !dbg !194
  store i8* %9, i8** %7, align 8, !dbg !193
  call void @llvm.dbg.declare(metadata i8** %8, metadata !195, metadata !DIExpression()), !dbg !198
  %10 = load i8*, i8** %5, align 8, !dbg !199
  store i8* %10, i8** %8, align 8, !dbg !198
  br label %11, !dbg !200

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !201
  %13 = add i64 %12, -1, !dbg !201
  store i64 %13, i64* %6, align 8, !dbg !201
  %14 = icmp ugt i64 %12, 0, !dbg !202
  br i1 %14, label %15, label %21, !dbg !200

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !203
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !203
  store i8* %17, i8** %8, align 8, !dbg !203
  %18 = load i8, i8* %16, align 1, !dbg !204
  %19 = load i8*, i8** %7, align 8, !dbg !205
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !205
  store i8* %20, i8** %7, align 8, !dbg !205
  store i8 %18, i8* %19, align 1, !dbg !206
  br label %11, !dbg !200, !llvm.loop !207

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !208
  ret i8* %22, !dbg !209
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !210 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !214, metadata !DIExpression()), !dbg !215
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %7, metadata !220, metadata !DIExpression()), !dbg !221
  %8 = load i8*, i8** %4, align 8, !dbg !222
  store i8* %8, i8** %7, align 8, !dbg !221
  br label %9, !dbg !223

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !224
  %11 = add i64 %10, -1, !dbg !224
  store i64 %11, i64* %6, align 8, !dbg !224
  %12 = icmp ugt i64 %10, 0, !dbg !225
  br i1 %12, label %13, label %18, !dbg !223

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !226
  %15 = trunc i32 %14 to i8, !dbg !226
  %16 = load i8*, i8** %7, align 8, !dbg !227
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !227
  store i8* %17, i8** %7, align 8, !dbg !227
  store i8 %15, i8* %16, align 1, !dbg !228
  br label %9, !dbg !223, !llvm.loop !229

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !230
  ret i8* %19, !dbg !231
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #7 !dbg !232 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !237, metadata !DIExpression()), !dbg !238
  %3 = load i64, i64* %2, align 8, !dbg !239
  %4 = icmp eq i64 %3, 0, !dbg !241
  br i1 %4, label %5, label %6, !dbg !242

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #9, !dbg !243
  unreachable, !dbg !243

6:                                                ; preds = %1
  ret void, !dbg !244
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.dbg.cu = !{!0, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20, !20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/230_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "45684804d970d9a6e2c4bc6c3f4208c8")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 22, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!11 = distinct !DICompileUnit(language: DW_LANG_C89, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "xmlNodeDumpOutputInternal", scope: !1, file: !1, line: 31, type: !22, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24}
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !1, line: 20, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !1, line: 14, size: 8448, elements: !27)
!27 = !{!28, !31, !32, !36, !38}
!28 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !26, file: !1, line: 15, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !26, file: !1, line: 16, baseType: !29, size: 64, offset: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !26, file: !1, line: 17, baseType: !33, size: 8200, offset: 128)
!33 = !DICompositeType(tag: DW_TAG_array_type, baseType: !30, size: 8200, elements: !34)
!34 = !{!35}
!35 = !DISubrange(count: 1025)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "indent_size", scope: !26, file: !1, line: 18, baseType: !37, size: 32, offset: 8352)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "indent_nr", scope: !26, file: !1, line: 19, baseType: !37, size: 32, offset: 8384)
!39 = !{}
!40 = !DILocalVariable(name: "ctxt", arg: 1, scope: !21, file: !1, line: 31, type: !24)
!41 = !DILocation(line: 31, column: 45, scope: !21)
!42 = !DILocalVariable(name: "len", scope: !21, file: !1, line: 32, type: !37)
!43 = !DILocation(line: 32, column: 9, scope: !21)
!44 = !DILocalVariable(name: "i", scope: !21, file: !1, line: 33, type: !37)
!45 = !DILocation(line: 33, column: 9, scope: !21)
!46 = !DILocation(line: 35, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !21, file: !1, line: 35, column: 9)
!48 = !DILocation(line: 35, column: 14, scope: !47)
!49 = !DILocation(line: 35, column: 9, scope: !21)
!50 = !DILocation(line: 35, column: 23, scope: !47)
!51 = !DILocation(line: 36, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !21, file: !1, line: 36, column: 9)
!53 = !DILocation(line: 36, column: 16, scope: !52)
!54 = !DILocation(line: 36, column: 25, scope: !52)
!55 = !DILocation(line: 36, column: 34, scope: !52)
!56 = !DILocation(line: 36, column: 38, scope: !52)
!57 = !DILocation(line: 36, column: 44, scope: !52)
!58 = !DILocation(line: 36, column: 51, scope: !52)
!59 = !DILocation(line: 36, column: 9, scope: !21)
!60 = !DILocation(line: 37, column: 24, scope: !52)
!61 = !DILocation(line: 37, column: 9, scope: !52)
!62 = !DILocation(line: 37, column: 15, scope: !52)
!63 = !DILocation(line: 37, column: 22, scope: !52)
!64 = !DILocation(line: 38, column: 32, scope: !21)
!65 = !DILocation(line: 38, column: 11, scope: !21)
!66 = !DILocation(line: 38, column: 9, scope: !21)
!67 = !DILocation(line: 39, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !21, file: !1, line: 39, column: 9)
!69 = !DILocation(line: 39, column: 30, scope: !68)
!70 = !DILocation(line: 39, column: 39, scope: !68)
!71 = !DILocation(line: 39, column: 43, scope: !68)
!72 = !DILocation(line: 39, column: 47, scope: !68)
!73 = !DILocation(line: 39, column: 9, scope: !21)
!74 = !DILocation(line: 40, column: 17, scope: !75)
!75 = distinct !DILexicalBlock(scope: !68, file: !1, line: 39, column: 54)
!76 = !DILocation(line: 40, column: 23, scope: !75)
!77 = !DILocation(line: 40, column: 9, scope: !75)
!78 = !DILocation(line: 41, column: 5, scope: !75)
!79 = !DILocation(line: 42, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !68, file: !1, line: 41, column: 12)
!81 = !DILocation(line: 42, column: 9, scope: !80)
!82 = !DILocation(line: 42, column: 15, scope: !80)
!83 = !DILocation(line: 42, column: 27, scope: !80)
!84 = !DILocation(line: 43, column: 40, scope: !80)
!85 = !DILocation(line: 43, column: 46, scope: !80)
!86 = !DILocation(line: 43, column: 38, scope: !80)
!87 = !{!"True"}
!88 = !DILocation(line: 43, column: 9, scope: !80)
!89 = !DILocation(line: 43, column: 15, scope: !80)
!90 = !DILocation(line: 43, column: 25, scope: !80)
!91 = !DILocation(line: 44, column: 16, scope: !92)
!92 = distinct !DILexicalBlock(scope: !80, file: !1, line: 44, column: 9)
!93 = !DILocation(line: 44, column: 14, scope: !92)
!94 = !DILocation(line: 44, column: 21, scope: !95)
!95 = distinct !DILexicalBlock(scope: !92, file: !1, line: 44, column: 9)
!96 = !DILocation(line: 44, column: 25, scope: !95)
!97 = !DILocation(line: 44, column: 31, scope: !95)
!98 = !DILocation(line: 44, column: 23, scope: !95)
!99 = !DILocation(line: 44, column: 9, scope: !92)
!100 = !DILocation(line: 45, column: 17, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 45, column: 17)
!102 = distinct !DILexicalBlock(scope: !95, file: !1, line: 44, column: 47)
!103 = !DILocation(line: 45, column: 22, scope: !101)
!104 = !DILocation(line: 45, column: 28, scope: !101)
!105 = !DILocation(line: 45, column: 38, scope: !101)
!106 = !DILocation(line: 45, column: 19, scope: !101)
!107 = !DILocation(line: 45, column: 17, scope: !102)
!108 = !DILocation(line: 46, column: 17, scope: !109)
!109 = distinct !DILexicalBlock(scope: !101, file: !1, line: 45, column: 43)
!110 = !DILocation(line: 47, column: 17, scope: !109)
!111 = !DILocation(line: 48, column: 13, scope: !109)
!112 = !DILocation(line: 49, column: 21, scope: !102)
!113 = !DILocation(line: 49, column: 27, scope: !102)
!114 = !DILocation(line: 49, column: 34, scope: !102)
!115 = !DILocation(line: 49, column: 38, scope: !102)
!116 = !DILocation(line: 49, column: 44, scope: !102)
!117 = !DILocation(line: 49, column: 36, scope: !102)
!118 = !DILocation(line: 49, column: 58, scope: !102)
!119 = !DILocation(line: 49, column: 79, scope: !102)
!120 = !DILocation(line: 49, column: 85, scope: !102)
!121 = !DILocation(line: 49, column: 13, scope: !102)
!122 = !DILocation(line: 50, column: 9, scope: !102)
!123 = !DILocation(line: 44, column: 43, scope: !95)
!124 = !DILocation(line: 44, column: 9, scope: !95)
!125 = distinct !{!125, !99, !126, !127}
!126 = !DILocation(line: 50, column: 9, scope: !92)
!127 = !{!"llvm.loop.mustprogress"}
!128 = !DILocation(line: 52, column: 1, scope: !21)
!129 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !130, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!130 = !DISubroutineType(types: !131)
!131 = !{!37}
!132 = !DILocalVariable(name: "ctxt", scope: !129, file: !1, line: 55, type: !24)
!133 = !DILocation(line: 55, column: 18, scope: !129)
!134 = !DILocation(line: 55, column: 25, scope: !129)
!135 = !DILocation(line: 56, column: 10, scope: !136)
!136 = distinct !DILexicalBlock(scope: !129, file: !1, line: 56, column: 9)
!137 = !DILocation(line: 56, column: 9, scope: !129)
!138 = !DILocation(line: 56, column: 16, scope: !136)
!139 = !DILocation(line: 58, column: 24, scope: !129)
!140 = !DILocation(line: 58, column: 5, scope: !129)
!141 = !DILocation(line: 60, column: 17, scope: !129)
!142 = !DILocation(line: 60, column: 22, scope: !129)
!143 = !DILocation(line: 60, column: 5, scope: !129)
!144 = !DILocation(line: 61, column: 17, scope: !129)
!145 = !DILocation(line: 61, column: 23, scope: !129)
!146 = !DILocation(line: 61, column: 32, scope: !129)
!147 = !DILocation(line: 61, column: 5, scope: !129)
!148 = !DILocation(line: 62, column: 17, scope: !129)
!149 = !DILocation(line: 62, column: 23, scope: !129)
!150 = !DILocation(line: 62, column: 30, scope: !129)
!151 = !DILocation(line: 62, column: 5, scope: !129)
!152 = !DILocation(line: 64, column: 27, scope: !129)
!153 = !DILocation(line: 64, column: 25, scope: !129)
!154 = !DILocation(line: 65, column: 24, scope: !129)
!155 = !DILocation(line: 65, column: 5, scope: !129)
!156 = !DILocation(line: 67, column: 17, scope: !129)
!157 = !DILocation(line: 67, column: 37, scope: !129)
!158 = !DILocation(line: 67, column: 5, scope: !129)
!159 = !DILocalVariable(name: "len", scope: !129, file: !1, line: 69, type: !37)
!160 = !DILocation(line: 69, column: 9, scope: !129)
!161 = !DILocation(line: 70, column: 24, scope: !129)
!162 = !DILocation(line: 70, column: 5, scope: !129)
!163 = !DILocation(line: 71, column: 17, scope: !129)
!164 = !DILocation(line: 71, column: 21, scope: !129)
!165 = !DILocation(line: 71, column: 5, scope: !129)
!166 = !DILocation(line: 72, column: 17, scope: !129)
!167 = !DILocation(line: 72, column: 21, scope: !129)
!168 = !DILocation(line: 72, column: 5, scope: !129)
!169 = !DILocation(line: 74, column: 31, scope: !129)
!170 = !DILocation(line: 74, column: 5, scope: !129)
!171 = !DILocation(line: 76, column: 10, scope: !129)
!172 = !DILocation(line: 76, column: 5, scope: !129)
!173 = !DILocation(line: 77, column: 10, scope: !129)
!174 = !DILocation(line: 77, column: 5, scope: !129)
!175 = !DILocation(line: 78, column: 5, scope: !129)
!176 = !DILocation(line: 79, column: 1, scope: !129)
!177 = distinct !DISubprogram(name: "memcpy", scope: !178, file: !178, line: 12, type: !179, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !39)
!178 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!179 = !DISubroutineType(types: !180)
!180 = !{!3, !3, !181, !183}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !184, line: 46, baseType: !185)
!184 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!185 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!186 = !DILocalVariable(name: "destaddr", arg: 1, scope: !177, file: !178, line: 12, type: !3)
!187 = !DILocation(line: 12, column: 20, scope: !177)
!188 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !177, file: !178, line: 12, type: !181)
!189 = !DILocation(line: 12, column: 42, scope: !177)
!190 = !DILocalVariable(name: "len", arg: 3, scope: !177, file: !178, line: 12, type: !183)
!191 = !DILocation(line: 12, column: 58, scope: !177)
!192 = !DILocalVariable(name: "dest", scope: !177, file: !178, line: 13, type: !29)
!193 = !DILocation(line: 13, column: 9, scope: !177)
!194 = !DILocation(line: 13, column: 16, scope: !177)
!195 = !DILocalVariable(name: "src", scope: !177, file: !178, line: 14, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!198 = !DILocation(line: 14, column: 15, scope: !177)
!199 = !DILocation(line: 14, column: 21, scope: !177)
!200 = !DILocation(line: 16, column: 3, scope: !177)
!201 = !DILocation(line: 16, column: 13, scope: !177)
!202 = !DILocation(line: 16, column: 16, scope: !177)
!203 = !DILocation(line: 17, column: 19, scope: !177)
!204 = !DILocation(line: 17, column: 15, scope: !177)
!205 = !DILocation(line: 17, column: 10, scope: !177)
!206 = !DILocation(line: 17, column: 13, scope: !177)
!207 = distinct !{!207, !200, !203, !127}
!208 = !DILocation(line: 18, column: 10, scope: !177)
!209 = !DILocation(line: 18, column: 3, scope: !177)
!210 = distinct !DISubprogram(name: "memset", scope: !211, file: !211, line: 12, type: !212, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !39)
!211 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!212 = !DISubroutineType(types: !213)
!213 = !{!3, !3, !37, !183}
!214 = !DILocalVariable(name: "dst", arg: 1, scope: !210, file: !211, line: 12, type: !3)
!215 = !DILocation(line: 12, column: 20, scope: !210)
!216 = !DILocalVariable(name: "s", arg: 2, scope: !210, file: !211, line: 12, type: !37)
!217 = !DILocation(line: 12, column: 29, scope: !210)
!218 = !DILocalVariable(name: "count", arg: 3, scope: !210, file: !211, line: 12, type: !183)
!219 = !DILocation(line: 12, column: 39, scope: !210)
!220 = !DILocalVariable(name: "a", scope: !210, file: !211, line: 13, type: !29)
!221 = !DILocation(line: 13, column: 9, scope: !210)
!222 = !DILocation(line: 13, column: 13, scope: !210)
!223 = !DILocation(line: 14, column: 3, scope: !210)
!224 = !DILocation(line: 14, column: 15, scope: !210)
!225 = !DILocation(line: 14, column: 18, scope: !210)
!226 = !DILocation(line: 15, column: 12, scope: !210)
!227 = !DILocation(line: 15, column: 7, scope: !210)
!228 = !DILocation(line: 15, column: 10, scope: !210)
!229 = distinct !{!229, !223, !226, !127}
!230 = !DILocation(line: 16, column: 10, scope: !210)
!231 = !DILocation(line: 16, column: 3, scope: !210)
!232 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !233, file: !233, line: 12, type: !234, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !39)
!233 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!234 = !DISubroutineType(types: !235)
!235 = !{null, !236}
!236 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!237 = !DILocalVariable(name: "z", arg: 1, scope: !232, file: !233, line: 12, type: !236)
!238 = !DILocation(line: 12, column: 36, scope: !232)
!239 = !DILocation(line: 13, column: 7, scope: !240)
!240 = distinct !DILexicalBlock(scope: !232, file: !233, line: 13, column: 7)
!241 = !DILocation(line: 13, column: 9, scope: !240)
!242 = !DILocation(line: 13, column: 7, scope: !232)
!243 = !DILocation(line: 14, column: 5, scope: !240)
!244 = !DILocation(line: 15, column: 1, scope: !232)

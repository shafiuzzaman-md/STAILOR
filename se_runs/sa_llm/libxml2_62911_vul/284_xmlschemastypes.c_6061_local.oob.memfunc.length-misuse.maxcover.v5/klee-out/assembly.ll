; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaValDecimal = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"((dec->total - i) + (i + 1) <= dec->total) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaValDecimalNormalize = private unnamed_addr constant [57 x i8] c"void xmlSchemaValDecimalNormalize(xmlSchemaValDecimal *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"dec.total\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"dec.offs\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"null_pos\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaInitTypes() #0 !dbg !17 {
  ret void, !dbg !21
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaValDecimalNormalize(%struct._xmlSchemaValDecimal* noundef %0) #0 !dbg !22 {
  %2 = alloca %struct._xmlSchemaValDecimal*, align 8
  %3 = alloca i32, align 4
  store %struct._xmlSchemaValDecimal* %0, %struct._xmlSchemaValDecimal** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValDecimal** %2, metadata !32, metadata !DIExpression()), !dbg !33
  %4 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !34
  %5 = icmp ne %struct._xmlSchemaValDecimal* %4, null, !dbg !34
  br i1 %5, label %6, label %78, !dbg !36

6:                                                ; preds = %1
  %7 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !37
  %8 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %7, i32 0, i32 1, !dbg !38
  %9 = load i8*, i8** %8, align 8, !dbg !38
  %10 = icmp ne i8* %9, null, !dbg !37
  br i1 %10, label %11, label %78, !dbg !39

11:                                               ; preds = %6
  call void @llvm.dbg.declare(metadata i32* %3, metadata !40, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %3, align 4, !dbg !42
  br label %12, !dbg !43

12:                                               ; preds = %22, %11
  %13 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !44
  %14 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %13, i32 0, i32 1, !dbg !45
  %15 = load i8*, i8** %14, align 8, !dbg !45
  %16 = load i32, i32* %3, align 4, !dbg !46
  %17 = sext i32 %16 to i64, !dbg !47
  %18 = getelementptr inbounds i8, i8* %15, i64 %17, !dbg !47
  %19 = load i8, i8* %18, align 1, !dbg !48
  %20 = sext i8 %19 to i32, !dbg !48
  %21 = icmp ne i32 %20, 0, !dbg !49
  br i1 %21, label %22, label %25, !dbg !43

22:                                               ; preds = %12
  %23 = load i32, i32* %3, align 4, !dbg !50
  %24 = add nsw i32 %23, 1, !dbg !50
  store i32 %24, i32* %3, align 4, !dbg !50
  br label %12, !dbg !43, !llvm.loop !51

25:                                               ; preds = %12
  %26 = load i32, i32* %3, align 4, !dbg !53
  %27 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !55
  %28 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %27, i32 0, i32 0, !dbg !56
  %29 = load i32, i32* %28, align 8, !dbg !56
  %30 = icmp slt i32 %26, %29, !dbg !57
  br i1 %30, label %31, label %77, !dbg !58

31:                                               ; preds = %25
  %32 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !59
  %33 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %32, i32 0, i32 0, !dbg !59
  %34 = load i32, i32* %33, align 8, !dbg !59
  %35 = load i32, i32* %3, align 4, !dbg !59
  %36 = sub nsw i32 %34, %35, !dbg !59
  %37 = load i32, i32* %3, align 4, !dbg !59
  %38 = add nsw i32 %37, 1, !dbg !59
  %39 = add nsw i32 %36, %38, !dbg !59
  %40 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !59
  %41 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %40, i32 0, i32 0, !dbg !59
  %42 = load i32, i32* %41, align 8, !dbg !59
  %43 = icmp sle i32 %39, %42, !dbg !59
  br i1 %43, label %44, label %46, !dbg !59

44:                                               ; preds = %31
  br i1 true, label %45, label %46, !dbg !59

45:                                               ; preds = %44
  br label %48, !dbg !59

46:                                               ; preds = %44, %31
  %47 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 38, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.xmlSchemaValDecimalNormalize, i64 0, i64 0)), !dbg !59
  br label %48, !dbg !59

48:                                               ; preds = %46, %45
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.2, i64 0, i64 0), i32 noundef 41, i8* noundef getelementptr inbounds ([57 x i8], [57 x i8]* @__PRETTY_FUNCTION__.xmlSchemaValDecimalNormalize, i64 0, i64 0)), !dbg !61
  %50 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !62
  %51 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %50, i32 0, i32 1, !dbg !63
  %52 = load i8*, i8** %51, align 8, !dbg !63
  %53 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !64
  %54 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %53, i32 0, i32 0, !dbg !65
  %55 = load i32, i32* %54, align 8, !dbg !65
  %56 = load i32, i32* %3, align 4, !dbg !66
  %57 = sub nsw i32 %55, %56, !dbg !67
  %58 = sext i32 %57 to i64, !dbg !68
  %59 = getelementptr inbounds i8, i8* %52, i64 %58, !dbg !68
  %60 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !69
  %61 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %60, i32 0, i32 1, !dbg !70
  %62 = load i8*, i8** %61, align 8, !dbg !70
  %63 = load i32, i32* %3, align 4, !dbg !71
  %64 = add nsw i32 %63, 1, !dbg !72
  %65 = sext i32 %64 to i64, !dbg !71
  %66 = call i8* @memmove(i8* %59, i8* %62, i64 %65), !dbg !73
  %67 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !74
  %68 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %67, i32 0, i32 1, !dbg !75
  %69 = load i8*, i8** %68, align 8, !dbg !75
  %70 = load %struct._xmlSchemaValDecimal*, %struct._xmlSchemaValDecimal** %2, align 8, !dbg !76
  %71 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %70, i32 0, i32 0, !dbg !77
  %72 = load i32, i32* %71, align 8, !dbg !77
  %73 = load i32, i32* %3, align 4, !dbg !78
  %74 = sub nsw i32 %72, %73, !dbg !79
  %75 = sext i32 %74 to i64, !dbg !76
  %76 = call i8* @memset(i8* %69, i32 48, i64 %75), !dbg !80
  br label %77, !dbg !81

77:                                               ; preds = %48, %25
  br label %78, !dbg !82

78:                                               ; preds = %77, %6, %1
  ret void, !dbg !83
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !84 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSchemaValDecimal, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaValDecimal* %2, metadata !87, metadata !DIExpression()), !dbg !88
  %4 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 0, !dbg !89
  %5 = bitcast i32* %4 to i8*, !dbg !90
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !91
  %6 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 0, !dbg !92
  %7 = load i32, i32* %6, align 8, !dbg !92
  %8 = icmp sge i32 %7, 0, !dbg !93
  br i1 %8, label %9, label %13, !dbg !94

9:                                                ; preds = %0
  %10 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 0, !dbg !95
  %11 = load i32, i32* %10, align 8, !dbg !95
  %12 = icmp sle i32 %11, 1024, !dbg !96
  br label %13

13:                                               ; preds = %9, %0
  %14 = phi i1 [ false, %0 ], [ %12, %9 ], !dbg !97
  %15 = zext i1 %14 to i32, !dbg !94
  %16 = sext i32 %15 to i64, !dbg !98
  call void @klee_assume(i64 noundef %16), !dbg !99
  %17 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 0, !dbg !100
  %18 = load i32, i32* %17, align 8, !dbg !100
  %19 = add nsw i32 %18, 1, !dbg !101
  %20 = sext i32 %19 to i64, !dbg !102
  %21 = call noalias i8* @malloc(i64 noundef %20) #8, !dbg !103
  %22 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 1, !dbg !104
  store i8* %21, i8** %22, align 8, !dbg !105
  %23 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 1, !dbg !106
  %24 = load i8*, i8** %23, align 8, !dbg !106
  %25 = icmp ne i8* %24, null, !dbg !108
  br i1 %25, label %27, label %26, !dbg !109

26:                                               ; preds = %13
  store i32 0, i32* %1, align 4, !dbg !110
  br label %53, !dbg !110

27:                                               ; preds = %13
  %28 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 1, !dbg !111
  %29 = load i8*, i8** %28, align 8, !dbg !111
  %30 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 0, !dbg !112
  %31 = load i32, i32* %30, align 8, !dbg !112
  %32 = add nsw i32 %31, 1, !dbg !113
  %33 = sext i32 %32 to i64, !dbg !114
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef %33, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !115
  call void @llvm.dbg.declare(metadata i32* %3, metadata !116, metadata !DIExpression()), !dbg !117
  %34 = bitcast i32* %3 to i8*, !dbg !118
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !119
  %35 = load i32, i32* %3, align 4, !dbg !120
  %36 = icmp sge i32 %35, 0, !dbg !121
  br i1 %36, label %37, label %42, !dbg !122

37:                                               ; preds = %27
  %38 = load i32, i32* %3, align 4, !dbg !123
  %39 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 0, !dbg !124
  %40 = load i32, i32* %39, align 8, !dbg !124
  %41 = icmp slt i32 %38, %40, !dbg !125
  br label %42

42:                                               ; preds = %37, %27
  %43 = phi i1 [ false, %27 ], [ %41, %37 ], !dbg !97
  %44 = zext i1 %43 to i32, !dbg !122
  %45 = sext i32 %44 to i64, !dbg !120
  call void @klee_assume(i64 noundef %45), !dbg !126
  %46 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 1, !dbg !127
  %47 = load i8*, i8** %46, align 8, !dbg !127
  %48 = load i32, i32* %3, align 4, !dbg !128
  %49 = sext i32 %48 to i64, !dbg !129
  %50 = getelementptr inbounds i8, i8* %47, i64 %49, !dbg !129
  store i8 0, i8* %50, align 1, !dbg !130
  call void @xmlSchemaValDecimalNormalize(%struct._xmlSchemaValDecimal* noundef %2), !dbg !131
  %51 = getelementptr inbounds %struct._xmlSchemaValDecimal, %struct._xmlSchemaValDecimal* %2, i32 0, i32 1, !dbg !132
  %52 = load i8*, i8** %51, align 8, !dbg !132
  call void @free(i8* noundef %52) #8, !dbg !133
  store i32 0, i32* %1, align 4, !dbg !134
  br label %53, !dbg !134

53:                                               ; preds = %42, %26
  %54 = load i32, i32* %1, align 4, !dbg !135
  ret i32 %54, !dbg !135
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !136 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !146, metadata !DIExpression()), !dbg !147
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !148, metadata !DIExpression()), !dbg !149
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i8** %8, metadata !152, metadata !DIExpression()), !dbg !153
  %10 = load i8*, i8** %5, align 8, !dbg !154
  store i8* %10, i8** %8, align 8, !dbg !153
  call void @llvm.dbg.declare(metadata i8** %9, metadata !155, metadata !DIExpression()), !dbg !158
  %11 = load i8*, i8** %6, align 8, !dbg !159
  store i8* %11, i8** %9, align 8, !dbg !158
  %12 = load i8*, i8** %6, align 8, !dbg !160
  %13 = load i8*, i8** %5, align 8, !dbg !162
  %14 = icmp eq i8* %12, %13, !dbg !163
  br i1 %14, label %15, label %17, !dbg !164

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !165
  store i8* %16, i8** %4, align 8, !dbg !166
  br label %52, !dbg !166

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !167
  %19 = load i8*, i8** %5, align 8, !dbg !169
  %20 = icmp ugt i8* %18, %19, !dbg !170
  br i1 %20, label %21, label %31, !dbg !171

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !172
  %23 = add i64 %22, -1, !dbg !172
  store i64 %23, i64* %7, align 8, !dbg !172
  %24 = icmp ne i64 %22, 0, !dbg !174
  br i1 %24, label %25, label %50, !dbg !174

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !175
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !175
  store i8* %27, i8** %9, align 8, !dbg !175
  %28 = load i8, i8* %26, align 1, !dbg !176
  %29 = load i8*, i8** %8, align 8, !dbg !177
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !177
  store i8* %30, i8** %8, align 8, !dbg !177
  store i8 %28, i8* %29, align 1, !dbg !178
  br label %21, !dbg !174, !llvm.loop !179

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !180
  %33 = sub i64 %32, 1, !dbg !182
  %34 = load i8*, i8** %8, align 8, !dbg !183
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !183
  store i8* %35, i8** %8, align 8, !dbg !183
  %36 = load i64, i64* %7, align 8, !dbg !184
  %37 = sub i64 %36, 1, !dbg !185
  %38 = load i8*, i8** %9, align 8, !dbg !186
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !186
  store i8* %39, i8** %9, align 8, !dbg !186
  br label %40, !dbg !187

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !188
  %42 = add i64 %41, -1, !dbg !188
  store i64 %42, i64* %7, align 8, !dbg !188
  %43 = icmp ne i64 %41, 0, !dbg !187
  br i1 %43, label %44, label %50, !dbg !187

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !189
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !189
  store i8* %46, i8** %9, align 8, !dbg !189
  %47 = load i8, i8* %45, align 1, !dbg !190
  %48 = load i8*, i8** %8, align 8, !dbg !191
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !191
  store i8* %49, i8** %8, align 8, !dbg !191
  store i8 %47, i8* %48, align 1, !dbg !192
  br label %40, !dbg !187, !llvm.loop !193

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !194
  store i8* %51, i8** %4, align 8, !dbg !195
  br label %52, !dbg !195

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !196
  ret i8* %53, !dbg !196
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !197 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !201, metadata !DIExpression()), !dbg !202
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !203, metadata !DIExpression()), !dbg !204
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !205, metadata !DIExpression()), !dbg !206
  call void @llvm.dbg.declare(metadata i8** %7, metadata !207, metadata !DIExpression()), !dbg !208
  %8 = load i8*, i8** %4, align 8, !dbg !209
  store i8* %8, i8** %7, align 8, !dbg !208
  br label %9, !dbg !210

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !211
  %11 = add i64 %10, -1, !dbg !211
  store i64 %11, i64* %6, align 8, !dbg !211
  %12 = icmp ugt i64 %10, 0, !dbg !212
  br i1 %12, label %13, label %18, !dbg !210

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !213
  %15 = trunc i32 %14 to i8, !dbg !213
  %16 = load i8*, i8** %7, align 8, !dbg !214
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !214
  store i8* %17, i8** %7, align 8, !dbg !214
  store i8 %15, i8* %16, align 1, !dbg !215
  br label %9, !dbg !210, !llvm.loop !216

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !217
  ret i8* %19, !dbg !218
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/284_xmlschemastypes.c_6061_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "2573eaa8b639ecd5aff581d9ee6cc81e")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlSchemaInitTypes", scope: !1, file: !1, line: 16, type: !18, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!18 = !DISubroutineType(types: !19)
!19 = !{null}
!20 = !{}
!21 = !DILocation(line: 19, column: 1, scope: !17)
!22 = distinct !DISubprogram(name: "xmlSchemaValDecimalNormalize", scope: !1, file: !1, line: 22, type: !23, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25}
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValDecimal", file: !1, line: 13, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaValDecimal", file: !1, line: 10, size: 128, elements: !28)
!28 = !{!29, !31}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !27, file: !1, line: 11, baseType: !30, size: 32)
!30 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!31 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !27, file: !1, line: 12, baseType: !3, size: 64, offset: 64)
!32 = !DILocalVariable(name: "dec", arg: 1, scope: !22, file: !1, line: 22, type: !25)
!33 = !DILocation(line: 22, column: 56, scope: !22)
!34 = !DILocation(line: 23, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !22, file: !1, line: 23, column: 9)
!36 = !DILocation(line: 23, column: 13, scope: !35)
!37 = !DILocation(line: 23, column: 16, scope: !35)
!38 = !DILocation(line: 23, column: 21, scope: !35)
!39 = !DILocation(line: 23, column: 9, scope: !22)
!40 = !DILocalVariable(name: "i", scope: !41, file: !1, line: 24, type: !30)
!41 = distinct !DILexicalBlock(scope: !35, file: !1, line: 23, column: 27)
!42 = !DILocation(line: 24, column: 13, scope: !41)
!43 = !DILocation(line: 26, column: 9, scope: !41)
!44 = !DILocation(line: 26, column: 18, scope: !41)
!45 = !DILocation(line: 26, column: 23, scope: !41)
!46 = !DILocation(line: 26, column: 30, scope: !41)
!47 = !DILocation(line: 26, column: 28, scope: !41)
!48 = !DILocation(line: 26, column: 16, scope: !41)
!49 = !DILocation(line: 26, column: 33, scope: !41)
!50 = !DILocation(line: 27, column: 14, scope: !41)
!51 = distinct !{!51, !43, !50, !52}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !DILocation(line: 29, column: 13, scope: !54)
!54 = distinct !DILexicalBlock(scope: !41, file: !1, line: 29, column: 13)
!55 = !DILocation(line: 29, column: 17, scope: !54)
!56 = !DILocation(line: 29, column: 22, scope: !54)
!57 = !DILocation(line: 29, column: 15, scope: !54)
!58 = !DILocation(line: 29, column: 13, scope: !41)
!59 = !DILocation(line: 38, column: 13, scope: !60)
!60 = distinct !DILexicalBlock(scope: !54, file: !1, line: 29, column: 29)
!61 = !DILocation(line: 41, column: 13, scope: !60)
!62 = !DILocation(line: 44, column: 21, scope: !60)
!63 = !DILocation(line: 44, column: 26, scope: !60)
!64 = !DILocation(line: 44, column: 34, scope: !60)
!65 = !DILocation(line: 44, column: 39, scope: !60)
!66 = !DILocation(line: 44, column: 47, scope: !60)
!67 = !DILocation(line: 44, column: 45, scope: !60)
!68 = !DILocation(line: 44, column: 31, scope: !60)
!69 = !DILocation(line: 44, column: 51, scope: !60)
!70 = !DILocation(line: 44, column: 56, scope: !60)
!71 = !DILocation(line: 44, column: 62, scope: !60)
!72 = !DILocation(line: 44, column: 64, scope: !60)
!73 = !DILocation(line: 44, column: 13, scope: !60)
!74 = !DILocation(line: 45, column: 20, scope: !60)
!75 = !DILocation(line: 45, column: 25, scope: !60)
!76 = !DILocation(line: 45, column: 36, scope: !60)
!77 = !DILocation(line: 45, column: 41, scope: !60)
!78 = !DILocation(line: 45, column: 49, scope: !60)
!79 = !DILocation(line: 45, column: 47, scope: !60)
!80 = !DILocation(line: 45, column: 13, scope: !60)
!81 = !DILocation(line: 46, column: 9, scope: !60)
!82 = !DILocation(line: 47, column: 5, scope: !41)
!83 = !DILocation(line: 48, column: 1, scope: !22)
!84 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !85, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!85 = !DISubroutineType(types: !86)
!86 = !{!30}
!87 = !DILocalVariable(name: "dec", scope: !84, file: !1, line: 53, type: !26)
!88 = !DILocation(line: 53, column: 25, scope: !84)
!89 = !DILocation(line: 56, column: 29, scope: !84)
!90 = !DILocation(line: 56, column: 24, scope: !84)
!91 = !DILocation(line: 56, column: 5, scope: !84)
!92 = !DILocation(line: 58, column: 21, scope: !84)
!93 = !DILocation(line: 58, column: 27, scope: !84)
!94 = !DILocation(line: 58, column: 32, scope: !84)
!95 = !DILocation(line: 58, column: 39, scope: !84)
!96 = !DILocation(line: 58, column: 45, scope: !84)
!97 = !DILocation(line: 0, scope: !84)
!98 = !DILocation(line: 58, column: 17, scope: !84)
!99 = !DILocation(line: 58, column: 5, scope: !84)
!100 = !DILocation(line: 61, column: 34, scope: !84)
!101 = !DILocation(line: 61, column: 40, scope: !84)
!102 = !DILocation(line: 61, column: 30, scope: !84)
!103 = !DILocation(line: 61, column: 23, scope: !84)
!104 = !DILocation(line: 61, column: 9, scope: !84)
!105 = !DILocation(line: 61, column: 14, scope: !84)
!106 = !DILocation(line: 62, column: 14, scope: !107)
!107 = distinct !DILexicalBlock(scope: !84, file: !1, line: 62, column: 9)
!108 = !DILocation(line: 62, column: 10, scope: !107)
!109 = !DILocation(line: 62, column: 9, scope: !84)
!110 = !DILocation(line: 62, column: 20, scope: !107)
!111 = !DILocation(line: 65, column: 28, scope: !84)
!112 = !DILocation(line: 65, column: 38, scope: !84)
!113 = !DILocation(line: 65, column: 44, scope: !84)
!114 = !DILocation(line: 65, column: 34, scope: !84)
!115 = !DILocation(line: 65, column: 5, scope: !84)
!116 = !DILocalVariable(name: "null_pos", scope: !84, file: !1, line: 68, type: !30)
!117 = !DILocation(line: 68, column: 9, scope: !84)
!118 = !DILocation(line: 69, column: 24, scope: !84)
!119 = !DILocation(line: 69, column: 5, scope: !84)
!120 = !DILocation(line: 70, column: 17, scope: !84)
!121 = !DILocation(line: 70, column: 26, scope: !84)
!122 = !DILocation(line: 70, column: 31, scope: !84)
!123 = !DILocation(line: 70, column: 34, scope: !84)
!124 = !DILocation(line: 70, column: 49, scope: !84)
!125 = !DILocation(line: 70, column: 43, scope: !84)
!126 = !DILocation(line: 70, column: 5, scope: !84)
!127 = !DILocation(line: 71, column: 9, scope: !84)
!128 = !DILocation(line: 71, column: 14, scope: !84)
!129 = !DILocation(line: 71, column: 5, scope: !84)
!130 = !DILocation(line: 71, column: 24, scope: !84)
!131 = !DILocation(line: 74, column: 5, scope: !84)
!132 = !DILocation(line: 77, column: 14, scope: !84)
!133 = !DILocation(line: 77, column: 5, scope: !84)
!134 = !DILocation(line: 79, column: 5, scope: !84)
!135 = !DILocation(line: 80, column: 1, scope: !84)
!136 = distinct !DISubprogram(name: "memmove", scope: !137, file: !137, line: 12, type: !138, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !20)
!137 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!138 = !DISubroutineType(types: !139)
!139 = !{!140, !140, !141, !143}
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 46, baseType: !145)
!144 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!145 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!146 = !DILocalVariable(name: "dst", arg: 1, scope: !136, file: !137, line: 12, type: !140)
!147 = !DILocation(line: 12, column: 21, scope: !136)
!148 = !DILocalVariable(name: "src", arg: 2, scope: !136, file: !137, line: 12, type: !141)
!149 = !DILocation(line: 12, column: 38, scope: !136)
!150 = !DILocalVariable(name: "count", arg: 3, scope: !136, file: !137, line: 12, type: !143)
!151 = !DILocation(line: 12, column: 50, scope: !136)
!152 = !DILocalVariable(name: "a", scope: !136, file: !137, line: 13, type: !3)
!153 = !DILocation(line: 13, column: 9, scope: !136)
!154 = !DILocation(line: 13, column: 13, scope: !136)
!155 = !DILocalVariable(name: "b", scope: !136, file: !137, line: 14, type: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!158 = !DILocation(line: 14, column: 15, scope: !136)
!159 = !DILocation(line: 14, column: 19, scope: !136)
!160 = !DILocation(line: 16, column: 7, scope: !161)
!161 = distinct !DILexicalBlock(scope: !136, file: !137, line: 16, column: 7)
!162 = !DILocation(line: 16, column: 14, scope: !161)
!163 = !DILocation(line: 16, column: 11, scope: !161)
!164 = !DILocation(line: 16, column: 7, scope: !136)
!165 = !DILocation(line: 17, column: 12, scope: !161)
!166 = !DILocation(line: 17, column: 5, scope: !161)
!167 = !DILocation(line: 19, column: 7, scope: !168)
!168 = distinct !DILexicalBlock(scope: !136, file: !137, line: 19, column: 7)
!169 = !DILocation(line: 19, column: 13, scope: !168)
!170 = !DILocation(line: 19, column: 11, scope: !168)
!171 = !DILocation(line: 19, column: 7, scope: !136)
!172 = !DILocation(line: 20, column: 17, scope: !173)
!173 = distinct !DILexicalBlock(scope: !168, file: !137, line: 19, column: 18)
!174 = !DILocation(line: 20, column: 5, scope: !173)
!175 = !DILocation(line: 21, column: 16, scope: !173)
!176 = !DILocation(line: 21, column: 14, scope: !173)
!177 = !DILocation(line: 21, column: 9, scope: !173)
!178 = !DILocation(line: 21, column: 12, scope: !173)
!179 = distinct !{!179, !174, !175, !52}
!180 = !DILocation(line: 23, column: 10, scope: !181)
!181 = distinct !DILexicalBlock(scope: !168, file: !137, line: 22, column: 10)
!182 = !DILocation(line: 23, column: 16, scope: !181)
!183 = !DILocation(line: 23, column: 7, scope: !181)
!184 = !DILocation(line: 24, column: 10, scope: !181)
!185 = !DILocation(line: 24, column: 16, scope: !181)
!186 = !DILocation(line: 24, column: 7, scope: !181)
!187 = !DILocation(line: 25, column: 5, scope: !181)
!188 = !DILocation(line: 25, column: 17, scope: !181)
!189 = !DILocation(line: 26, column: 16, scope: !181)
!190 = !DILocation(line: 26, column: 14, scope: !181)
!191 = !DILocation(line: 26, column: 9, scope: !181)
!192 = !DILocation(line: 26, column: 12, scope: !181)
!193 = distinct !{!193, !187, !189, !52}
!194 = !DILocation(line: 29, column: 10, scope: !136)
!195 = !DILocation(line: 29, column: 3, scope: !136)
!196 = !DILocation(line: 30, column: 1, scope: !136)
!197 = distinct !DISubprogram(name: "memset", scope: !198, file: !198, line: 12, type: !199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !20)
!198 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!199 = !DISubroutineType(types: !200)
!200 = !{!140, !140, !30, !143}
!201 = !DILocalVariable(name: "dst", arg: 1, scope: !197, file: !198, line: 12, type: !140)
!202 = !DILocation(line: 12, column: 20, scope: !197)
!203 = !DILocalVariable(name: "s", arg: 2, scope: !197, file: !198, line: 12, type: !30)
!204 = !DILocation(line: 12, column: 29, scope: !197)
!205 = !DILocalVariable(name: "count", arg: 3, scope: !197, file: !198, line: 12, type: !143)
!206 = !DILocation(line: 12, column: 39, scope: !197)
!207 = !DILocalVariable(name: "a", scope: !197, file: !198, line: 13, type: !3)
!208 = !DILocation(line: 13, column: 9, scope: !197)
!209 = !DILocation(line: 13, column: 13, scope: !197)
!210 = !DILocation(line: 14, column: 3, scope: !197)
!211 = !DILocation(line: 14, column: 15, scope: !197)
!212 = !DILocation(line: 14, column: 18, scope: !197)
!213 = !DILocation(line: 15, column: 12, scope: !197)
!214 = !DILocation(line: 15, column: 7, scope: !197)
!215 = !DILocation(line: 15, column: 10, scope: !197)
!216 = distinct !{!216, !210, !213, !52}
!217 = !DILocation(line: 16, column: 10, scope: !197)
!218 = !DILocation(line: 16, column: 3, scope: !197)

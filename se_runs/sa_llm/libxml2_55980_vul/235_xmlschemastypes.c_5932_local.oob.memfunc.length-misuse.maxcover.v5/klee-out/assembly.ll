; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/235_xmlschemastypes.c_5932_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/235_xmlschemastypes.c_5932_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaDecimal = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dec_total\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"null_pos\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [65 x i8] c"(dec.total - i <= (buf + bufsize) - offs) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/235_xmlschemastypes.c_5932_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSchemaDecimalNormalize = private unnamed_addr constant [62 x i8] c"void xmlSchemaDecimalNormalize(char *, int, xmlSchemaDecimal)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.xmlSchemaDecimal, align 4
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i8** %3, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaDecimal* %4, metadata !26, metadata !DIExpression()), !dbg !31
  %6 = bitcast i32* %2 to i8*, !dbg !32
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !33
  %7 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !34
  %8 = bitcast i32* %7 to i8*, !dbg !35
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !36
  %9 = load i32, i32* %2, align 4, !dbg !37
  %10 = icmp sgt i32 %9, 0, !dbg !38
  br i1 %10, label %11, label %14, !dbg !39

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !40
  %13 = icmp sle i32 %12, 1024, !dbg !41
  br label %14

14:                                               ; preds = %11, %0
  %15 = phi i1 [ false, %0 ], [ %13, %11 ], !dbg !42
  %16 = zext i1 %15 to i32, !dbg !39
  %17 = sext i32 %16 to i64, !dbg !37
  call void @klee_assume(i64 noundef %17), !dbg !43
  %18 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !44
  %19 = load i32, i32* %18, align 4, !dbg !44
  %20 = icmp sgt i32 %19, 0, !dbg !45
  br i1 %20, label %21, label %25, !dbg !46

21:                                               ; preds = %14
  %22 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !47
  %23 = load i32, i32* %22, align 4, !dbg !47
  %24 = icmp sle i32 %23, 100, !dbg !48
  br label %25

25:                                               ; preds = %21, %14
  %26 = phi i1 [ false, %14 ], [ %24, %21 ], !dbg !42
  %27 = zext i1 %26 to i32, !dbg !46
  %28 = sext i32 %27 to i64, !dbg !49
  call void @klee_assume(i64 noundef %28), !dbg !50
  %29 = load i32, i32* %2, align 4, !dbg !51
  %30 = sext i32 %29 to i64, !dbg !51
  %31 = call noalias i8* @malloc(i64 noundef %30) #8, !dbg !52
  store i8* %31, i8** %3, align 8, !dbg !53
  %32 = load i8*, i8** %3, align 8, !dbg !54
  %33 = icmp ne i8* %32, null, !dbg !54
  br i1 %33, label %35, label %34, !dbg !56

34:                                               ; preds = %25
  store i32 0, i32* %1, align 4, !dbg !57
  br label %63, !dbg !57

35:                                               ; preds = %25
  %36 = load i8*, i8** %3, align 8, !dbg !58
  %37 = load i32, i32* %2, align 4, !dbg !59
  %38 = sext i32 %37 to i64, !dbg !59
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef %38, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %5, metadata !61, metadata !DIExpression()), !dbg !62
  %39 = bitcast i32* %5 to i8*, !dbg !63
  call void @klee_make_symbolic(i8* noundef %39, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !64
  %40 = load i32, i32* %5, align 4, !dbg !65
  %41 = icmp sge i32 %40, 0, !dbg !66
  br i1 %41, label %42, label %47, !dbg !67

42:                                               ; preds = %35
  %43 = load i32, i32* %5, align 4, !dbg !68
  %44 = load i32, i32* %2, align 4, !dbg !69
  %45 = sub nsw i32 %44, 10, !dbg !70
  %46 = icmp slt i32 %43, %45, !dbg !71
  br label %47

47:                                               ; preds = %42, %35
  %48 = phi i1 [ false, %35 ], [ %46, %42 ], !dbg !42
  %49 = zext i1 %48 to i32, !dbg !67
  %50 = sext i32 %49 to i64, !dbg !65
  call void @klee_assume(i64 noundef %50), !dbg !72
  %51 = load i8*, i8** %3, align 8, !dbg !73
  %52 = load i32, i32* %2, align 4, !dbg !74
  %53 = sub nsw i32 %52, 10, !dbg !75
  %54 = load i32, i32* %5, align 4, !dbg !76
  %55 = add nsw i32 %53, %54, !dbg !77
  %56 = sext i32 %55 to i64, !dbg !73
  %57 = getelementptr inbounds i8, i8* %51, i64 %56, !dbg !73
  store i8 0, i8* %57, align 1, !dbg !78
  %58 = load i8*, i8** %3, align 8, !dbg !79
  %59 = load i32, i32* %2, align 4, !dbg !80
  %60 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !81
  %61 = load i32, i32* %60, align 4, !dbg !81
  call void @xmlSchemaDecimalNormalize(i8* noundef %58, i32 noundef %59, i32 %61), !dbg !81
  %62 = load i8*, i8** %3, align 8, !dbg !82
  call void @free(i8* noundef %62) #8, !dbg !83
  store i32 0, i32* %1, align 4, !dbg !84
  br label %63, !dbg !84

63:                                               ; preds = %47, %34
  %64 = load i32, i32* %1, align 4, !dbg !85
  ret i32 %64, !dbg !85
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlSchemaDecimalNormalize(i8* noundef %0, i32 noundef %1, i32 %2) #0 !dbg !86 {
  %4 = alloca %struct.xmlSchemaDecimal, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0
  store i32 %2, i32* %9, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !89, metadata !DIExpression()), !dbg !90
  store i32 %1, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaDecimal* %4, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata i8** %7, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %8, metadata !97, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %8, align 4, !dbg !99
  %10 = load i8*, i8** %5, align 8, !dbg !100
  %11 = load i32, i32* %6, align 4, !dbg !101
  %12 = sext i32 %11 to i64, !dbg !102
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !102
  %14 = getelementptr inbounds i8, i8* %13, i64 -10, !dbg !103
  store i8* %14, i8** %7, align 8, !dbg !104
  br label %15, !dbg !105

15:                                               ; preds = %23, %3
  %16 = load i8*, i8** %7, align 8, !dbg !106
  %17 = load i32, i32* %8, align 4, !dbg !107
  %18 = zext i32 %17 to i64, !dbg !108
  %19 = getelementptr inbounds i8, i8* %16, i64 %18, !dbg !108
  %20 = load i8, i8* %19, align 1, !dbg !109
  %21 = sext i8 %20 to i32, !dbg !109
  %22 = icmp ne i32 %21, 0, !dbg !110
  br i1 %22, label %23, label %26, !dbg !105

23:                                               ; preds = %15
  %24 = load i32, i32* %8, align 4, !dbg !111
  %25 = add i32 %24, 1, !dbg !111
  store i32 %25, i32* %8, align 4, !dbg !111
  br label %15, !dbg !105, !llvm.loop !112

26:                                               ; preds = %15
  %27 = load i32, i32* %8, align 4, !dbg !114
  %28 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !116
  %29 = load i32, i32* %28, align 4, !dbg !116
  %30 = icmp ult i32 %27, %29, !dbg !117
  br i1 %30, label %31, label %71, !dbg !118

31:                                               ; preds = %26
  %32 = load i8*, i8** %7, align 8, !dbg !119
  %33 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !121
  %34 = load i32, i32* %33, align 4, !dbg !121
  %35 = load i32, i32* %8, align 4, !dbg !122
  %36 = sub i32 %34, %35, !dbg !123
  %37 = zext i32 %36 to i64, !dbg !124
  %38 = getelementptr inbounds i8, i8* %32, i64 %37, !dbg !124
  %39 = load i8*, i8** %7, align 8, !dbg !125
  %40 = load i32, i32* %8, align 4, !dbg !126
  %41 = add i32 %40, 1, !dbg !127
  %42 = zext i32 %41 to i64, !dbg !126
  %43 = call i8* @memmove(i8* %38, i8* %39, i64 %42), !dbg !128
  %44 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !129
  %45 = load i32, i32* %44, align 4, !dbg !129
  %46 = load i32, i32* %8, align 4, !dbg !129
  %47 = sub i32 %45, %46, !dbg !129
  %48 = zext i32 %47 to i64, !dbg !129
  %49 = load i8*, i8** %5, align 8, !dbg !129
  %50 = load i32, i32* %6, align 4, !dbg !129
  %51 = sext i32 %50 to i64, !dbg !129
  %52 = getelementptr inbounds i8, i8* %49, i64 %51, !dbg !129
  %53 = load i8*, i8** %7, align 8, !dbg !129
  %54 = ptrtoint i8* %52 to i64, !dbg !129
  %55 = ptrtoint i8* %53 to i64, !dbg !129
  %56 = sub i64 %54, %55, !dbg !129
  %57 = icmp sle i64 %48, %56, !dbg !129
  br i1 %57, label %58, label %60, !dbg !129

58:                                               ; preds = %31
  br i1 true, label %59, label %60, !dbg !129

59:                                               ; preds = %58
  br label %62, !dbg !129

60:                                               ; preds = %58, %31
  %61 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([65 x i8], [65 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.6, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSchemaDecimalNormalize, i64 0, i64 0)), !dbg !129
  br label %62, !dbg !129

62:                                               ; preds = %60, %59
  %63 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.6, i64 0, i64 0), i32 noundef 34, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSchemaDecimalNormalize, i64 0, i64 0)), !dbg !130
  %64 = load i8*, i8** %7, align 8, !dbg !131
  %65 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 0, !dbg !132
  %66 = load i32, i32* %65, align 4, !dbg !132
  %67 = load i32, i32* %8, align 4, !dbg !133
  %68 = sub i32 %66, %67, !dbg !134
  %69 = zext i32 %68 to i64, !dbg !135
  %70 = call i8* @memset(i8* %64, i32 48, i64 %69), !dbg !136
  br label %71, !dbg !137

71:                                               ; preds = %62, %26
  ret void, !dbg !138
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !139 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !149, metadata !DIExpression()), !dbg !150
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %8, metadata !155, metadata !DIExpression()), !dbg !156
  %10 = load i8*, i8** %5, align 8, !dbg !157
  store i8* %10, i8** %8, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i8** %9, metadata !158, metadata !DIExpression()), !dbg !161
  %11 = load i8*, i8** %6, align 8, !dbg !162
  store i8* %11, i8** %9, align 8, !dbg !161
  %12 = load i8*, i8** %6, align 8, !dbg !163
  %13 = load i8*, i8** %5, align 8, !dbg !165
  %14 = icmp eq i8* %12, %13, !dbg !166
  br i1 %14, label %15, label %17, !dbg !167

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !168
  store i8* %16, i8** %4, align 8, !dbg !169
  br label %52, !dbg !169

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !170
  %19 = load i8*, i8** %5, align 8, !dbg !172
  %20 = icmp ugt i8* %18, %19, !dbg !173
  br i1 %20, label %21, label %31, !dbg !174

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !175
  %23 = add i64 %22, -1, !dbg !175
  store i64 %23, i64* %7, align 8, !dbg !175
  %24 = icmp ne i64 %22, 0, !dbg !177
  br i1 %24, label %25, label %50, !dbg !177

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !178
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !178
  store i8* %27, i8** %9, align 8, !dbg !178
  %28 = load i8, i8* %26, align 1, !dbg !179
  %29 = load i8*, i8** %8, align 8, !dbg !180
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !180
  store i8* %30, i8** %8, align 8, !dbg !180
  store i8 %28, i8* %29, align 1, !dbg !181
  br label %21, !dbg !177, !llvm.loop !182

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !183
  %33 = sub i64 %32, 1, !dbg !185
  %34 = load i8*, i8** %8, align 8, !dbg !186
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !186
  store i8* %35, i8** %8, align 8, !dbg !186
  %36 = load i64, i64* %7, align 8, !dbg !187
  %37 = sub i64 %36, 1, !dbg !188
  %38 = load i8*, i8** %9, align 8, !dbg !189
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !189
  store i8* %39, i8** %9, align 8, !dbg !189
  br label %40, !dbg !190

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !191
  %42 = add i64 %41, -1, !dbg !191
  store i64 %42, i64* %7, align 8, !dbg !191
  %43 = icmp ne i64 %41, 0, !dbg !190
  br i1 %43, label %44, label %50, !dbg !190

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !192
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !192
  store i8* %46, i8** %9, align 8, !dbg !192
  %47 = load i8, i8* %45, align 1, !dbg !193
  %48 = load i8*, i8** %8, align 8, !dbg !194
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !194
  store i8* %49, i8** %8, align 8, !dbg !194
  store i8 %47, i8* %48, align 1, !dbg !195
  br label %40, !dbg !190, !llvm.loop !196

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !197
  store i8* %51, i8** %4, align 8, !dbg !198
  br label %52, !dbg !198

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %53, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !200 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !206, metadata !DIExpression()), !dbg !207
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i8** %7, metadata !210, metadata !DIExpression()), !dbg !211
  %8 = load i8*, i8** %4, align 8, !dbg !212
  store i8* %8, i8** %7, align 8, !dbg !211
  br label %9, !dbg !213

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !214
  %11 = add i64 %10, -1, !dbg !214
  store i64 %11, i64* %6, align 8, !dbg !214
  %12 = icmp ugt i64 %10, 0, !dbg !215
  br i1 %12, label %13, label %18, !dbg !213

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !216
  %15 = trunc i32 %14 to i8, !dbg !216
  %16 = load i8*, i8** %7, align 8, !dbg !217
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !217
  store i8* %17, i8** %7, align 8, !dbg !217
  store i8 %15, i8* %16, align 1, !dbg !218
  br label %9, !dbg !213, !llvm.loop !219

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !220
  ret i8* %19, !dbg !221
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !5, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/235_xmlschemastypes.c_5932_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "24304ece1441094d3cc69149c0760c80")
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
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !18, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "bufsize", scope: !17, file: !1, line: 42, type: !20)
!23 = !DILocation(line: 42, column: 9, scope: !17)
!24 = !DILocalVariable(name: "buf", scope: !17, file: !1, line: 43, type: !3)
!25 = !DILocation(line: 43, column: 11, scope: !17)
!26 = !DILocalVariable(name: "dec", scope: !17, file: !1, line: 44, type: !27)
!27 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaDecimal", file: !1, line: 12, baseType: !28)
!28 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 32, elements: !29)
!29 = !{!30}
!30 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !28, file: !1, line: 11, baseType: !20, size: 32)
!31 = !DILocation(line: 44, column: 22, scope: !17)
!32 = !DILocation(line: 47, column: 24, scope: !17)
!33 = !DILocation(line: 47, column: 5, scope: !17)
!34 = !DILocation(line: 48, column: 29, scope: !17)
!35 = !DILocation(line: 48, column: 24, scope: !17)
!36 = !DILocation(line: 48, column: 5, scope: !17)
!37 = !DILocation(line: 51, column: 17, scope: !17)
!38 = !DILocation(line: 51, column: 25, scope: !17)
!39 = !DILocation(line: 51, column: 29, scope: !17)
!40 = !DILocation(line: 51, column: 32, scope: !17)
!41 = !DILocation(line: 51, column: 40, scope: !17)
!42 = !DILocation(line: 0, scope: !17)
!43 = !DILocation(line: 51, column: 5, scope: !17)
!44 = !DILocation(line: 52, column: 21, scope: !17)
!45 = !DILocation(line: 52, column: 27, scope: !17)
!46 = !DILocation(line: 52, column: 31, scope: !17)
!47 = !DILocation(line: 52, column: 38, scope: !17)
!48 = !DILocation(line: 52, column: 44, scope: !17)
!49 = !DILocation(line: 52, column: 17, scope: !17)
!50 = !DILocation(line: 52, column: 5, scope: !17)
!51 = !DILocation(line: 55, column: 26, scope: !17)
!52 = !DILocation(line: 55, column: 19, scope: !17)
!53 = !DILocation(line: 55, column: 9, scope: !17)
!54 = !DILocation(line: 56, column: 10, scope: !55)
!55 = distinct !DILexicalBlock(scope: !17, file: !1, line: 56, column: 9)
!56 = !DILocation(line: 56, column: 9, scope: !17)
!57 = !DILocation(line: 56, column: 15, scope: !55)
!58 = !DILocation(line: 59, column: 24, scope: !17)
!59 = !DILocation(line: 59, column: 29, scope: !17)
!60 = !DILocation(line: 59, column: 5, scope: !17)
!61 = !DILocalVariable(name: "null_pos", scope: !17, file: !1, line: 62, type: !20)
!62 = !DILocation(line: 62, column: 9, scope: !17)
!63 = !DILocation(line: 63, column: 24, scope: !17)
!64 = !DILocation(line: 63, column: 5, scope: !17)
!65 = !DILocation(line: 64, column: 17, scope: !17)
!66 = !DILocation(line: 64, column: 26, scope: !17)
!67 = !DILocation(line: 64, column: 31, scope: !17)
!68 = !DILocation(line: 64, column: 34, scope: !17)
!69 = !DILocation(line: 64, column: 45, scope: !17)
!70 = !DILocation(line: 64, column: 53, scope: !17)
!71 = !DILocation(line: 64, column: 43, scope: !17)
!72 = !DILocation(line: 64, column: 5, scope: !17)
!73 = !DILocation(line: 65, column: 5, scope: !17)
!74 = !DILocation(line: 65, column: 9, scope: !17)
!75 = !DILocation(line: 65, column: 17, scope: !17)
!76 = !DILocation(line: 65, column: 24, scope: !17)
!77 = !DILocation(line: 65, column: 22, scope: !17)
!78 = !DILocation(line: 65, column: 34, scope: !17)
!79 = !DILocation(line: 68, column: 31, scope: !17)
!80 = !DILocation(line: 68, column: 36, scope: !17)
!81 = !DILocation(line: 68, column: 5, scope: !17)
!82 = !DILocation(line: 70, column: 10, scope: !17)
!83 = !DILocation(line: 70, column: 5, scope: !17)
!84 = !DILocation(line: 71, column: 5, scope: !17)
!85 = !DILocation(line: 72, column: 1, scope: !17)
!86 = distinct !DISubprogram(name: "xmlSchemaDecimalNormalize", scope: !1, file: !1, line: 15, type: !87, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !21)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !3, !20, !27}
!89 = !DILocalVariable(name: "buf", arg: 1, scope: !86, file: !1, line: 15, type: !3)
!90 = !DILocation(line: 15, column: 45, scope: !86)
!91 = !DILocalVariable(name: "bufsize", arg: 2, scope: !86, file: !1, line: 15, type: !20)
!92 = !DILocation(line: 15, column: 54, scope: !86)
!93 = !DILocalVariable(name: "dec", arg: 3, scope: !86, file: !1, line: 15, type: !27)
!94 = !DILocation(line: 15, column: 80, scope: !86)
!95 = !DILocalVariable(name: "offs", scope: !86, file: !1, line: 16, type: !3)
!96 = !DILocation(line: 16, column: 11, scope: !86)
!97 = !DILocalVariable(name: "i", scope: !86, file: !1, line: 17, type: !98)
!98 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!99 = !DILocation(line: 17, column: 18, scope: !86)
!100 = !DILocation(line: 20, column: 12, scope: !86)
!101 = !DILocation(line: 20, column: 18, scope: !86)
!102 = !DILocation(line: 20, column: 16, scope: !86)
!103 = !DILocation(line: 20, column: 26, scope: !86)
!104 = !DILocation(line: 20, column: 10, scope: !86)
!105 = !DILocation(line: 23, column: 5, scope: !86)
!106 = !DILocation(line: 23, column: 14, scope: !86)
!107 = !DILocation(line: 23, column: 21, scope: !86)
!108 = !DILocation(line: 23, column: 19, scope: !86)
!109 = !DILocation(line: 23, column: 12, scope: !86)
!110 = !DILocation(line: 23, column: 24, scope: !86)
!111 = !DILocation(line: 24, column: 10, scope: !86)
!112 = distinct !{!112, !105, !111, !113}
!113 = !{!"llvm.loop.mustprogress"}
!114 = !DILocation(line: 26, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !86, file: !1, line: 26, column: 9)
!116 = !DILocation(line: 26, column: 17, scope: !115)
!117 = !DILocation(line: 26, column: 11, scope: !115)
!118 = !DILocation(line: 26, column: 9, scope: !86)
!119 = !DILocation(line: 28, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 26, column: 24)
!121 = !DILocation(line: 28, column: 29, scope: !120)
!122 = !DILocation(line: 28, column: 37, scope: !120)
!123 = !DILocation(line: 28, column: 35, scope: !120)
!124 = !DILocation(line: 28, column: 22, scope: !120)
!125 = !DILocation(line: 28, column: 41, scope: !120)
!126 = !DILocation(line: 28, column: 47, scope: !120)
!127 = !DILocation(line: 28, column: 49, scope: !120)
!128 = !DILocation(line: 28, column: 9, scope: !120)
!129 = !DILocation(line: 31, column: 9, scope: !120)
!130 = !DILocation(line: 34, column: 9, scope: !120)
!131 = !DILocation(line: 36, column: 16, scope: !120)
!132 = !DILocation(line: 36, column: 31, scope: !120)
!133 = !DILocation(line: 36, column: 39, scope: !120)
!134 = !DILocation(line: 36, column: 37, scope: !120)
!135 = !DILocation(line: 36, column: 27, scope: !120)
!136 = !DILocation(line: 36, column: 9, scope: !120)
!137 = !DILocation(line: 37, column: 5, scope: !120)
!138 = !DILocation(line: 38, column: 1, scope: !86)
!139 = distinct !DISubprogram(name: "memmove", scope: !140, file: !140, line: 12, type: !141, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !21)
!140 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !143, !144, !146}
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DILocalVariable(name: "dst", arg: 1, scope: !139, file: !140, line: 12, type: !143)
!150 = !DILocation(line: 12, column: 21, scope: !139)
!151 = !DILocalVariable(name: "src", arg: 2, scope: !139, file: !140, line: 12, type: !144)
!152 = !DILocation(line: 12, column: 38, scope: !139)
!153 = !DILocalVariable(name: "count", arg: 3, scope: !139, file: !140, line: 12, type: !146)
!154 = !DILocation(line: 12, column: 50, scope: !139)
!155 = !DILocalVariable(name: "a", scope: !139, file: !140, line: 13, type: !3)
!156 = !DILocation(line: 13, column: 9, scope: !139)
!157 = !DILocation(line: 13, column: 13, scope: !139)
!158 = !DILocalVariable(name: "b", scope: !139, file: !140, line: 14, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!161 = !DILocation(line: 14, column: 15, scope: !139)
!162 = !DILocation(line: 14, column: 19, scope: !139)
!163 = !DILocation(line: 16, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !139, file: !140, line: 16, column: 7)
!165 = !DILocation(line: 16, column: 14, scope: !164)
!166 = !DILocation(line: 16, column: 11, scope: !164)
!167 = !DILocation(line: 16, column: 7, scope: !139)
!168 = !DILocation(line: 17, column: 12, scope: !164)
!169 = !DILocation(line: 17, column: 5, scope: !164)
!170 = !DILocation(line: 19, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !139, file: !140, line: 19, column: 7)
!172 = !DILocation(line: 19, column: 13, scope: !171)
!173 = !DILocation(line: 19, column: 11, scope: !171)
!174 = !DILocation(line: 19, column: 7, scope: !139)
!175 = !DILocation(line: 20, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !140, line: 19, column: 18)
!177 = !DILocation(line: 20, column: 5, scope: !176)
!178 = !DILocation(line: 21, column: 16, scope: !176)
!179 = !DILocation(line: 21, column: 14, scope: !176)
!180 = !DILocation(line: 21, column: 9, scope: !176)
!181 = !DILocation(line: 21, column: 12, scope: !176)
!182 = distinct !{!182, !177, !178, !113}
!183 = !DILocation(line: 23, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !171, file: !140, line: 22, column: 10)
!185 = !DILocation(line: 23, column: 16, scope: !184)
!186 = !DILocation(line: 23, column: 7, scope: !184)
!187 = !DILocation(line: 24, column: 10, scope: !184)
!188 = !DILocation(line: 24, column: 16, scope: !184)
!189 = !DILocation(line: 24, column: 7, scope: !184)
!190 = !DILocation(line: 25, column: 5, scope: !184)
!191 = !DILocation(line: 25, column: 17, scope: !184)
!192 = !DILocation(line: 26, column: 16, scope: !184)
!193 = !DILocation(line: 26, column: 14, scope: !184)
!194 = !DILocation(line: 26, column: 9, scope: !184)
!195 = !DILocation(line: 26, column: 12, scope: !184)
!196 = distinct !{!196, !190, !192, !113}
!197 = !DILocation(line: 29, column: 10, scope: !139)
!198 = !DILocation(line: 29, column: 3, scope: !139)
!199 = !DILocation(line: 30, column: 1, scope: !139)
!200 = distinct !DISubprogram(name: "memset", scope: !201, file: !201, line: 12, type: !202, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !21)
!201 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!202 = !DISubroutineType(types: !203)
!203 = !{!143, !143, !20, !146}
!204 = !DILocalVariable(name: "dst", arg: 1, scope: !200, file: !201, line: 12, type: !143)
!205 = !DILocation(line: 12, column: 20, scope: !200)
!206 = !DILocalVariable(name: "s", arg: 2, scope: !200, file: !201, line: 12, type: !20)
!207 = !DILocation(line: 12, column: 29, scope: !200)
!208 = !DILocalVariable(name: "count", arg: 3, scope: !200, file: !201, line: 12, type: !146)
!209 = !DILocation(line: 12, column: 39, scope: !200)
!210 = !DILocalVariable(name: "a", scope: !200, file: !201, line: 13, type: !3)
!211 = !DILocation(line: 13, column: 9, scope: !200)
!212 = !DILocation(line: 13, column: 13, scope: !200)
!213 = !DILocation(line: 14, column: 3, scope: !200)
!214 = !DILocation(line: 14, column: 15, scope: !200)
!215 = !DILocation(line: 14, column: 18, scope: !200)
!216 = !DILocation(line: 15, column: 12, scope: !200)
!217 = !DILocation(line: 15, column: 7, scope: !200)
!218 = !DILocation(line: 15, column: 10, scope: !200)
!219 = distinct !{!219, !213, !216, !113}
!220 = !DILocation(line: 16, column: 10, scope: !200)
!221 = !DILocation(line: 16, column: 3, scope: !200)

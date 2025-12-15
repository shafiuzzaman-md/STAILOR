; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/227_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/227_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSaveCtxt = type { i8*, i8*, [100 x i8], i32, i32 }

@xmlEscapeEntities = dso_local global i8* null, align 8, !dbg !0
@xmlTreeIndentString = dso_local global i8* null, align 8, !dbg !24
@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_55980_vul/227_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlCtxtIndent = private unnamed_addr constant [34 x i8] c"void xmlCtxtIndent(xmlSaveCtxt *)\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"encoding_state\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"indentString\00", align 1
@.str.7 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.8 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.9 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlCtxtIndent(%struct._xmlSaveCtxt* noundef %0) #0 !dbg !40 {
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._xmlSaveCtxt* %0, %struct._xmlSaveCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !44, metadata !DIExpression()), !dbg !45
  call void @llvm.dbg.declare(metadata i32* %3, metadata !46, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %4, metadata !48, metadata !DIExpression()), !dbg !49
  %5 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !50
  %6 = icmp eq %struct._xmlSaveCtxt* %5, null, !dbg !52
  br i1 %6, label %7, label %8, !dbg !53

7:                                                ; preds = %1
  br label %83, !dbg !54

8:                                                ; preds = %1
  %9 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !55
  %10 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %9, i32 0, i32 0, !dbg !57
  %11 = load i8*, i8** %10, align 8, !dbg !57
  %12 = icmp eq i8* %11, null, !dbg !58
  br i1 %12, label %13, label %22, !dbg !59

13:                                               ; preds = %8
  %14 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !60
  %15 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %14, i32 0, i32 1, !dbg !61
  %16 = load i8*, i8** %15, align 8, !dbg !61
  %17 = icmp eq i8* %16, null, !dbg !62
  br i1 %17, label %18, label %22, !dbg !63

18:                                               ; preds = %13
  %19 = load i8*, i8** @xmlEscapeEntities, align 8, !dbg !64
  %20 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !65
  %21 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %20, i32 0, i32 1, !dbg !66
  store i8* %19, i8** %21, align 8, !dbg !67
  br label %22, !dbg !65

22:                                               ; preds = %18, %13, %8
  %23 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !68
  %24 = call i32 @xmlStrlen(i8* noundef %23), !dbg !69
  store i32 %24, i32* %4, align 4, !dbg !70
  %25 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !71
  %26 = icmp eq i8* %25, null, !dbg !73
  br i1 %26, label %30, label %27, !dbg !74

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4, !dbg !75
  %29 = icmp eq i32 %28, 0, !dbg !76
  br i1 %29, label %30, label %36, !dbg !77

30:                                               ; preds = %27, %22
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 noundef 39, i8* noundef getelementptr inbounds ([34 x i8], [34 x i8]* @__PRETTY_FUNCTION__.xmlCtxtIndent, i64 0, i64 0)), !dbg !78
  %32 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !80
  %33 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %32, i32 0, i32 2, !dbg !81
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %33, i64 0, i64 0, !dbg !80
  %35 = call i8* @memset(i8* %34, i32 0, i64 100), !dbg !82
  br label %83, !dbg !83

36:                                               ; preds = %27
  %37 = load i32, i32* %4, align 4, !dbg !84
  %38 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !86
  %39 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %38, i32 0, i32 3, !dbg !87
  store i32 %37, i32* %39, align 4, !dbg !88
  %40 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !89
  %41 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %40, i32 0, i32 3, !dbg !90
  %42 = load i32, i32* %41, align 4, !dbg !90
  %int_cast_to_i64 = zext i32 %42 to i64, !dbg !91
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !91
  %43 = sdiv i32 99, %42, !dbg !91, !klee.check.div !92
  %44 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !93
  %45 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %44, i32 0, i32 4, !dbg !94
  store i32 %43, i32* %45, align 8, !dbg !95
  store i32 0, i32* %3, align 4, !dbg !96
  br label %46, !dbg !98

46:                                               ; preds = %68, %36
  %47 = load i32, i32* %3, align 4, !dbg !99
  %48 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !101
  %49 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %48, i32 0, i32 4, !dbg !102
  %50 = load i32, i32* %49, align 8, !dbg !102
  %51 = icmp slt i32 %47, %50, !dbg !103
  br i1 %51, label %52, label %71, !dbg !104

52:                                               ; preds = %46
  %53 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !105
  %54 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %53, i32 0, i32 2, !dbg !106
  %55 = load i32, i32* %3, align 4, !dbg !107
  %56 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !108
  %57 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %56, i32 0, i32 3, !dbg !109
  %58 = load i32, i32* %57, align 4, !dbg !109
  %59 = mul nsw i32 %55, %58, !dbg !110
  %60 = sext i32 %59 to i64, !dbg !105
  %61 = getelementptr inbounds [100 x i8], [100 x i8]* %54, i64 0, i64 %60, !dbg !105
  %62 = load i8*, i8** @xmlTreeIndentString, align 8, !dbg !111
  %63 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !112
  %64 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %63, i32 0, i32 3, !dbg !113
  %65 = load i32, i32* %64, align 4, !dbg !113
  %66 = sext i32 %65 to i64, !dbg !112
  %67 = call i8* @memcpy(i8* %61, i8* %62, i64 %66), !dbg !114
  br label %68, !dbg !114

68:                                               ; preds = %52
  %69 = load i32, i32* %3, align 4, !dbg !115
  %70 = add nsw i32 %69, 1, !dbg !115
  store i32 %70, i32* %3, align 4, !dbg !115
  br label %46, !dbg !116, !llvm.loop !117

71:                                               ; preds = %46
  %72 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !120
  %73 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %72, i32 0, i32 2, !dbg !121
  %74 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !122
  %75 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %74, i32 0, i32 4, !dbg !123
  %76 = load i32, i32* %75, align 8, !dbg !123
  %77 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !124
  %78 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %77, i32 0, i32 3, !dbg !125
  %79 = load i32, i32* %78, align 4, !dbg !125
  %80 = mul nsw i32 %76, %79, !dbg !126
  %81 = sext i32 %80 to i64, !dbg !120
  %82 = getelementptr inbounds [100 x i8], [100 x i8]* %73, i64 0, i64 %81, !dbg !120
  store i8 0, i8* %82, align 1, !dbg !127
  br label %83

83:                                               ; preds = %7, %71, %30
  ret void, !dbg !128
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !129 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !132, metadata !DIExpression()), !dbg !133
  %4 = load i8*, i8** %3, align 8, !dbg !134
  %5 = icmp eq i8* %4, null, !dbg !136
  br i1 %5, label %6, label %7, !dbg !137

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !138
  br label %11, !dbg !138

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !139
  %9 = call i64 @strlen(i8* noundef %8) #9, !dbg !140
  %10 = trunc i64 %9 to i32, !dbg !140
  store i32 %10, i32* %2, align 4, !dbg !141
  br label %11, !dbg !141

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !142
  ret i32 %12, !dbg !142
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !143 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlSaveCtxt*, align 8
  %3 = alloca i8, align 1
  %4 = alloca [100 x i8], align 16
  %5 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlSaveCtxt** %2, metadata !146, metadata !DIExpression()), !dbg !147
  call void @llvm.dbg.declare(metadata i8* %3, metadata !148, metadata !DIExpression()), !dbg !149
  call void @llvm.dbg.declare(metadata [100 x i8]* %4, metadata !150, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %5, metadata !152, metadata !DIExpression()), !dbg !153
  %6 = call noalias i8* @malloc(i64 noundef 128) #10, !dbg !154
  %7 = bitcast i8* %6 to %struct._xmlSaveCtxt*, !dbg !155
  store %struct._xmlSaveCtxt* %7, %struct._xmlSaveCtxt** %2, align 8, !dbg !156
  %8 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !157
  %9 = icmp ne %struct._xmlSaveCtxt* %8, null, !dbg !158
  %10 = zext i1 %9 to i32, !dbg !158
  %11 = sext i32 %10 to i64, !dbg !157
  call void @klee_assume(i64 noundef %11), !dbg !159
  %12 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !160
  %13 = bitcast %struct._xmlSaveCtxt* %12 to i8*, !dbg !161
  %14 = call i8* @memset(i8* %13, i32 0, i64 128), !dbg !161
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 1, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0)), !dbg !162
  %15 = load i8, i8* %3, align 1, !dbg !163
  %16 = sext i8 %15 to i32, !dbg !163
  %17 = and i32 %16, 1, !dbg !165
  %18 = icmp ne i32 %17, 0, !dbg !165
  br i1 %18, label %19, label %29, !dbg !166

19:                                               ; preds = %0
  %20 = call noalias i8* @malloc(i64 noundef 10) #10, !dbg !167
  %21 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !169
  %22 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %21, i32 0, i32 0, !dbg !170
  store i8* %20, i8** %22, align 8, !dbg !171
  %23 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !172
  %24 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %23, i32 0, i32 0, !dbg !173
  %25 = load i8*, i8** %24, align 8, !dbg !173
  %26 = icmp ne i8* %25, null, !dbg !174
  %27 = zext i1 %26 to i32, !dbg !174
  %28 = sext i32 %27 to i64, !dbg !172
  call void @klee_assume(i64 noundef %28), !dbg !175
  br label %32, !dbg !176

29:                                               ; preds = %0
  %30 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !177
  %31 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %30, i32 0, i32 0, !dbg !179
  store i8* null, i8** %31, align 8, !dbg !180
  br label %32

32:                                               ; preds = %29, %19
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !181
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 100, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !182
  %34 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 99, !dbg !183
  store i8 0, i8* %34, align 1, !dbg !184
  %35 = getelementptr inbounds [100 x i8], [100 x i8]* %4, i64 0, i64 0, !dbg !185
  store i8* %35, i8** @xmlTreeIndentString, align 8, !dbg !186
  %36 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !187
  call void @xmlCtxtIndent(%struct._xmlSaveCtxt* noundef %36), !dbg !188
  %37 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !189
  %38 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %37, i32 0, i32 0, !dbg !191
  %39 = load i8*, i8** %38, align 8, !dbg !191
  %40 = icmp ne i8* %39, null, !dbg !189
  br i1 %40, label %41, label %45, !dbg !192

41:                                               ; preds = %32
  %42 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !193
  %43 = getelementptr inbounds %struct._xmlSaveCtxt, %struct._xmlSaveCtxt* %42, i32 0, i32 0, !dbg !194
  %44 = load i8*, i8** %43, align 8, !dbg !194
  call void @free(i8* noundef %44) #10, !dbg !195
  br label %45, !dbg !195

45:                                               ; preds = %41, %32
  %46 = load %struct._xmlSaveCtxt*, %struct._xmlSaveCtxt** %2, align 8, !dbg !196
  %47 = bitcast %struct._xmlSaveCtxt* %46 to i8*, !dbg !196
  call void @free(i8* noundef %47) #10, !dbg !197
  ret i32 0, !dbg !198
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #6

declare void @klee_assume(i64 noundef) #7

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !199 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !208, metadata !DIExpression()), !dbg !209
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %7, metadata !214, metadata !DIExpression()), !dbg !215
  %9 = load i8*, i8** %4, align 8, !dbg !216
  store i8* %9, i8** %7, align 8, !dbg !215
  call void @llvm.dbg.declare(metadata i8** %8, metadata !217, metadata !DIExpression()), !dbg !218
  %10 = load i8*, i8** %5, align 8, !dbg !219
  store i8* %10, i8** %8, align 8, !dbg !218
  br label %11, !dbg !220

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !221
  %13 = add i64 %12, -1, !dbg !221
  store i64 %13, i64* %6, align 8, !dbg !221
  %14 = icmp ugt i64 %12, 0, !dbg !222
  br i1 %14, label %15, label %21, !dbg !220

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !223
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !223
  store i8* %17, i8** %8, align 8, !dbg !223
  %18 = load i8, i8* %16, align 1, !dbg !224
  %19 = load i8*, i8** %7, align 8, !dbg !225
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !225
  store i8* %20, i8** %7, align 8, !dbg !225
  store i8 %18, i8* %19, align 1, !dbg !226
  br label %11, !dbg !220, !llvm.loop !227

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !228
  ret i8* %22, !dbg !229
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !230 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !234, metadata !DIExpression()), !dbg !235
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !236, metadata !DIExpression()), !dbg !237
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !238, metadata !DIExpression()), !dbg !239
  call void @llvm.dbg.declare(metadata i8** %7, metadata !240, metadata !DIExpression()), !dbg !241
  %8 = load i8*, i8** %4, align 8, !dbg !242
  store i8* %8, i8** %7, align 8, !dbg !241
  br label %9, !dbg !243

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !244
  %11 = add i64 %10, -1, !dbg !244
  store i64 %11, i64* %6, align 8, !dbg !244
  %12 = icmp ugt i64 %10, 0, !dbg !245
  br i1 %12, label %13, label %18, !dbg !243

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !246
  %15 = trunc i32 %14 to i8, !dbg !246
  %16 = load i8*, i8** %7, align 8, !dbg !247
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !247
  store i8* %17, i8** %7, align 8, !dbg !247
  store i8 %15, i8* %16, align 1, !dbg !248
  br label %9, !dbg !243, !llvm.loop !249

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !250
  ret i8* %19, !dbg !251
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #8 !dbg !252 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !257, metadata !DIExpression()), !dbg !258
  %3 = load i64, i64* %2, align 8, !dbg !259
  %4 = icmp eq i64 %3, 0, !dbg !261
  br i1 %4, label %5, label %6, !dbg !262

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.9, i64 0, i64 0)) #11, !dbg !263
  unreachable, !dbg !263

6:                                                ; preds = %1
  ret void, !dbg !264
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.dbg.cu = !{!2, !26, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39, !39, !39, !39}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlEscapeEntities", scope: !2, file: !3, line: 20, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !23, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/227_xmlsave.c_298_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a5b03284b0c63e2e1e062e33577a11db")
!4 = !{!5, !6, !9, !14}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSaveCtxt", file: !3, line: 16, baseType: !11)
!11 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSaveCtxt", file: !3, line: 10, size: 1024, elements: !12)
!12 = !{!13, !15, !16, !20, !22}
!13 = !DIDerivedType(tag: DW_TAG_member, name: "encoding", scope: !11, file: !3, line: 11, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "escape", scope: !11, file: !3, line: 12, baseType: !5, size: 64, offset: 64)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "indent", scope: !11, file: !3, line: 13, baseType: !17, size: 800, offset: 128)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 800, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 100)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "indent_size", scope: !11, file: !3, line: 14, baseType: !21, size: 32, offset: 928)
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "indent_nr", scope: !11, file: !3, line: 15, baseType: !21, size: 32, offset: 960)
!23 = !{!0, !24}
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "xmlTreeIndentString", scope: !2, file: !3, line: 23, type: !6, isLocal: false, isDefinition: true)
!26 = distinct !DICompileUnit(language: DW_LANG_C99, file: !27, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!27 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!28 = distinct !DICompileUnit(language: DW_LANG_C99, file: !29, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!29 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!30 = distinct !DICompileUnit(language: DW_LANG_C89, file: !31, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!31 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!32 = !{i32 7, !"Dwarf Version", i32 5}
!33 = !{i32 2, !"Debug Info Version", i32 3}
!34 = !{i32 1, !"wchar_size", i32 4}
!35 = !{i32 7, !"PIC Level", i32 2}
!36 = !{i32 7, !"PIE Level", i32 2}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"Ubuntu clang version 14.0.6"}
!40 = distinct !DISubprogram(name: "xmlCtxtIndent", scope: !3, file: !3, line: 26, type: !41, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !9}
!43 = !{}
!44 = !DILocalVariable(name: "ctxt", arg: 1, scope: !40, file: !3, line: 26, type: !9)
!45 = !DILocation(line: 26, column: 33, scope: !40)
!46 = !DILocalVariable(name: "i", scope: !40, file: !3, line: 27, type: !21)
!47 = !DILocation(line: 27, column: 9, scope: !40)
!48 = !DILocalVariable(name: "len", scope: !40, file: !3, line: 28, type: !21)
!49 = !DILocation(line: 28, column: 9, scope: !40)
!50 = !DILocation(line: 30, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !40, file: !3, line: 30, column: 9)
!52 = !DILocation(line: 30, column: 14, scope: !51)
!53 = !DILocation(line: 30, column: 9, scope: !40)
!54 = !DILocation(line: 30, column: 23, scope: !51)
!55 = !DILocation(line: 31, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !40, file: !3, line: 31, column: 9)
!57 = !DILocation(line: 31, column: 16, scope: !56)
!58 = !DILocation(line: 31, column: 25, scope: !56)
!59 = !DILocation(line: 31, column: 34, scope: !56)
!60 = !DILocation(line: 31, column: 38, scope: !56)
!61 = !DILocation(line: 31, column: 44, scope: !56)
!62 = !DILocation(line: 31, column: 51, scope: !56)
!63 = !DILocation(line: 31, column: 9, scope: !40)
!64 = !DILocation(line: 32, column: 24, scope: !56)
!65 = !DILocation(line: 32, column: 9, scope: !56)
!66 = !DILocation(line: 32, column: 15, scope: !56)
!67 = !DILocation(line: 32, column: 22, scope: !56)
!68 = !DILocation(line: 33, column: 35, scope: !40)
!69 = !DILocation(line: 33, column: 11, scope: !40)
!70 = !DILocation(line: 33, column: 9, scope: !40)
!71 = !DILocation(line: 34, column: 10, scope: !72)
!72 = distinct !DILexicalBlock(scope: !40, file: !3, line: 34, column: 9)
!73 = !DILocation(line: 34, column: 30, scope: !72)
!74 = !DILocation(line: 34, column: 39, scope: !72)
!75 = !DILocation(line: 34, column: 43, scope: !72)
!76 = !DILocation(line: 34, column: 47, scope: !72)
!77 = !DILocation(line: 34, column: 9, scope: !40)
!78 = !DILocation(line: 39, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !3, line: 34, column: 54)
!80 = !DILocation(line: 40, column: 17, scope: !79)
!81 = !DILocation(line: 40, column: 23, scope: !79)
!82 = !DILocation(line: 40, column: 9, scope: !79)
!83 = !DILocation(line: 41, column: 5, scope: !79)
!84 = !DILocation(line: 42, column: 29, scope: !85)
!85 = distinct !DILexicalBlock(scope: !72, file: !3, line: 41, column: 12)
!86 = !DILocation(line: 42, column: 9, scope: !85)
!87 = !DILocation(line: 42, column: 15, scope: !85)
!88 = !DILocation(line: 42, column: 27, scope: !85)
!89 = !DILocation(line: 43, column: 32, scope: !85)
!90 = !DILocation(line: 43, column: 38, scope: !85)
!91 = !DILocation(line: 43, column: 30, scope: !85)
!92 = !{!"True"}
!93 = !DILocation(line: 43, column: 9, scope: !85)
!94 = !DILocation(line: 43, column: 15, scope: !85)
!95 = !DILocation(line: 43, column: 25, scope: !85)
!96 = !DILocation(line: 44, column: 16, scope: !97)
!97 = distinct !DILexicalBlock(scope: !85, file: !3, line: 44, column: 9)
!98 = !DILocation(line: 44, column: 14, scope: !97)
!99 = !DILocation(line: 44, column: 21, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 44, column: 9)
!101 = !DILocation(line: 44, column: 25, scope: !100)
!102 = !DILocation(line: 44, column: 31, scope: !100)
!103 = !DILocation(line: 44, column: 23, scope: !100)
!104 = !DILocation(line: 44, column: 9, scope: !97)
!105 = !DILocation(line: 45, column: 21, scope: !100)
!106 = !DILocation(line: 45, column: 27, scope: !100)
!107 = !DILocation(line: 45, column: 34, scope: !100)
!108 = !DILocation(line: 45, column: 38, scope: !100)
!109 = !DILocation(line: 45, column: 44, scope: !100)
!110 = !DILocation(line: 45, column: 36, scope: !100)
!111 = !DILocation(line: 45, column: 58, scope: !100)
!112 = !DILocation(line: 46, column: 20, scope: !100)
!113 = !DILocation(line: 46, column: 26, scope: !100)
!114 = !DILocation(line: 45, column: 13, scope: !100)
!115 = !DILocation(line: 44, column: 43, scope: !100)
!116 = !DILocation(line: 44, column: 9, scope: !100)
!117 = distinct !{!117, !104, !118, !119}
!118 = !DILocation(line: 46, column: 37, scope: !97)
!119 = !{!"llvm.loop.mustprogress"}
!120 = !DILocation(line: 47, column: 9, scope: !85)
!121 = !DILocation(line: 47, column: 15, scope: !85)
!122 = !DILocation(line: 47, column: 22, scope: !85)
!123 = !DILocation(line: 47, column: 28, scope: !85)
!124 = !DILocation(line: 47, column: 40, scope: !85)
!125 = !DILocation(line: 47, column: 46, scope: !85)
!126 = !DILocation(line: 47, column: 38, scope: !85)
!127 = !DILocation(line: 47, column: 59, scope: !85)
!128 = !DILocation(line: 49, column: 1, scope: !40)
!129 = distinct !DISubprogram(name: "xmlStrlen", scope: !3, file: !3, line: 52, type: !130, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!130 = !DISubroutineType(types: !131)
!131 = !{!21, !6}
!132 = !DILocalVariable(name: "str", arg: 1, scope: !129, file: !3, line: 52, type: !6)
!133 = !DILocation(line: 52, column: 27, scope: !129)
!134 = !DILocation(line: 53, column: 9, scope: !135)
!135 = distinct !DILexicalBlock(scope: !129, file: !3, line: 53, column: 9)
!136 = !DILocation(line: 53, column: 13, scope: !135)
!137 = !DILocation(line: 53, column: 9, scope: !129)
!138 = !DILocation(line: 53, column: 22, scope: !135)
!139 = !DILocation(line: 54, column: 19, scope: !129)
!140 = !DILocation(line: 54, column: 12, scope: !129)
!141 = !DILocation(line: 54, column: 5, scope: !129)
!142 = !DILocation(line: 55, column: 1, scope: !129)
!143 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 57, type: !144, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !43)
!144 = !DISubroutineType(types: !145)
!145 = !{!21}
!146 = !DILocalVariable(name: "ctxt", scope: !143, file: !3, line: 58, type: !9)
!147 = !DILocation(line: 58, column: 18, scope: !143)
!148 = !DILocalVariable(name: "encoding_state", scope: !143, file: !3, line: 59, type: !8)
!149 = !DILocation(line: 59, column: 10, scope: !143)
!150 = !DILocalVariable(name: "indentString", scope: !143, file: !3, line: 60, type: !17)
!151 = !DILocation(line: 60, column: 10, scope: !143)
!152 = !DILocalVariable(name: "len", scope: !143, file: !3, line: 61, type: !21)
!153 = !DILocation(line: 61, column: 9, scope: !143)
!154 = !DILocation(line: 64, column: 27, scope: !143)
!155 = !DILocation(line: 64, column: 12, scope: !143)
!156 = !DILocation(line: 64, column: 10, scope: !143)
!157 = !DILocation(line: 65, column: 17, scope: !143)
!158 = !DILocation(line: 65, column: 22, scope: !143)
!159 = !DILocation(line: 65, column: 5, scope: !143)
!160 = !DILocation(line: 66, column: 12, scope: !143)
!161 = !DILocation(line: 66, column: 5, scope: !143)
!162 = !DILocation(line: 69, column: 5, scope: !143)
!163 = !DILocation(line: 70, column: 9, scope: !164)
!164 = distinct !DILexicalBlock(scope: !143, file: !3, line: 70, column: 9)
!165 = !DILocation(line: 70, column: 24, scope: !164)
!166 = !DILocation(line: 70, column: 9, scope: !143)
!167 = !DILocation(line: 71, column: 34, scope: !168)
!168 = distinct !DILexicalBlock(scope: !164, file: !3, line: 70, column: 29)
!169 = !DILocation(line: 71, column: 9, scope: !168)
!170 = !DILocation(line: 71, column: 15, scope: !168)
!171 = !DILocation(line: 71, column: 24, scope: !168)
!172 = !DILocation(line: 72, column: 21, scope: !168)
!173 = !DILocation(line: 72, column: 27, scope: !168)
!174 = !DILocation(line: 72, column: 36, scope: !168)
!175 = !DILocation(line: 72, column: 9, scope: !168)
!176 = !DILocation(line: 73, column: 5, scope: !168)
!177 = !DILocation(line: 74, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !164, file: !3, line: 73, column: 12)
!179 = !DILocation(line: 74, column: 15, scope: !178)
!180 = !DILocation(line: 74, column: 24, scope: !178)
!181 = !DILocation(line: 78, column: 24, scope: !143)
!182 = !DILocation(line: 78, column: 5, scope: !143)
!183 = !DILocation(line: 80, column: 5, scope: !143)
!184 = !DILocation(line: 80, column: 42, scope: !143)
!185 = !DILocation(line: 81, column: 27, scope: !143)
!186 = !DILocation(line: 81, column: 25, scope: !143)
!187 = !DILocation(line: 84, column: 19, scope: !143)
!188 = !DILocation(line: 84, column: 5, scope: !143)
!189 = !DILocation(line: 87, column: 9, scope: !190)
!190 = distinct !DILexicalBlock(scope: !143, file: !3, line: 87, column: 9)
!191 = !DILocation(line: 87, column: 15, scope: !190)
!192 = !DILocation(line: 87, column: 9, scope: !143)
!193 = !DILocation(line: 87, column: 30, scope: !190)
!194 = !DILocation(line: 87, column: 36, scope: !190)
!195 = !DILocation(line: 87, column: 25, scope: !190)
!196 = !DILocation(line: 88, column: 10, scope: !143)
!197 = !DILocation(line: 88, column: 5, scope: !143)
!198 = !DILocation(line: 89, column: 5, scope: !143)
!199 = distinct !DISubprogram(name: "memcpy", scope: !200, file: !200, line: 12, type: !201, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !26, retainedNodes: !43)
!200 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!201 = !DISubroutineType(types: !202)
!202 = !{!5, !5, !203, !205}
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !206, line: 46, baseType: !207)
!206 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!207 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!208 = !DILocalVariable(name: "destaddr", arg: 1, scope: !199, file: !200, line: 12, type: !5)
!209 = !DILocation(line: 12, column: 20, scope: !199)
!210 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !199, file: !200, line: 12, type: !203)
!211 = !DILocation(line: 12, column: 42, scope: !199)
!212 = !DILocalVariable(name: "len", arg: 3, scope: !199, file: !200, line: 12, type: !205)
!213 = !DILocation(line: 12, column: 58, scope: !199)
!214 = !DILocalVariable(name: "dest", scope: !199, file: !200, line: 13, type: !14)
!215 = !DILocation(line: 13, column: 9, scope: !199)
!216 = !DILocation(line: 13, column: 16, scope: !199)
!217 = !DILocalVariable(name: "src", scope: !199, file: !200, line: 14, type: !6)
!218 = !DILocation(line: 14, column: 15, scope: !199)
!219 = !DILocation(line: 14, column: 21, scope: !199)
!220 = !DILocation(line: 16, column: 3, scope: !199)
!221 = !DILocation(line: 16, column: 13, scope: !199)
!222 = !DILocation(line: 16, column: 16, scope: !199)
!223 = !DILocation(line: 17, column: 19, scope: !199)
!224 = !DILocation(line: 17, column: 15, scope: !199)
!225 = !DILocation(line: 17, column: 10, scope: !199)
!226 = !DILocation(line: 17, column: 13, scope: !199)
!227 = distinct !{!227, !220, !223, !119}
!228 = !DILocation(line: 18, column: 10, scope: !199)
!229 = !DILocation(line: 18, column: 3, scope: !199)
!230 = distinct !DISubprogram(name: "memset", scope: !231, file: !231, line: 12, type: !232, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !28, retainedNodes: !43)
!231 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!232 = !DISubroutineType(types: !233)
!233 = !{!5, !5, !21, !205}
!234 = !DILocalVariable(name: "dst", arg: 1, scope: !230, file: !231, line: 12, type: !5)
!235 = !DILocation(line: 12, column: 20, scope: !230)
!236 = !DILocalVariable(name: "s", arg: 2, scope: !230, file: !231, line: 12, type: !21)
!237 = !DILocation(line: 12, column: 29, scope: !230)
!238 = !DILocalVariable(name: "count", arg: 3, scope: !230, file: !231, line: 12, type: !205)
!239 = !DILocation(line: 12, column: 39, scope: !230)
!240 = !DILocalVariable(name: "a", scope: !230, file: !231, line: 13, type: !14)
!241 = !DILocation(line: 13, column: 9, scope: !230)
!242 = !DILocation(line: 13, column: 13, scope: !230)
!243 = !DILocation(line: 14, column: 3, scope: !230)
!244 = !DILocation(line: 14, column: 15, scope: !230)
!245 = !DILocation(line: 14, column: 18, scope: !230)
!246 = !DILocation(line: 15, column: 12, scope: !230)
!247 = !DILocation(line: 15, column: 7, scope: !230)
!248 = !DILocation(line: 15, column: 10, scope: !230)
!249 = distinct !{!249, !243, !246, !119}
!250 = !DILocation(line: 16, column: 10, scope: !230)
!251 = !DILocation(line: 16, column: 3, scope: !230)
!252 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !253, file: !253, line: 12, type: !254, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !30, retainedNodes: !43)
!253 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!254 = !DISubroutineType(types: !255)
!255 = !{null, !256}
!256 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!257 = !DILocalVariable(name: "z", arg: 1, scope: !252, file: !253, line: 12, type: !256)
!258 = !DILocation(line: 12, column: 36, scope: !252)
!259 = !DILocation(line: 13, column: 7, scope: !260)
!260 = distinct !DILexicalBlock(scope: !252, file: !253, line: 13, column: 7)
!261 = !DILocation(line: 13, column: 9, scope: !260)
!262 = !DILocation(line: 13, column: 7, scope: !252)
!263 = !DILocation(line: 14, column: 5, scope: !260)
!264 = !DILocation(line: 15, column: 1, scope: !252)

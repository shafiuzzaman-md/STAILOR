; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/157_xmlstring.c_509_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/157_xmlstring.c_509_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"cur_buf\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"add_buf\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"(cur_len >= 0 && cur_len <= 255) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/157_xmlstring.c_509_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrcat(i8* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !26, metadata !DIExpression()), !dbg !27
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %6, metadata !30, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %7, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i8** %8, metadata !35, metadata !DIExpression()), !dbg !36
  %9 = load i8*, i8** %5, align 8, !dbg !37
  %10 = icmp eq i8* %9, null, !dbg !39
  br i1 %10, label %11, label %13, !dbg !40

11:                                               ; preds = %2
  %12 = load i8*, i8** %4, align 8, !dbg !41
  store i8* %12, i8** %3, align 8, !dbg !42
  br label %67, !dbg !42

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8, !dbg !43
  %15 = icmp eq i8* %14, null, !dbg !45
  br i1 %15, label %16, label %19, !dbg !46

16:                                               ; preds = %13
  %17 = load i8*, i8** %5, align 8, !dbg !47
  %18 = call i8* @xmlStrdup(i8* noundef %17), !dbg !48
  store i8* %18, i8** %3, align 8, !dbg !49
  br label %67, !dbg !49

19:                                               ; preds = %13
  %20 = load i8*, i8** %5, align 8, !dbg !50
  %21 = call i32 @xmlStrlen(i8* noundef %20), !dbg !51
  store i32 %21, i32* %7, align 4, !dbg !52
  %22 = load i8*, i8** %4, align 8, !dbg !53
  %23 = call i32 @xmlStrlen(i8* noundef %22), !dbg !54
  store i32 %23, i32* %6, align 4, !dbg !55
  %24 = load i32, i32* %6, align 4, !dbg !56
  %25 = icmp slt i32 %24, 0, !dbg !58
  br i1 %25, label %31, label %26, !dbg !59

26:                                               ; preds = %19
  %27 = load i32, i32* %6, align 4, !dbg !60
  %28 = load i32, i32* %7, align 4, !dbg !61
  %29 = sub nsw i32 2147483647, %28, !dbg !62
  %30 = icmp sgt i32 %27, %29, !dbg !63
  br i1 %30, label %31, label %32, !dbg !64

31:                                               ; preds = %26, %19
  store i8* null, i8** %3, align 8, !dbg !65
  br label %67, !dbg !65

32:                                               ; preds = %26
  %33 = load i32, i32* %6, align 4, !dbg !66
  %34 = sext i32 %33 to i64, !dbg !67
  %35 = load i32, i32* %7, align 4, !dbg !68
  %36 = sext i32 %35 to i64, !dbg !68
  %37 = add i64 %34, %36, !dbg !69
  %38 = add i64 %37, 1, !dbg !70
  %39 = call i8* @xmlMalloc(i64 noundef %38), !dbg !71
  store i8* %39, i8** %8, align 8, !dbg !72
  %40 = load i8*, i8** %8, align 8, !dbg !73
  %41 = icmp eq i8* %40, null, !dbg !75
  br i1 %41, label %42, label %46, !dbg !76

42:                                               ; preds = %32
  call void @xmlErrMemory(i8* noundef null, i8* noundef null), !dbg !77
  %43 = load i8*, i8** %4, align 8, !dbg !79
  %44 = load i32, i32* %6, align 4, !dbg !80
  %45 = call i8* @xmlStrndup(i8* noundef %43, i32 noundef %44), !dbg !81
  store i8* %45, i8** %3, align 8, !dbg !82
  br label %67, !dbg !82

46:                                               ; preds = %32
  %47 = load i8*, i8** %8, align 8, !dbg !83
  %48 = load i8*, i8** %4, align 8, !dbg !84
  %49 = load i32, i32* %6, align 4, !dbg !85
  %50 = sext i32 %49 to i64, !dbg !85
  %51 = call i8* @memcpy(i8* %47, i8* %48, i64 %50), !dbg !86
  %52 = load i8*, i8** %8, align 8, !dbg !87
  %53 = load i32, i32* %6, align 4, !dbg !88
  %54 = sext i32 %53 to i64, !dbg !87
  %55 = getelementptr inbounds i8, i8* %52, i64 %54, !dbg !87
  %56 = load i8*, i8** %5, align 8, !dbg !89
  %57 = load i32, i32* %7, align 4, !dbg !90
  %58 = sext i32 %57 to i64, !dbg !90
  %59 = call i8* @memcpy(i8* %55, i8* %56, i64 %58), !dbg !91
  %60 = load i8*, i8** %8, align 8, !dbg !92
  %61 = load i32, i32* %6, align 4, !dbg !93
  %62 = load i32, i32* %7, align 4, !dbg !94
  %63 = add nsw i32 %61, %62, !dbg !95
  %64 = sext i32 %63 to i64, !dbg !92
  %65 = getelementptr inbounds i8, i8* %60, i64 %64, !dbg !92
  store i8 0, i8* %65, align 1, !dbg !96
  %66 = load i8*, i8** %8, align 8, !dbg !97
  store i8* %66, i8** %3, align 8, !dbg !98
  br label %67, !dbg !98

67:                                               ; preds = %46, %42, %31, %16, %11
  %68 = load i8*, i8** %3, align 8, !dbg !99
  ret i8* %68, !dbg !99
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !100 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !103, metadata !DIExpression()), !dbg !104
  %6 = load i8*, i8** %3, align 8, !dbg !105
  %7 = icmp eq i8* %6, null, !dbg !107
  br i1 %7, label %8, label %9, !dbg !108

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !109
  br label %30, !dbg !109

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !110, metadata !DIExpression()), !dbg !111
  %10 = load i8*, i8** %3, align 8, !dbg !112
  %11 = call i32 @xmlStrlen(i8* noundef %10), !dbg !113
  store i32 %11, i32* %4, align 4, !dbg !111
  call void @llvm.dbg.declare(metadata i8** %5, metadata !114, metadata !DIExpression()), !dbg !115
  %12 = load i32, i32* %4, align 4, !dbg !116
  %13 = add nsw i32 %12, 1, !dbg !117
  %14 = sext i32 %13 to i64, !dbg !116
  %15 = call noalias i8* @malloc(i64 noundef %14) #7, !dbg !118
  store i8* %15, i8** %5, align 8, !dbg !115
  %16 = load i8*, i8** %5, align 8, !dbg !119
  %17 = icmp ne i8* %16, null, !dbg !119
  br i1 %17, label %18, label %28, !dbg !121

18:                                               ; preds = %9
  %19 = load i8*, i8** %5, align 8, !dbg !122
  %20 = load i8*, i8** %3, align 8, !dbg !124
  %21 = load i32, i32* %4, align 4, !dbg !125
  %22 = sext i32 %21 to i64, !dbg !125
  %23 = call i8* @memcpy(i8* %19, i8* %20, i64 %22), !dbg !126
  %24 = load i8*, i8** %5, align 8, !dbg !127
  %25 = load i32, i32* %4, align 4, !dbg !128
  %26 = sext i32 %25 to i64, !dbg !127
  %27 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !127
  store i8 0, i8* %27, align 1, !dbg !129
  br label %28, !dbg !130

28:                                               ; preds = %18, %9
  %29 = load i8*, i8** %5, align 8, !dbg !131
  store i8* %29, i8** %2, align 8, !dbg !132
  br label %30, !dbg !132

30:                                               ; preds = %28, %8
  %31 = load i8*, i8** %2, align 8, !dbg !133
  ret i8* %31, !dbg !133
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !134 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !137, metadata !DIExpression()), !dbg !138
  %5 = load i8*, i8** %3, align 8, !dbg !139
  %6 = icmp eq i8* %5, null, !dbg !141
  br i1 %6, label %7, label %8, !dbg !142

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !143
  br label %22, !dbg !143

8:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %4, metadata !144, metadata !DIExpression()), !dbg !145
  store i32 0, i32* %4, align 4, !dbg !145
  br label %9, !dbg !146

9:                                                ; preds = %17, %8
  %10 = load i8*, i8** %3, align 8, !dbg !147
  %11 = load i32, i32* %4, align 4, !dbg !148
  %12 = sext i32 %11 to i64, !dbg !147
  %13 = getelementptr inbounds i8, i8* %10, i64 %12, !dbg !147
  %14 = load i8, i8* %13, align 1, !dbg !147
  %15 = zext i8 %14 to i32, !dbg !147
  %16 = icmp ne i32 %15, 0, !dbg !149
  br i1 %16, label %17, label %20, !dbg !146

17:                                               ; preds = %9
  %18 = load i32, i32* %4, align 4, !dbg !150
  %19 = add nsw i32 %18, 1, !dbg !150
  store i32 %19, i32* %4, align 4, !dbg !150
  br label %9, !dbg !146, !llvm.loop !151

20:                                               ; preds = %9
  %21 = load i32, i32* %4, align 4, !dbg !153
  store i32 %21, i32* %2, align 4, !dbg !154
  br label %22, !dbg !154

22:                                               ; preds = %20, %7
  %23 = load i32, i32* %2, align 4, !dbg !155
  ret i32 %23, !dbg !155
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !156 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !159, metadata !DIExpression()), !dbg !160
  %3 = load i64, i64* %2, align 8, !dbg !161
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !162
  ret i8* %4, !dbg !163
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !164 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !167, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !169, metadata !DIExpression()), !dbg !170
  ret void, !dbg !171
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !172 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !175, metadata !DIExpression()), !dbg !176
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !177, metadata !DIExpression()), !dbg !178
  %7 = load i8*, i8** %4, align 8, !dbg !179
  %8 = icmp eq i8* %7, null, !dbg !181
  br i1 %8, label %12, label %9, !dbg !182

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !183
  %11 = icmp slt i32 %10, 0, !dbg !184
  br i1 %11, label %12, label %13, !dbg !185

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !186
  br label %32, !dbg !186

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !187, metadata !DIExpression()), !dbg !188
  %14 = load i32, i32* %5, align 4, !dbg !189
  %15 = add nsw i32 %14, 1, !dbg !190
  %16 = sext i32 %15 to i64, !dbg !189
  %17 = call noalias i8* @malloc(i64 noundef %16) #7, !dbg !191
  store i8* %17, i8** %6, align 8, !dbg !188
  %18 = load i8*, i8** %6, align 8, !dbg !192
  %19 = icmp ne i8* %18, null, !dbg !192
  br i1 %19, label %20, label %30, !dbg !194

20:                                               ; preds = %13
  %21 = load i8*, i8** %6, align 8, !dbg !195
  %22 = load i8*, i8** %4, align 8, !dbg !197
  %23 = load i32, i32* %5, align 4, !dbg !198
  %24 = sext i32 %23 to i64, !dbg !198
  %25 = call i8* @memcpy(i8* %21, i8* %22, i64 %24), !dbg !199
  %26 = load i8*, i8** %6, align 8, !dbg !200
  %27 = load i32, i32* %5, align 4, !dbg !201
  %28 = sext i32 %27 to i64, !dbg !200
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !200
  store i8 0, i8* %29, align 1, !dbg !202
  br label %30, !dbg !203

30:                                               ; preds = %20, %13
  %31 = load i8*, i8** %6, align 8, !dbg !204
  store i8* %31, i8** %3, align 8, !dbg !205
  br label %32, !dbg !205

32:                                               ; preds = %30, %12
  %33 = load i8*, i8** %3, align 8, !dbg !206
  ret i8* %33, !dbg !206
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !207 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !210, metadata !DIExpression()), !dbg !214
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !215, metadata !DIExpression()), !dbg !216
  call void @llvm.dbg.declare(metadata i32* %4, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i32* %5, metadata !219, metadata !DIExpression()), !dbg !220
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !221
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !222
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !223
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !224
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !225
  %10 = load i8, i8* %9, align 1, !dbg !225
  %11 = zext i8 %10 to i32, !dbg !225
  %12 = icmp eq i32 %11, 0, !dbg !226
  %13 = zext i1 %12 to i32, !dbg !226
  %14 = sext i32 %13 to i64, !dbg !225
  call void @klee_assume(i64 noundef %14), !dbg !227
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !228
  %16 = load i8, i8* %15, align 1, !dbg !228
  %17 = zext i8 %16 to i32, !dbg !228
  %18 = icmp eq i32 %17, 0, !dbg !229
  %19 = zext i1 %18 to i32, !dbg !229
  %20 = sext i32 %19 to i64, !dbg !228
  call void @klee_assume(i64 noundef %20), !dbg !230
  store i32 0, i32* %4, align 4, !dbg !231
  br label %21, !dbg !232

21:                                               ; preds = %33, %0
  %22 = load i32, i32* %4, align 4, !dbg !233
  %23 = icmp slt i32 %22, 255, !dbg !234
  br i1 %23, label %24, label %31, !dbg !235

24:                                               ; preds = %21
  %25 = load i32, i32* %4, align 4, !dbg !236
  %26 = sext i32 %25 to i64, !dbg !237
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 %26, !dbg !237
  %28 = load i8, i8* %27, align 1, !dbg !237
  %29 = zext i8 %28 to i32, !dbg !237
  %30 = icmp ne i32 %29, 0, !dbg !238
  br label %31

31:                                               ; preds = %24, %21
  %32 = phi i1 [ false, %21 ], [ %30, %24 ], !dbg !239
  br i1 %32, label %33, label %36, !dbg !232

33:                                               ; preds = %31
  %34 = load i32, i32* %4, align 4, !dbg !240
  %35 = add nsw i32 %34, 1, !dbg !240
  store i32 %35, i32* %4, align 4, !dbg !240
  br label %21, !dbg !232, !llvm.loop !241

36:                                               ; preds = %31
  store i32 0, i32* %5, align 4, !dbg !242
  br label %37, !dbg !243

37:                                               ; preds = %49, %36
  %38 = load i32, i32* %5, align 4, !dbg !244
  %39 = icmp slt i32 %38, 255, !dbg !245
  br i1 %39, label %40, label %47, !dbg !246

40:                                               ; preds = %37
  %41 = load i32, i32* %5, align 4, !dbg !247
  %42 = sext i32 %41 to i64, !dbg !248
  %43 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %42, !dbg !248
  %44 = load i8, i8* %43, align 1, !dbg !248
  %45 = zext i8 %44 to i32, !dbg !248
  %46 = icmp ne i32 %45, 0, !dbg !249
  br label %47

47:                                               ; preds = %40, %37
  %48 = phi i1 [ false, %37 ], [ %46, %40 ], !dbg !239
  br i1 %48, label %49, label %52, !dbg !243

49:                                               ; preds = %47
  %50 = load i32, i32* %5, align 4, !dbg !250
  %51 = add nsw i32 %50, 1, !dbg !250
  store i32 %51, i32* %5, align 4, !dbg !250
  br label %37, !dbg !243, !llvm.loop !251

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4, !dbg !252
  %54 = icmp sge i32 %53, 0, !dbg !253
  br i1 %54, label %55, label %58, !dbg !254

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4, !dbg !255
  %57 = icmp sle i32 %56, 255, !dbg !256
  br label %58

58:                                               ; preds = %55, %52
  %59 = phi i1 [ false, %52 ], [ %57, %55 ], !dbg !239
  %60 = zext i1 %59 to i32, !dbg !254
  %61 = sext i32 %60 to i64, !dbg !252
  call void @klee_assume(i64 noundef %61), !dbg !257
  %62 = load i32, i32* %5, align 4, !dbg !258
  %63 = icmp sge i32 %62, 0, !dbg !259
  br i1 %63, label %64, label %67, !dbg !260

64:                                               ; preds = %58
  %65 = load i32, i32* %5, align 4, !dbg !261
  %66 = icmp sle i32 %65, 255, !dbg !262
  br label %67

67:                                               ; preds = %64, %58
  %68 = phi i1 [ false, %58 ], [ %66, %64 ], !dbg !239
  %69 = zext i1 %68 to i32, !dbg !260
  %70 = sext i32 %69 to i64, !dbg !258
  call void @klee_assume(i64 noundef %70), !dbg !263
  call void @llvm.dbg.declare(metadata i8** %6, metadata !264, metadata !DIExpression()), !dbg !265
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !266
  %72 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !267
  %73 = call i8* @xmlStrcat(i8* noundef %71, i8* noundef %72), !dbg !268
  store i8* %73, i8** %6, align 8, !dbg !265
  %74 = load i32, i32* %4, align 4, !dbg !269
  %75 = icmp sge i32 %74, 0, !dbg !269
  br i1 %75, label %76, label %81, !dbg !269

76:                                               ; preds = %67
  %77 = load i32, i32* %4, align 4, !dbg !269
  %78 = icmp sle i32 %77, 255, !dbg !269
  br i1 %78, label %79, label %81, !dbg !269

79:                                               ; preds = %76
  br i1 true, label %80, label %81, !dbg !269

80:                                               ; preds = %79
  br label %83, !dbg !269

81:                                               ; preds = %79, %76, %67
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 113, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !269
  br label %83, !dbg !269

83:                                               ; preds = %81, %80
  %84 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 116, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !270
  %85 = load i8*, i8** %6, align 8, !dbg !271
  %86 = icmp ne i8* %85, null, !dbg !271
  br i1 %86, label %87, label %89, !dbg !273

87:                                               ; preds = %83
  %88 = load i8*, i8** %6, align 8, !dbg !274
  call void @free(i8* noundef %88) #7, !dbg !275
  br label %89, !dbg !275

89:                                               ; preds = %87, %83
  ret i32 0, !dbg !276
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !277 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !283, metadata !DIExpression()), !dbg !284
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !285, metadata !DIExpression()), !dbg !286
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !287, metadata !DIExpression()), !dbg !288
  call void @llvm.dbg.declare(metadata i8** %7, metadata !289, metadata !DIExpression()), !dbg !292
  %9 = load i8*, i8** %4, align 8, !dbg !293
  store i8* %9, i8** %7, align 8, !dbg !292
  call void @llvm.dbg.declare(metadata i8** %8, metadata !294, metadata !DIExpression()), !dbg !297
  %10 = load i8*, i8** %5, align 8, !dbg !298
  store i8* %10, i8** %8, align 8, !dbg !297
  br label %11, !dbg !299

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !300
  %13 = add i64 %12, -1, !dbg !300
  store i64 %13, i64* %6, align 8, !dbg !300
  %14 = icmp ugt i64 %12, 0, !dbg !301
  br i1 %14, label %15, label %21, !dbg !299

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !302
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !302
  store i8* %17, i8** %8, align 8, !dbg !302
  %18 = load i8, i8* %16, align 1, !dbg !303
  %19 = load i8*, i8** %7, align 8, !dbg !304
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !304
  store i8* %20, i8** %7, align 8, !dbg !304
  store i8 %18, i8* %19, align 1, !dbg !305
  br label %11, !dbg !299, !llvm.loop !306

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !307
  ret i8* %22, !dbg !308
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/157_xmlstring.c_509_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "306d34e315cd23d784489c84bff14eb5")
!2 = !{!3, !4, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 11, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !8, line: 46, baseType: !9)
!8 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!9 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlStrcat", scope: !1, file: !1, line: 19, type: !21, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!21 = !DISubroutineType(types: !22)
!22 = !{!4, !4, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!25 = !{}
!26 = !DILocalVariable(name: "cur", arg: 1, scope: !20, file: !1, line: 19, type: !4)
!27 = !DILocation(line: 19, column: 29, scope: !20)
!28 = !DILocalVariable(name: "add", arg: 2, scope: !20, file: !1, line: 19, type: !23)
!29 = !DILocation(line: 19, column: 49, scope: !20)
!30 = !DILocalVariable(name: "size", scope: !20, file: !1, line: 20, type: !31)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = !DILocation(line: 20, column: 9, scope: !20)
!33 = !DILocalVariable(name: "len", scope: !20, file: !1, line: 21, type: !31)
!34 = !DILocation(line: 21, column: 9, scope: !20)
!35 = !DILocalVariable(name: "ret", scope: !20, file: !1, line: 22, type: !4)
!36 = !DILocation(line: 22, column: 14, scope: !20)
!37 = !DILocation(line: 24, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !20, file: !1, line: 24, column: 9)
!39 = !DILocation(line: 24, column: 13, scope: !38)
!40 = !DILocation(line: 24, column: 9, scope: !20)
!41 = !DILocation(line: 24, column: 29, scope: !38)
!42 = !DILocation(line: 24, column: 22, scope: !38)
!43 = !DILocation(line: 25, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !20, file: !1, line: 25, column: 9)
!45 = !DILocation(line: 25, column: 13, scope: !44)
!46 = !DILocation(line: 25, column: 9, scope: !20)
!47 = !DILocation(line: 25, column: 39, scope: !44)
!48 = !DILocation(line: 25, column: 29, scope: !44)
!49 = !DILocation(line: 25, column: 22, scope: !44)
!50 = !DILocation(line: 27, column: 21, scope: !20)
!51 = !DILocation(line: 27, column: 11, scope: !20)
!52 = !DILocation(line: 27, column: 9, scope: !20)
!53 = !DILocation(line: 28, column: 22, scope: !20)
!54 = !DILocation(line: 28, column: 12, scope: !20)
!55 = !DILocation(line: 28, column: 10, scope: !20)
!56 = !DILocation(line: 29, column: 10, scope: !57)
!57 = distinct !DILexicalBlock(scope: !20, file: !1, line: 29, column: 9)
!58 = !DILocation(line: 29, column: 15, scope: !57)
!59 = !DILocation(line: 29, column: 20, scope: !57)
!60 = !DILocation(line: 29, column: 24, scope: !57)
!61 = !DILocation(line: 29, column: 41, scope: !57)
!62 = !DILocation(line: 29, column: 39, scope: !57)
!63 = !DILocation(line: 29, column: 29, scope: !57)
!64 = !DILocation(line: 29, column: 9, scope: !20)
!65 = !DILocation(line: 30, column: 9, scope: !57)
!66 = !DILocation(line: 31, column: 42, scope: !20)
!67 = !DILocation(line: 31, column: 33, scope: !20)
!68 = !DILocation(line: 31, column: 49, scope: !20)
!69 = !DILocation(line: 31, column: 47, scope: !20)
!70 = !DILocation(line: 31, column: 53, scope: !20)
!71 = !DILocation(line: 31, column: 23, scope: !20)
!72 = !DILocation(line: 31, column: 9, scope: !20)
!73 = !DILocation(line: 32, column: 9, scope: !74)
!74 = distinct !DILexicalBlock(scope: !20, file: !1, line: 32, column: 9)
!75 = !DILocation(line: 32, column: 13, scope: !74)
!76 = !DILocation(line: 32, column: 9, scope: !20)
!77 = !DILocation(line: 33, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 32, column: 22)
!79 = !DILocation(line: 34, column: 27, scope: !78)
!80 = !DILocation(line: 34, column: 32, scope: !78)
!81 = !DILocation(line: 34, column: 16, scope: !78)
!82 = !DILocation(line: 34, column: 9, scope: !78)
!83 = !DILocation(line: 36, column: 12, scope: !20)
!84 = !DILocation(line: 36, column: 17, scope: !20)
!85 = !DILocation(line: 36, column: 22, scope: !20)
!86 = !DILocation(line: 36, column: 5, scope: !20)
!87 = !DILocation(line: 37, column: 13, scope: !20)
!88 = !DILocation(line: 37, column: 17, scope: !20)
!89 = !DILocation(line: 37, column: 24, scope: !20)
!90 = !DILocation(line: 37, column: 29, scope: !20)
!91 = !DILocation(line: 37, column: 5, scope: !20)
!92 = !DILocation(line: 38, column: 5, scope: !20)
!93 = !DILocation(line: 38, column: 9, scope: !20)
!94 = !DILocation(line: 38, column: 16, scope: !20)
!95 = !DILocation(line: 38, column: 14, scope: !20)
!96 = !DILocation(line: 38, column: 21, scope: !20)
!97 = !DILocation(line: 39, column: 12, scope: !20)
!98 = !DILocation(line: 39, column: 5, scope: !20)
!99 = !DILocation(line: 40, column: 1, scope: !20)
!100 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 43, type: !101, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!101 = !DISubroutineType(types: !102)
!102 = !{!4, !23}
!103 = !DILocalVariable(name: "cur", arg: 1, scope: !100, file: !1, line: 43, type: !23)
!104 = !DILocation(line: 43, column: 35, scope: !100)
!105 = !DILocation(line: 44, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !100, file: !1, line: 44, column: 9)
!107 = !DILocation(line: 44, column: 13, scope: !106)
!108 = !DILocation(line: 44, column: 9, scope: !100)
!109 = !DILocation(line: 44, column: 22, scope: !106)
!110 = !DILocalVariable(name: "len", scope: !100, file: !1, line: 45, type: !31)
!111 = !DILocation(line: 45, column: 9, scope: !100)
!112 = !DILocation(line: 45, column: 25, scope: !100)
!113 = !DILocation(line: 45, column: 15, scope: !100)
!114 = !DILocalVariable(name: "copy", scope: !100, file: !1, line: 46, type: !4)
!115 = !DILocation(line: 46, column: 14, scope: !100)
!116 = !DILocation(line: 46, column: 38, scope: !100)
!117 = !DILocation(line: 46, column: 42, scope: !100)
!118 = !DILocation(line: 46, column: 31, scope: !100)
!119 = !DILocation(line: 47, column: 9, scope: !120)
!120 = distinct !DILexicalBlock(scope: !100, file: !1, line: 47, column: 9)
!121 = !DILocation(line: 47, column: 9, scope: !100)
!122 = !DILocation(line: 48, column: 16, scope: !123)
!123 = distinct !DILexicalBlock(scope: !120, file: !1, line: 47, column: 15)
!124 = !DILocation(line: 48, column: 22, scope: !123)
!125 = !DILocation(line: 48, column: 27, scope: !123)
!126 = !DILocation(line: 48, column: 9, scope: !123)
!127 = !DILocation(line: 49, column: 9, scope: !123)
!128 = !DILocation(line: 49, column: 14, scope: !123)
!129 = !DILocation(line: 49, column: 19, scope: !123)
!130 = !DILocation(line: 50, column: 5, scope: !123)
!131 = !DILocation(line: 51, column: 12, scope: !100)
!132 = !DILocation(line: 51, column: 5, scope: !100)
!133 = !DILocation(line: 52, column: 1, scope: !100)
!134 = distinct !DISubprogram(name: "xmlStrlen", scope: !1, file: !1, line: 64, type: !135, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!135 = !DISubroutineType(types: !136)
!136 = !{!31, !23}
!137 = !DILocalVariable(name: "str", arg: 1, scope: !134, file: !1, line: 64, type: !23)
!138 = !DILocation(line: 64, column: 30, scope: !134)
!139 = !DILocation(line: 65, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 65, column: 9)
!141 = !DILocation(line: 65, column: 13, scope: !140)
!142 = !DILocation(line: 65, column: 9, scope: !134)
!143 = !DILocation(line: 65, column: 22, scope: !140)
!144 = !DILocalVariable(name: "i", scope: !134, file: !1, line: 66, type: !31)
!145 = !DILocation(line: 66, column: 9, scope: !134)
!146 = !DILocation(line: 67, column: 5, scope: !134)
!147 = !DILocation(line: 67, column: 12, scope: !134)
!148 = !DILocation(line: 67, column: 16, scope: !134)
!149 = !DILocation(line: 67, column: 19, scope: !134)
!150 = !DILocation(line: 67, column: 26, scope: !134)
!151 = distinct !{!151, !146, !150, !152}
!152 = !{!"llvm.loop.mustprogress"}
!153 = !DILocation(line: 68, column: 12, scope: !134)
!154 = !DILocation(line: 68, column: 5, scope: !134)
!155 = !DILocation(line: 69, column: 1, scope: !134)
!156 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 71, type: !157, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!157 = !DISubroutineType(types: !158)
!158 = !{!3, !7}
!159 = !DILocalVariable(name: "size", arg: 1, scope: !156, file: !1, line: 71, type: !7)
!160 = !DILocation(line: 71, column: 24, scope: !156)
!161 = !DILocation(line: 72, column: 19, scope: !156)
!162 = !DILocation(line: 72, column: 12, scope: !156)
!163 = !DILocation(line: 72, column: 5, scope: !156)
!164 = distinct !DISubprogram(name: "xmlErrMemory", scope: !1, file: !1, line: 75, type: !165, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !3, !3}
!167 = !DILocalVariable(name: "ctx", arg: 1, scope: !164, file: !1, line: 75, type: !3)
!168 = !DILocation(line: 75, column: 25, scope: !164)
!169 = !DILocalVariable(name: "extra", arg: 2, scope: !164, file: !1, line: 75, type: !3)
!170 = !DILocation(line: 75, column: 36, scope: !164)
!171 = !DILocation(line: 77, column: 1, scope: !164)
!172 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 54, type: !173, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!173 = !DISubroutineType(types: !174)
!174 = !{!4, !23, !31}
!175 = !DILocalVariable(name: "cur", arg: 1, scope: !172, file: !1, line: 54, type: !23)
!176 = !DILocation(line: 54, column: 36, scope: !172)
!177 = !DILocalVariable(name: "len", arg: 2, scope: !172, file: !1, line: 54, type: !31)
!178 = !DILocation(line: 54, column: 45, scope: !172)
!179 = !DILocation(line: 55, column: 9, scope: !180)
!180 = distinct !DILexicalBlock(scope: !172, file: !1, line: 55, column: 9)
!181 = !DILocation(line: 55, column: 13, scope: !180)
!182 = !DILocation(line: 55, column: 21, scope: !180)
!183 = !DILocation(line: 55, column: 24, scope: !180)
!184 = !DILocation(line: 55, column: 28, scope: !180)
!185 = !DILocation(line: 55, column: 9, scope: !172)
!186 = !DILocation(line: 55, column: 33, scope: !180)
!187 = !DILocalVariable(name: "copy", scope: !172, file: !1, line: 56, type: !4)
!188 = !DILocation(line: 56, column: 14, scope: !172)
!189 = !DILocation(line: 56, column: 38, scope: !172)
!190 = !DILocation(line: 56, column: 42, scope: !172)
!191 = !DILocation(line: 56, column: 31, scope: !172)
!192 = !DILocation(line: 57, column: 9, scope: !193)
!193 = distinct !DILexicalBlock(scope: !172, file: !1, line: 57, column: 9)
!194 = !DILocation(line: 57, column: 9, scope: !172)
!195 = !DILocation(line: 58, column: 16, scope: !196)
!196 = distinct !DILexicalBlock(scope: !193, file: !1, line: 57, column: 15)
!197 = !DILocation(line: 58, column: 22, scope: !196)
!198 = !DILocation(line: 58, column: 27, scope: !196)
!199 = !DILocation(line: 58, column: 9, scope: !196)
!200 = !DILocation(line: 59, column: 9, scope: !196)
!201 = !DILocation(line: 59, column: 14, scope: !196)
!202 = !DILocation(line: 59, column: 19, scope: !196)
!203 = !DILocation(line: 60, column: 5, scope: !196)
!204 = !DILocation(line: 61, column: 12, scope: !172)
!205 = !DILocation(line: 61, column: 5, scope: !172)
!206 = !DILocation(line: 62, column: 1, scope: !172)
!207 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 79, type: !208, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!208 = !DISubroutineType(types: !209)
!209 = !{!31}
!210 = !DILocalVariable(name: "cur_buf", scope: !207, file: !1, line: 81, type: !211)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 256)
!214 = !DILocation(line: 81, column: 13, scope: !207)
!215 = !DILocalVariable(name: "add_buf", scope: !207, file: !1, line: 82, type: !211)
!216 = !DILocation(line: 82, column: 13, scope: !207)
!217 = !DILocalVariable(name: "cur_len", scope: !207, file: !1, line: 83, type: !31)
!218 = !DILocation(line: 83, column: 9, scope: !207)
!219 = !DILocalVariable(name: "add_len", scope: !207, file: !1, line: 83, type: !31)
!220 = !DILocation(line: 83, column: 18, scope: !207)
!221 = !DILocation(line: 86, column: 24, scope: !207)
!222 = !DILocation(line: 86, column: 5, scope: !207)
!223 = !DILocation(line: 87, column: 24, scope: !207)
!224 = !DILocation(line: 87, column: 5, scope: !207)
!225 = !DILocation(line: 90, column: 17, scope: !207)
!226 = !DILocation(line: 90, column: 30, scope: !207)
!227 = !DILocation(line: 90, column: 5, scope: !207)
!228 = !DILocation(line: 91, column: 17, scope: !207)
!229 = !DILocation(line: 91, column: 30, scope: !207)
!230 = !DILocation(line: 91, column: 5, scope: !207)
!231 = !DILocation(line: 94, column: 13, scope: !207)
!232 = !DILocation(line: 95, column: 5, scope: !207)
!233 = !DILocation(line: 95, column: 12, scope: !207)
!234 = !DILocation(line: 95, column: 20, scope: !207)
!235 = !DILocation(line: 95, column: 26, scope: !207)
!236 = !DILocation(line: 95, column: 37, scope: !207)
!237 = !DILocation(line: 95, column: 29, scope: !207)
!238 = !DILocation(line: 95, column: 46, scope: !207)
!239 = !DILocation(line: 0, scope: !207)
!240 = !DILocation(line: 95, column: 59, scope: !207)
!241 = distinct !{!241, !232, !240, !152}
!242 = !DILocation(line: 96, column: 13, scope: !207)
!243 = !DILocation(line: 97, column: 5, scope: !207)
!244 = !DILocation(line: 97, column: 12, scope: !207)
!245 = !DILocation(line: 97, column: 20, scope: !207)
!246 = !DILocation(line: 97, column: 26, scope: !207)
!247 = !DILocation(line: 97, column: 37, scope: !207)
!248 = !DILocation(line: 97, column: 29, scope: !207)
!249 = !DILocation(line: 97, column: 46, scope: !207)
!250 = !DILocation(line: 97, column: 59, scope: !207)
!251 = distinct !{!251, !243, !250, !152}
!252 = !DILocation(line: 100, column: 17, scope: !207)
!253 = !DILocation(line: 100, column: 25, scope: !207)
!254 = !DILocation(line: 100, column: 30, scope: !207)
!255 = !DILocation(line: 100, column: 33, scope: !207)
!256 = !DILocation(line: 100, column: 41, scope: !207)
!257 = !DILocation(line: 100, column: 5, scope: !207)
!258 = !DILocation(line: 101, column: 17, scope: !207)
!259 = !DILocation(line: 101, column: 25, scope: !207)
!260 = !DILocation(line: 101, column: 30, scope: !207)
!261 = !DILocation(line: 101, column: 33, scope: !207)
!262 = !DILocation(line: 101, column: 41, scope: !207)
!263 = !DILocation(line: 101, column: 5, scope: !207)
!264 = !DILocalVariable(name: "result", scope: !207, file: !1, line: 104, type: !4)
!265 = !DILocation(line: 104, column: 14, scope: !207)
!266 = !DILocation(line: 104, column: 33, scope: !207)
!267 = !DILocation(line: 104, column: 42, scope: !207)
!268 = !DILocation(line: 104, column: 23, scope: !207)
!269 = !DILocation(line: 113, column: 5, scope: !207)
!270 = !DILocation(line: 116, column: 5, scope: !207)
!271 = !DILocation(line: 119, column: 9, scope: !272)
!272 = distinct !DILexicalBlock(scope: !207, file: !1, line: 119, column: 9)
!273 = !DILocation(line: 119, column: 9, scope: !207)
!274 = !DILocation(line: 119, column: 22, scope: !272)
!275 = !DILocation(line: 119, column: 17, scope: !272)
!276 = !DILocation(line: 121, column: 5, scope: !207)
!277 = distinct !DISubprogram(name: "memcpy", scope: !278, file: !278, line: 12, type: !279, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !25)
!278 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!279 = !DISubroutineType(types: !280)
!280 = !{!3, !3, !281, !7}
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!283 = !DILocalVariable(name: "destaddr", arg: 1, scope: !277, file: !278, line: 12, type: !3)
!284 = !DILocation(line: 12, column: 20, scope: !277)
!285 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !277, file: !278, line: 12, type: !281)
!286 = !DILocation(line: 12, column: 42, scope: !277)
!287 = !DILocalVariable(name: "len", arg: 3, scope: !277, file: !278, line: 12, type: !7)
!288 = !DILocation(line: 12, column: 58, scope: !277)
!289 = !DILocalVariable(name: "dest", scope: !277, file: !278, line: 13, type: !290)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!292 = !DILocation(line: 13, column: 9, scope: !277)
!293 = !DILocation(line: 13, column: 16, scope: !277)
!294 = !DILocalVariable(name: "src", scope: !277, file: !278, line: 14, type: !295)
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!297 = !DILocation(line: 14, column: 15, scope: !277)
!298 = !DILocation(line: 14, column: 21, scope: !277)
!299 = !DILocation(line: 16, column: 3, scope: !277)
!300 = !DILocation(line: 16, column: 13, scope: !277)
!301 = !DILocation(line: 16, column: 16, scope: !277)
!302 = !DILocation(line: 17, column: 19, scope: !277)
!303 = !DILocation(line: 17, column: 15, scope: !277)
!304 = !DILocation(line: 17, column: 10, scope: !277)
!305 = !DILocation(line: 17, column: 13, scope: !277)
!306 = distinct !{!306, !299, !302, !152}
!307 = !DILocation(line: 18, column: 10, scope: !277)
!308 = !DILocation(line: 18, column: 3, scope: !277)

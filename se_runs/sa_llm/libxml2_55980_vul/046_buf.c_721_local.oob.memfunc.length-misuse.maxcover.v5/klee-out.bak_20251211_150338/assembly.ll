; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(buf->use <= (start_buf + buf->size)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [44 x i8] c"int target_function(xmlBuf *, unsigned int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"newSize\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufMemoryError(%struct._xmlBuf* noundef %0, i8* noundef %1) #0 !dbg !17 {
  %3 = alloca %struct._xmlBuf*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !39 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !45, metadata !DIExpression()), !dbg !46
  store i64 %1, i64* %4, align 8
  call void @llvm.dbg.declare(metadata i64* %4, metadata !47, metadata !DIExpression()), !dbg !48
  ret i8* null, !dbg !49
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @target_function(%struct._xmlBuf* noundef %0, i32 noundef %1) #0 !dbg !50 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i8** %6, metadata !58, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %7, metadata !60, metadata !DIExpression()), !dbg !61
  %8 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !62
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %8, i32 0, i32 4, !dbg !64
  %10 = load i32, i32* %9, align 8, !dbg !64
  %11 = icmp eq i32 %10, 2, !dbg !65
  br i1 %11, label %12, label %91, !dbg !66

12:                                               ; preds = %2
  %13 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !67
  %14 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %13, i32 0, i32 1, !dbg !68
  %15 = load i8*, i8** %14, align 8, !dbg !68
  %16 = icmp ne i8* %15, null, !dbg !69
  br i1 %16, label %17, label %91, !dbg !70

17:                                               ; preds = %12
  %18 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !71
  %19 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %18, i32 0, i32 0, !dbg !73
  %20 = load i8*, i8** %19, align 8, !dbg !73
  %21 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !74
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %21, i32 0, i32 1, !dbg !75
  %23 = load i8*, i8** %22, align 8, !dbg !75
  %24 = ptrtoint i8* %20 to i64, !dbg !76
  %25 = ptrtoint i8* %23 to i64, !dbg !76
  %26 = sub i64 %24, %25, !dbg !76
  %27 = trunc i64 %26 to i32, !dbg !71
  store i32 %27, i32* %7, align 4, !dbg !77
  %28 = load i32, i32* %7, align 4, !dbg !78
  %29 = load i32, i32* %5, align 4, !dbg !80
  %30 = icmp ugt i32 %28, %29, !dbg !81
  br i1 %30, label %31, label %76, !dbg !82

31:                                               ; preds = %17
  %32 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !83
  %33 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %32, i32 0, i32 1, !dbg !85
  %34 = load i8*, i8** %33, align 8, !dbg !85
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !86
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %35, i32 0, i32 0, !dbg !87
  %37 = load i8*, i8** %36, align 8, !dbg !87
  %38 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !88
  %39 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %38, i32 0, i32 2, !dbg !89
  %40 = load i32, i32* %39, align 8, !dbg !89
  %41 = zext i32 %40 to i64, !dbg !88
  %42 = call i8* @memmove(i8* %34, i8* %37, i64 %41), !dbg !90
  %43 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !91
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %43, i32 0, i32 2, !dbg !91
  %45 = load i32, i32* %44, align 8, !dbg !91
  %46 = load i32, i32* %7, align 4, !dbg !91
  %47 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !91
  %48 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %47, i32 0, i32 3, !dbg !91
  %49 = load i32, i32* %48, align 4, !dbg !91
  %50 = add i32 %46, %49, !dbg !91
  %51 = icmp ule i32 %45, %50, !dbg !91
  br i1 %51, label %52, label %54, !dbg !91

52:                                               ; preds = %31
  br i1 true, label %53, label %54, !dbg !91

53:                                               ; preds = %52
  br label %56, !dbg !91

54:                                               ; preds = %52, %31
  %55 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !91
  br label %56, !dbg !91

56:                                               ; preds = %54, %53
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !92
  %58 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !93
  %59 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %58, i32 0, i32 1, !dbg !94
  %60 = load i8*, i8** %59, align 8, !dbg !94
  %61 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !95
  %62 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %61, i32 0, i32 0, !dbg !96
  store i8* %60, i8** %62, align 8, !dbg !97
  %63 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !98
  %64 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %63, i32 0, i32 0, !dbg !99
  %65 = load i8*, i8** %64, align 8, !dbg !99
  %66 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !100
  %67 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %66, i32 0, i32 2, !dbg !101
  %68 = load i32, i32* %67, align 8, !dbg !101
  %69 = zext i32 %68 to i64, !dbg !98
  %70 = getelementptr inbounds i8, i8* %65, i64 %69, !dbg !98
  store i8 0, i8* %70, align 1, !dbg !102
  %71 = load i32, i32* %7, align 4, !dbg !103
  %72 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !104
  %73 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %72, i32 0, i32 3, !dbg !105
  %74 = load i32, i32* %73, align 4, !dbg !106
  %75 = add i32 %74, %71, !dbg !106
  store i32 %75, i32* %73, align 4, !dbg !106
  br label %90, !dbg !107

76:                                               ; preds = %17
  %77 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !108
  %78 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %77, i32 0, i32 1, !dbg !110
  %79 = load i8*, i8** %78, align 8, !dbg !110
  %80 = load i32, i32* %7, align 4, !dbg !111
  %81 = load i32, i32* %5, align 4, !dbg !112
  %82 = add i32 %80, %81, !dbg !113
  %83 = zext i32 %82 to i64, !dbg !111
  %84 = call i8* @xmlRealloc(i8* noundef %79, i64 noundef %83), !dbg !114
  store i8* %84, i8** %6, align 8, !dbg !115
  %85 = load i8*, i8** %6, align 8, !dbg !116
  %86 = icmp eq i8* %85, null, !dbg !118
  br i1 %86, label %87, label %89, !dbg !119

87:                                               ; preds = %76
  %88 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !120
  call void @xmlBufMemoryError(%struct._xmlBuf* noundef %88, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0)), !dbg !122
  store i32 0, i32* %3, align 4, !dbg !123
  br label %92, !dbg !123

89:                                               ; preds = %76
  br label %90

90:                                               ; preds = %89, %56
  br label %91, !dbg !124

91:                                               ; preds = %90, %12, %2
  store i32 1, i32* %3, align 4, !dbg !125
  br label %92, !dbg !125

92:                                               ; preds = %91, %87
  %93 = load i32, i32* %3, align 4, !dbg !126
  ret i32 %93, !dbg !126
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !127 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !130, metadata !DIExpression()), !dbg !131
  call void @llvm.dbg.declare(metadata i32* %3, metadata !132, metadata !DIExpression()), !dbg !133
  %5 = bitcast %struct._xmlBuf* %2 to i8*, !dbg !134
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !135
  %6 = bitcast i32* %3 to i8*, !dbg !136
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !137
  %7 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 4, !dbg !138
  %8 = load i32, i32* %7, align 8, !dbg !138
  %9 = icmp eq i32 %8, 2, !dbg !139
  %10 = zext i1 %9 to i32, !dbg !139
  %11 = sext i32 %10 to i64, !dbg !140
  call void @klee_assume(i64 noundef %11), !dbg !141
  %12 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !142
  %13 = load i8*, i8** %12, align 8, !dbg !142
  %14 = icmp ne i8* %13, null, !dbg !143
  %15 = zext i1 %14 to i32, !dbg !143
  %16 = sext i32 %15 to i64, !dbg !144
  call void @klee_assume(i64 noundef %16), !dbg !145
  %17 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !146
  %18 = load i8*, i8** %17, align 8, !dbg !146
  %19 = icmp ne i8* %18, null, !dbg !147
  %20 = zext i1 %19 to i32, !dbg !147
  %21 = sext i32 %20 to i64, !dbg !148
  call void @klee_assume(i64 noundef %21), !dbg !149
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !150
  %23 = load i8*, i8** %22, align 8, !dbg !150
  %24 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !151
  %25 = load i8*, i8** %24, align 8, !dbg !151
  %26 = icmp uge i8* %23, %25, !dbg !152
  %27 = zext i1 %26 to i32, !dbg !152
  %28 = sext i32 %27 to i64, !dbg !153
  call void @klee_assume(i64 noundef %28), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %4, metadata !155, metadata !DIExpression()), !dbg !156
  %29 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !157
  %30 = load i8*, i8** %29, align 8, !dbg !157
  %31 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !158
  %32 = load i8*, i8** %31, align 8, !dbg !158
  %33 = ptrtoint i8* %30 to i64, !dbg !159
  %34 = ptrtoint i8* %32 to i64, !dbg !159
  %35 = sub i64 %33, %34, !dbg !159
  %36 = trunc i64 %35 to i32, !dbg !160
  store i32 %36, i32* %4, align 4, !dbg !156
  %37 = load i32, i32* %4, align 4, !dbg !161
  %38 = load i32, i32* %3, align 4, !dbg !162
  %39 = icmp ugt i32 %37, %38, !dbg !163
  %40 = zext i1 %39 to i32, !dbg !163
  %41 = sext i32 %40 to i64, !dbg !161
  call void @klee_assume(i64 noundef %41), !dbg !164
  %42 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !165
  %43 = load i32, i32* %42, align 8, !dbg !165
  %44 = icmp ult i32 %43, 4096, !dbg !166
  %45 = zext i1 %44 to i32, !dbg !166
  %46 = sext i32 %45 to i64, !dbg !167
  call void @klee_assume(i64 noundef %46), !dbg !168
  %47 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 3, !dbg !169
  %48 = load i32, i32* %47, align 4, !dbg !169
  %49 = icmp ugt i32 %48, 0, !dbg !170
  %50 = zext i1 %49 to i32, !dbg !170
  %51 = sext i32 %50 to i64, !dbg !171
  call void @klee_assume(i64 noundef %51), !dbg !172
  %52 = load i32, i32* %3, align 4, !dbg !173
  %53 = call i32 @target_function(%struct._xmlBuf* noundef %2, i32 noundef %52), !dbg !174
  ret i32 0, !dbg !175
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !176 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !182, metadata !DIExpression()), !dbg !183
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !184, metadata !DIExpression()), !dbg !185
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !186, metadata !DIExpression()), !dbg !187
  call void @llvm.dbg.declare(metadata i8** %8, metadata !188, metadata !DIExpression()), !dbg !190
  %10 = load i8*, i8** %5, align 8, !dbg !191
  store i8* %10, i8** %8, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %9, metadata !192, metadata !DIExpression()), !dbg !193
  %11 = load i8*, i8** %6, align 8, !dbg !194
  store i8* %11, i8** %9, align 8, !dbg !193
  %12 = load i8*, i8** %6, align 8, !dbg !195
  %13 = load i8*, i8** %5, align 8, !dbg !197
  %14 = icmp eq i8* %12, %13, !dbg !198
  br i1 %14, label %15, label %17, !dbg !199

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !200
  store i8* %16, i8** %4, align 8, !dbg !201
  br label %52, !dbg !201

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !202
  %19 = load i8*, i8** %5, align 8, !dbg !204
  %20 = icmp ugt i8* %18, %19, !dbg !205
  br i1 %20, label %21, label %31, !dbg !206

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !207
  %23 = add i64 %22, -1, !dbg !207
  store i64 %23, i64* %7, align 8, !dbg !207
  %24 = icmp ne i64 %22, 0, !dbg !209
  br i1 %24, label %25, label %50, !dbg !209

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !210
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !210
  store i8* %27, i8** %9, align 8, !dbg !210
  %28 = load i8, i8* %26, align 1, !dbg !211
  %29 = load i8*, i8** %8, align 8, !dbg !212
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !212
  store i8* %30, i8** %8, align 8, !dbg !212
  store i8 %28, i8* %29, align 1, !dbg !213
  br label %21, !dbg !209, !llvm.loop !214

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !216
  %33 = sub i64 %32, 1, !dbg !218
  %34 = load i8*, i8** %8, align 8, !dbg !219
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !219
  store i8* %35, i8** %8, align 8, !dbg !219
  %36 = load i64, i64* %7, align 8, !dbg !220
  %37 = sub i64 %36, 1, !dbg !221
  %38 = load i8*, i8** %9, align 8, !dbg !222
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !222
  store i8* %39, i8** %9, align 8, !dbg !222
  br label %40, !dbg !223

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !224
  %42 = add i64 %41, -1, !dbg !224
  store i64 %42, i64* %7, align 8, !dbg !224
  %43 = icmp ne i64 %41, 0, !dbg !223
  br i1 %43, label %44, label %50, !dbg !223

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !225
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !225
  store i8* %46, i8** %9, align 8, !dbg !225
  %47 = load i8, i8* %45, align 1, !dbg !226
  %48 = load i8*, i8** %8, align 8, !dbg !227
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !227
  store i8* %49, i8** %8, align 8, !dbg !227
  store i8 %47, i8* %48, align 1, !dbg !228
  br label %40, !dbg !223, !llvm.loop !229

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !230
  store i8* %51, i8** %4, align 8, !dbg !231
  br label %52, !dbg !231

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !232
  ret i8* %53, !dbg !232
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/046_buf.c_721_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "30baa40dae4eef9b988f6e320b1d01e7")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlBufMemoryError", scope: !1, file: !1, line: 21, type: !18, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !30}
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 11, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 12, size: 256, elements: !23)
!23 = !{!24, !25, !26, !28, !29}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !22, file: !1, line: 13, baseType: !4, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !22, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !22, file: !1, line: 15, baseType: !27, size: 32, offset: 128)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !22, file: !1, line: 16, baseType: !27, size: 32, offset: 160)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !22, file: !1, line: 17, baseType: !27, size: 32, offset: 192)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!33 = !{}
!34 = !DILocalVariable(name: "buf", arg: 1, scope: !17, file: !1, line: 21, type: !20)
!35 = !DILocation(line: 21, column: 32, scope: !17)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !17, file: !1, line: 21, type: !30)
!37 = !DILocation(line: 21, column: 49, scope: !17)
!38 = !DILocation(line: 23, column: 1, scope: !17)
!39 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 26, type: !40, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!40 = !DISubroutineType(types: !41)
!41 = !{!3, !3, !42}
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !43, line: 46, baseType: !44)
!43 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!44 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!45 = !DILocalVariable(name: "ptr", arg: 1, scope: !39, file: !1, line: 26, type: !3)
!46 = !DILocation(line: 26, column: 24, scope: !39)
!47 = !DILocalVariable(name: "size", arg: 2, scope: !39, file: !1, line: 26, type: !42)
!48 = !DILocation(line: 26, column: 36, scope: !39)
!49 = !DILocation(line: 28, column: 5, scope: !39)
!50 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !51, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!51 = !DISubroutineType(types: !52)
!52 = !{!53, !20, !27}
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocalVariable(name: "buf", arg: 1, scope: !50, file: !1, line: 35, type: !20)
!55 = !DILocation(line: 35, column: 29, scope: !50)
!56 = !DILocalVariable(name: "newSize", arg: 2, scope: !50, file: !1, line: 35, type: !27)
!57 = !DILocation(line: 35, column: 47, scope: !50)
!58 = !DILocalVariable(name: "rebuf", scope: !50, file: !1, line: 36, type: !4)
!59 = !DILocation(line: 36, column: 14, scope: !50)
!60 = !DILocalVariable(name: "start_buf", scope: !50, file: !1, line: 37, type: !27)
!61 = !DILocation(line: 37, column: 18, scope: !50)
!62 = !DILocation(line: 39, column: 10, scope: !63)
!63 = distinct !DILexicalBlock(scope: !50, file: !1, line: 39, column: 9)
!64 = !DILocation(line: 39, column: 15, scope: !63)
!65 = !DILocation(line: 39, column: 21, scope: !63)
!66 = !DILocation(line: 39, column: 45, scope: !63)
!67 = !DILocation(line: 39, column: 49, scope: !63)
!68 = !DILocation(line: 39, column: 54, scope: !63)
!69 = !DILocation(line: 39, column: 64, scope: !63)
!70 = !DILocation(line: 39, column: 9, scope: !50)
!71 = !DILocation(line: 40, column: 21, scope: !72)
!72 = distinct !DILexicalBlock(scope: !63, file: !1, line: 39, column: 74)
!73 = !DILocation(line: 40, column: 26, scope: !72)
!74 = !DILocation(line: 40, column: 36, scope: !72)
!75 = !DILocation(line: 40, column: 41, scope: !72)
!76 = !DILocation(line: 40, column: 34, scope: !72)
!77 = !DILocation(line: 40, column: 19, scope: !72)
!78 = !DILocation(line: 42, column: 13, scope: !79)
!79 = distinct !DILexicalBlock(scope: !72, file: !1, line: 42, column: 13)
!80 = !DILocation(line: 42, column: 25, scope: !79)
!81 = !DILocation(line: 42, column: 23, scope: !79)
!82 = !DILocation(line: 42, column: 13, scope: !72)
!83 = !DILocation(line: 45, column: 21, scope: !84)
!84 = distinct !DILexicalBlock(scope: !79, file: !1, line: 42, column: 34)
!85 = !DILocation(line: 45, column: 26, scope: !84)
!86 = !DILocation(line: 45, column: 37, scope: !84)
!87 = !DILocation(line: 45, column: 42, scope: !84)
!88 = !DILocation(line: 45, column: 51, scope: !84)
!89 = !DILocation(line: 45, column: 56, scope: !84)
!90 = !DILocation(line: 45, column: 13, scope: !84)
!91 = !DILocation(line: 48, column: 13, scope: !84)
!92 = !DILocation(line: 51, column: 13, scope: !84)
!93 = !DILocation(line: 53, column: 28, scope: !84)
!94 = !DILocation(line: 53, column: 33, scope: !84)
!95 = !DILocation(line: 53, column: 13, scope: !84)
!96 = !DILocation(line: 53, column: 18, scope: !84)
!97 = !DILocation(line: 53, column: 26, scope: !84)
!98 = !DILocation(line: 54, column: 13, scope: !84)
!99 = !DILocation(line: 54, column: 18, scope: !84)
!100 = !DILocation(line: 54, column: 26, scope: !84)
!101 = !DILocation(line: 54, column: 31, scope: !84)
!102 = !DILocation(line: 54, column: 36, scope: !84)
!103 = !DILocation(line: 55, column: 26, scope: !84)
!104 = !DILocation(line: 55, column: 13, scope: !84)
!105 = !DILocation(line: 55, column: 18, scope: !84)
!106 = !DILocation(line: 55, column: 23, scope: !84)
!107 = !DILocation(line: 56, column: 9, scope: !84)
!108 = !DILocation(line: 57, column: 44, scope: !109)
!109 = distinct !DILexicalBlock(scope: !79, file: !1, line: 56, column: 16)
!110 = !DILocation(line: 57, column: 49, scope: !109)
!111 = !DILocation(line: 57, column: 60, scope: !109)
!112 = !DILocation(line: 57, column: 72, scope: !109)
!113 = !DILocation(line: 57, column: 70, scope: !109)
!114 = !DILocation(line: 57, column: 33, scope: !109)
!115 = !DILocation(line: 57, column: 19, scope: !109)
!116 = !DILocation(line: 58, column: 17, scope: !117)
!117 = distinct !DILexicalBlock(scope: !109, file: !1, line: 58, column: 17)
!118 = !DILocation(line: 58, column: 23, scope: !117)
!119 = !DILocation(line: 58, column: 17, scope: !109)
!120 = !DILocation(line: 59, column: 35, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 58, column: 32)
!122 = !DILocation(line: 59, column: 17, scope: !121)
!123 = !DILocation(line: 60, column: 17, scope: !121)
!124 = !DILocation(line: 63, column: 5, scope: !72)
!125 = !DILocation(line: 64, column: 5, scope: !50)
!126 = !DILocation(line: 65, column: 1, scope: !50)
!127 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !128, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!128 = !DISubroutineType(types: !129)
!129 = !{!53}
!130 = !DILocalVariable(name: "buf", scope: !127, file: !1, line: 68, type: !21)
!131 = !DILocation(line: 68, column: 12, scope: !127)
!132 = !DILocalVariable(name: "newSize", scope: !127, file: !1, line: 69, type: !27)
!133 = !DILocation(line: 69, column: 18, scope: !127)
!134 = !DILocation(line: 72, column: 24, scope: !127)
!135 = !DILocation(line: 72, column: 5, scope: !127)
!136 = !DILocation(line: 73, column: 24, scope: !127)
!137 = !DILocation(line: 73, column: 5, scope: !127)
!138 = !DILocation(line: 76, column: 21, scope: !127)
!139 = !DILocation(line: 76, column: 27, scope: !127)
!140 = !DILocation(line: 76, column: 17, scope: !127)
!141 = !DILocation(line: 76, column: 5, scope: !127)
!142 = !DILocation(line: 77, column: 21, scope: !127)
!143 = !DILocation(line: 77, column: 31, scope: !127)
!144 = !DILocation(line: 77, column: 17, scope: !127)
!145 = !DILocation(line: 77, column: 5, scope: !127)
!146 = !DILocation(line: 78, column: 21, scope: !127)
!147 = !DILocation(line: 78, column: 29, scope: !127)
!148 = !DILocation(line: 78, column: 17, scope: !127)
!149 = !DILocation(line: 78, column: 5, scope: !127)
!150 = !DILocation(line: 81, column: 21, scope: !127)
!151 = !DILocation(line: 81, column: 36, scope: !127)
!152 = !DILocation(line: 81, column: 29, scope: !127)
!153 = !DILocation(line: 81, column: 17, scope: !127)
!154 = !DILocation(line: 81, column: 5, scope: !127)
!155 = !DILocalVariable(name: "start_buf", scope: !127, file: !1, line: 84, type: !27)
!156 = !DILocation(line: 84, column: 18, scope: !127)
!157 = !DILocation(line: 84, column: 34, scope: !127)
!158 = !DILocation(line: 84, column: 48, scope: !127)
!159 = !DILocation(line: 84, column: 42, scope: !127)
!160 = !DILocation(line: 84, column: 30, scope: !127)
!161 = !DILocation(line: 87, column: 17, scope: !127)
!162 = !DILocation(line: 87, column: 29, scope: !127)
!163 = !DILocation(line: 87, column: 27, scope: !127)
!164 = !DILocation(line: 87, column: 5, scope: !127)
!165 = !DILocation(line: 90, column: 21, scope: !127)
!166 = !DILocation(line: 90, column: 25, scope: !127)
!167 = !DILocation(line: 90, column: 17, scope: !127)
!168 = !DILocation(line: 90, column: 5, scope: !127)
!169 = !DILocation(line: 93, column: 21, scope: !127)
!170 = !DILocation(line: 93, column: 26, scope: !127)
!171 = !DILocation(line: 93, column: 17, scope: !127)
!172 = !DILocation(line: 93, column: 5, scope: !127)
!173 = !DILocation(line: 96, column: 27, scope: !127)
!174 = !DILocation(line: 96, column: 5, scope: !127)
!175 = !DILocation(line: 98, column: 5, scope: !127)
!176 = distinct !DISubprogram(name: "memmove", scope: !177, file: !177, line: 12, type: !178, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !33)
!177 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!178 = !DISubroutineType(types: !179)
!179 = !{!3, !3, !180, !42}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!182 = !DILocalVariable(name: "dst", arg: 1, scope: !176, file: !177, line: 12, type: !3)
!183 = !DILocation(line: 12, column: 21, scope: !176)
!184 = !DILocalVariable(name: "src", arg: 2, scope: !176, file: !177, line: 12, type: !180)
!185 = !DILocation(line: 12, column: 38, scope: !176)
!186 = !DILocalVariable(name: "count", arg: 3, scope: !176, file: !177, line: 12, type: !42)
!187 = !DILocation(line: 12, column: 50, scope: !176)
!188 = !DILocalVariable(name: "a", scope: !176, file: !177, line: 13, type: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!190 = !DILocation(line: 13, column: 9, scope: !176)
!191 = !DILocation(line: 13, column: 13, scope: !176)
!192 = !DILocalVariable(name: "b", scope: !176, file: !177, line: 14, type: !30)
!193 = !DILocation(line: 14, column: 15, scope: !176)
!194 = !DILocation(line: 14, column: 19, scope: !176)
!195 = !DILocation(line: 16, column: 7, scope: !196)
!196 = distinct !DILexicalBlock(scope: !176, file: !177, line: 16, column: 7)
!197 = !DILocation(line: 16, column: 14, scope: !196)
!198 = !DILocation(line: 16, column: 11, scope: !196)
!199 = !DILocation(line: 16, column: 7, scope: !176)
!200 = !DILocation(line: 17, column: 12, scope: !196)
!201 = !DILocation(line: 17, column: 5, scope: !196)
!202 = !DILocation(line: 19, column: 7, scope: !203)
!203 = distinct !DILexicalBlock(scope: !176, file: !177, line: 19, column: 7)
!204 = !DILocation(line: 19, column: 13, scope: !203)
!205 = !DILocation(line: 19, column: 11, scope: !203)
!206 = !DILocation(line: 19, column: 7, scope: !176)
!207 = !DILocation(line: 20, column: 17, scope: !208)
!208 = distinct !DILexicalBlock(scope: !203, file: !177, line: 19, column: 18)
!209 = !DILocation(line: 20, column: 5, scope: !208)
!210 = !DILocation(line: 21, column: 16, scope: !208)
!211 = !DILocation(line: 21, column: 14, scope: !208)
!212 = !DILocation(line: 21, column: 9, scope: !208)
!213 = !DILocation(line: 21, column: 12, scope: !208)
!214 = distinct !{!214, !209, !210, !215}
!215 = !{!"llvm.loop.mustprogress"}
!216 = !DILocation(line: 23, column: 10, scope: !217)
!217 = distinct !DILexicalBlock(scope: !203, file: !177, line: 22, column: 10)
!218 = !DILocation(line: 23, column: 16, scope: !217)
!219 = !DILocation(line: 23, column: 7, scope: !217)
!220 = !DILocation(line: 24, column: 10, scope: !217)
!221 = !DILocation(line: 24, column: 16, scope: !217)
!222 = !DILocation(line: 24, column: 7, scope: !217)
!223 = !DILocation(line: 25, column: 5, scope: !217)
!224 = !DILocation(line: 25, column: 17, scope: !217)
!225 = !DILocation(line: 26, column: 16, scope: !217)
!226 = !DILocation(line: 26, column: 14, scope: !217)
!227 = !DILocation(line: 26, column: 9, scope: !217)
!228 = !DILocation(line: 26, column: 12, scope: !217)
!229 = distinct !{!229, !223, !225, !215}
!230 = !DILocation(line: 29, column: 10, scope: !176)
!231 = !DILocation(line: 29, column: 3, scope: !176)
!232 = !DILocation(line: 30, column: 1, scope: !176)

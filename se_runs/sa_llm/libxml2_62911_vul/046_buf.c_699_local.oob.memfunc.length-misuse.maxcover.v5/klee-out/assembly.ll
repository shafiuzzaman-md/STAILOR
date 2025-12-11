; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/046_buf.c_699_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/046_buf.c_699_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(buf->use <= (buf->size - start_buf)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_62911_vul/046_buf.c_699_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlBufAdd = private unnamed_addr constant [47 x i8] c"void xmlBufAdd(xmlBuf *, const xmlChar *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"buf_alloc\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"contentIO_size\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"start_offset\00", align 1
@.str.9 = private unnamed_addr constant [8 x i8] c"add_len\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"add_str\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i64 noundef %1) #0 !dbg !17 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !24, metadata !DIExpression()), !dbg !25
  store i64 %1, i64* %5, align 8
  call void @llvm.dbg.declare(metadata i64* %5, metadata !26, metadata !DIExpression()), !dbg !27
  %6 = load i64, i64* %5, align 8, !dbg !28
  %7 = icmp eq i64 %6, 0, !dbg !30
  br i1 %7, label %8, label %9, !dbg !31

8:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !32
  br label %13, !dbg !32

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !33
  %11 = load i64, i64* %5, align 8, !dbg !34
  %12 = call i8* @realloc(i8* noundef %10, i64 noundef %11) #7, !dbg !35
  store i8* %12, i8** %3, align 8, !dbg !36
  br label %13, !dbg !36

13:                                               ; preds = %9, %8
  %14 = load i8*, i8** %3, align 8, !dbg !37
  ret i8* %14, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufAdd(%struct._xmlBuf* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !38 {
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !58, metadata !DIExpression()), !dbg !59
  %9 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !60
  %10 = icmp eq %struct._xmlBuf* %9, null, !dbg !62
  br i1 %10, label %11, label %12, !dbg !63

11:                                               ; preds = %3
  br label %113, !dbg !64

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %7, metadata !65, metadata !DIExpression()), !dbg !66
  %13 = load i32, i32* %6, align 4, !dbg !67
  %14 = icmp slt i32 %13, 0, !dbg !69
  br i1 %14, label %15, label %16, !dbg !70

15:                                               ; preds = %12
  br label %113, !dbg !71

16:                                               ; preds = %12
  %17 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !72
  %18 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %17, i32 0, i32 2, !dbg !74
  %19 = load i32, i32* %18, align 8, !dbg !74
  %20 = load i32, i32* %6, align 4, !dbg !75
  %21 = add i32 %19, %20, !dbg !76
  %22 = add i32 %21, 1, !dbg !77
  %23 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !78
  %24 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %23, i32 0, i32 2, !dbg !79
  %25 = load i32, i32* %24, align 8, !dbg !79
  %26 = icmp ult i32 %22, %25, !dbg !80
  br i1 %26, label %27, label %28, !dbg !81

27:                                               ; preds = %16
  br label %113, !dbg !82

28:                                               ; preds = %16
  %29 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !83
  %30 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %29, i32 0, i32 2, !dbg !84
  %31 = load i32, i32* %30, align 8, !dbg !84
  %32 = load i32, i32* %6, align 4, !dbg !85
  %33 = add i32 %31, %32, !dbg !86
  %34 = add i32 %33, 1, !dbg !87
  store i32 %34, i32* %7, align 4, !dbg !88
  %35 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !89
  %36 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %35, i32 0, i32 4, !dbg !91
  %37 = load i32, i32* %36, align 8, !dbg !91
  %38 = icmp eq i32 %37, 1, !dbg !92
  br i1 %38, label %39, label %113, !dbg !93

39:                                               ; preds = %28
  %40 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !94
  %41 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %40, i32 0, i32 1, !dbg !95
  %42 = load i8*, i8** %41, align 8, !dbg !95
  %43 = icmp ne i8* %42, null, !dbg !96
  br i1 %43, label %44, label %113, !dbg !97

44:                                               ; preds = %39
  call void @llvm.dbg.declare(metadata i32* %8, metadata !98, metadata !DIExpression()), !dbg !100
  %45 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !101
  %46 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %45, i32 0, i32 0, !dbg !102
  %47 = load i8*, i8** %46, align 8, !dbg !102
  %48 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !103
  %49 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %48, i32 0, i32 1, !dbg !104
  %50 = load i8*, i8** %49, align 8, !dbg !104
  %51 = ptrtoint i8* %47 to i64, !dbg !105
  %52 = ptrtoint i8* %50 to i64, !dbg !105
  %53 = sub i64 %51, %52, !dbg !105
  %54 = trunc i64 %53 to i32, !dbg !101
  store i32 %54, i32* %8, align 4, !dbg !100
  %55 = load i32, i32* %8, align 4, !dbg !106
  %56 = load i32, i32* %7, align 4, !dbg !108
  %57 = icmp ugt i32 %55, %56, !dbg !109
  br i1 %57, label %58, label %103, !dbg !110

58:                                               ; preds = %44
  %59 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !111
  %60 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %59, i32 0, i32 1, !dbg !113
  %61 = load i8*, i8** %60, align 8, !dbg !113
  %62 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !114
  %63 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %62, i32 0, i32 0, !dbg !115
  %64 = load i8*, i8** %63, align 8, !dbg !115
  %65 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !116
  %66 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %65, i32 0, i32 2, !dbg !117
  %67 = load i32, i32* %66, align 8, !dbg !117
  %68 = zext i32 %67 to i64, !dbg !116
  %69 = call i8* @memmove(i8* %61, i8* %64, i64 %68), !dbg !118
  %70 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !119
  %71 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %70, i32 0, i32 1, !dbg !120
  %72 = load i8*, i8** %71, align 8, !dbg !120
  %73 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !121
  %74 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %73, i32 0, i32 0, !dbg !122
  store i8* %72, i8** %74, align 8, !dbg !123
  %75 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !124
  %76 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %75, i32 0, i32 0, !dbg !125
  %77 = load i8*, i8** %76, align 8, !dbg !125
  %78 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !126
  %79 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %78, i32 0, i32 2, !dbg !127
  %80 = load i32, i32* %79, align 8, !dbg !127
  %81 = zext i32 %80 to i64, !dbg !124
  %82 = getelementptr inbounds i8, i8* %77, i64 %81, !dbg !124
  store i8 0, i8* %82, align 1, !dbg !128
  %83 = load i32, i32* %8, align 4, !dbg !129
  %84 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !130
  %85 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %84, i32 0, i32 3, !dbg !131
  %86 = load i32, i32* %85, align 4, !dbg !132
  %87 = add i32 %86, %83, !dbg !132
  store i32 %87, i32* %85, align 4, !dbg !132
  %88 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !133
  %89 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %88, i32 0, i32 2, !dbg !133
  %90 = load i32, i32* %89, align 8, !dbg !133
  %91 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !133
  %92 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %91, i32 0, i32 3, !dbg !133
  %93 = load i32, i32* %92, align 4, !dbg !133
  %94 = load i32, i32* %8, align 4, !dbg !133
  %95 = sub i32 %93, %94, !dbg !133
  %96 = icmp ule i32 %90, %95, !dbg !133
  br i1 %96, label %97, label %99, !dbg !133

97:                                               ; preds = %58
  br i1 true, label %98, label %99, !dbg !133

98:                                               ; preds = %97
  br label %101, !dbg !133

99:                                               ; preds = %97, %58
  %100 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.xmlBufAdd, i64 0, i64 0)), !dbg !133
  br label %101, !dbg !133

101:                                              ; preds = %99, %98
  %102 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.2, i64 0, i64 0), i32 noundef 54, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.xmlBufAdd, i64 0, i64 0)), !dbg !134
  br label %112, !dbg !135

103:                                              ; preds = %44
  %104 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !136
  %105 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %104, i32 0, i32 1, !dbg !138
  %106 = load i8*, i8** %105, align 8, !dbg !138
  %107 = load i32, i32* %8, align 4, !dbg !139
  %108 = load i32, i32* %7, align 4, !dbg !140
  %109 = add i32 %107, %108, !dbg !141
  %110 = zext i32 %109 to i64, !dbg !139
  %111 = call i8* @xmlRealloc(i8* noundef %106, i64 noundef %110), !dbg !142
  br label %112

112:                                              ; preds = %103, %101
  br label %113, !dbg !143

113:                                              ; preds = %11, %15, %27, %112, %39, %28
  ret void, !dbg !144
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !145 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !148, metadata !DIExpression()), !dbg !149
  %7 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 4, !dbg !150
  %8 = bitcast i32* %7 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)), !dbg !152
  %9 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !153
  %10 = bitcast i32* %9 to i8*, !dbg !154
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !155
  %11 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 3, !dbg !156
  %12 = bitcast i32* %11 to i8*, !dbg !157
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0)), !dbg !158
  %13 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 4, !dbg !159
  %14 = load i32, i32* %13, align 8, !dbg !159
  %15 = icmp eq i32 %14, 1, !dbg !160
  %16 = zext i1 %15 to i32, !dbg !160
  %17 = sext i32 %16 to i64, !dbg !161
  call void @klee_assume(i64 noundef %17), !dbg !162
  %18 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !163
  %19 = load i32, i32* %18, align 8, !dbg !163
  %20 = icmp uge i32 %19, 0, !dbg !164
  br i1 %20, label %21, label %25, !dbg !165

21:                                               ; preds = %0
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !166
  %23 = load i32, i32* %22, align 8, !dbg !166
  %24 = icmp ult i32 %23, 4096, !dbg !167
  br label %25

25:                                               ; preds = %21, %0
  %26 = phi i1 [ false, %0 ], [ %24, %21 ], !dbg !168
  %27 = zext i1 %26 to i32, !dbg !165
  %28 = sext i32 %27 to i64, !dbg !169
  call void @klee_assume(i64 noundef %28), !dbg !170
  call void @llvm.dbg.declare(metadata i32* %3, metadata !171, metadata !DIExpression()), !dbg !172
  %29 = bitcast i32* %3 to i8*, !dbg !173
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.7, i64 0, i64 0)), !dbg !174
  %30 = load i32, i32* %3, align 4, !dbg !175
  %31 = icmp ugt i32 %30, 0, !dbg !176
  br i1 %31, label %32, label %35, !dbg !177

32:                                               ; preds = %25
  %33 = load i32, i32* %3, align 4, !dbg !178
  %34 = icmp ule i32 %33, 8192, !dbg !179
  br label %35

35:                                               ; preds = %32, %25
  %36 = phi i1 [ false, %25 ], [ %34, %32 ], !dbg !168
  %37 = zext i1 %36 to i32, !dbg !177
  %38 = sext i32 %37 to i64, !dbg !175
  call void @klee_assume(i64 noundef %38), !dbg !180
  %39 = load i32, i32* %3, align 4, !dbg !181
  %40 = zext i32 %39 to i64, !dbg !181
  %41 = call noalias i8* @malloc(i64 noundef %40) #7, !dbg !182
  %42 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !183
  store i8* %41, i8** %42, align 8, !dbg !184
  call void @llvm.dbg.declare(metadata i32* %4, metadata !185, metadata !DIExpression()), !dbg !186
  %43 = bitcast i32* %4 to i8*, !dbg !187
  call void @klee_make_symbolic(i8* noundef %43, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)), !dbg !188
  %44 = load i32, i32* %4, align 4, !dbg !189
  %45 = icmp sge i32 %44, 0, !dbg !190
  %46 = zext i1 %45 to i32, !dbg !190
  %47 = sext i32 %46 to i64, !dbg !189
  call void @klee_assume(i64 noundef %47), !dbg !191
  %48 = load i32, i32* %4, align 4, !dbg !192
  %49 = load i32, i32* %3, align 4, !dbg !193
  %50 = icmp ult i32 %48, %49, !dbg !194
  %51 = zext i1 %50 to i32, !dbg !194
  %52 = sext i32 %51 to i64, !dbg !192
  call void @klee_assume(i64 noundef %52), !dbg !195
  %53 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !196
  %54 = load i8*, i8** %53, align 8, !dbg !196
  %55 = load i32, i32* %4, align 4, !dbg !197
  %56 = sext i32 %55 to i64, !dbg !198
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !198
  %58 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !199
  store i8* %57, i8** %58, align 8, !dbg !200
  %59 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 3, !dbg !201
  %60 = load i32, i32* %59, align 4, !dbg !201
  %61 = load i32, i32* %3, align 4, !dbg !202
  %62 = icmp uge i32 %60, %61, !dbg !203
  %63 = zext i1 %62 to i32, !dbg !203
  %64 = sext i32 %63 to i64, !dbg !204
  call void @klee_assume(i64 noundef %64), !dbg !205
  %65 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !206
  %66 = load i32, i32* %65, align 8, !dbg !206
  %67 = load i32, i32* %3, align 4, !dbg !207
  %68 = load i32, i32* %4, align 4, !dbg !208
  %69 = sub i32 %67, %68, !dbg !209
  %70 = icmp ule i32 %66, %69, !dbg !210
  %71 = zext i1 %70 to i32, !dbg !210
  %72 = sext i32 %71 to i64, !dbg !211
  call void @klee_assume(i64 noundef %72), !dbg !212
  call void @llvm.dbg.declare(metadata i32* %5, metadata !213, metadata !DIExpression()), !dbg !214
  %73 = bitcast i32* %5 to i8*, !dbg !215
  call void @klee_make_symbolic(i8* noundef %73, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.9, i64 0, i64 0)), !dbg !216
  %74 = load i32, i32* %5, align 4, !dbg !217
  %75 = icmp sge i32 %74, 0, !dbg !218
  br i1 %75, label %76, label %79, !dbg !219

76:                                               ; preds = %35
  %77 = load i32, i32* %5, align 4, !dbg !220
  %78 = icmp slt i32 %77, 4096, !dbg !221
  br label %79

79:                                               ; preds = %76, %35
  %80 = phi i1 [ false, %35 ], [ %78, %76 ], !dbg !168
  %81 = zext i1 %80 to i32, !dbg !219
  %82 = sext i32 %81 to i64, !dbg !217
  call void @klee_assume(i64 noundef %82), !dbg !222
  call void @llvm.dbg.declare(metadata i8** %6, metadata !223, metadata !DIExpression()), !dbg !224
  %83 = load i32, i32* %5, align 4, !dbg !225
  %84 = add nsw i32 %83, 1, !dbg !226
  %85 = sext i32 %84 to i64, !dbg !225
  %86 = call noalias i8* @malloc(i64 noundef %85) #7, !dbg !227
  store i8* %86, i8** %6, align 8, !dbg !224
  %87 = load i8*, i8** %6, align 8, !dbg !228
  %88 = load i32, i32* %5, align 4, !dbg !229
  %89 = add nsw i32 %88, 1, !dbg !230
  %90 = sext i32 %89 to i64, !dbg !229
  call void @klee_make_symbolic(i8* noundef %87, i64 noundef %90, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)), !dbg !231
  %91 = load i8*, i8** %6, align 8, !dbg !232
  %92 = load i32, i32* %5, align 4, !dbg !233
  call void @xmlBufAdd(%struct._xmlBuf* noundef %2, i8* noundef %91, i32 noundef %92), !dbg !234
  %93 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !235
  %94 = load i8*, i8** %93, align 8, !dbg !235
  call void @free(i8* noundef %94) #7, !dbg !236
  %95 = load i8*, i8** %6, align 8, !dbg !237
  call void @free(i8* noundef %95) #7, !dbg !238
  ret i32 0, !dbg !239
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !240 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !246, metadata !DIExpression()), !dbg !247
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !248, metadata !DIExpression()), !dbg !249
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !250, metadata !DIExpression()), !dbg !251
  call void @llvm.dbg.declare(metadata i8** %8, metadata !252, metadata !DIExpression()), !dbg !255
  %10 = load i8*, i8** %5, align 8, !dbg !256
  store i8* %10, i8** %8, align 8, !dbg !255
  call void @llvm.dbg.declare(metadata i8** %9, metadata !257, metadata !DIExpression()), !dbg !260
  %11 = load i8*, i8** %6, align 8, !dbg !261
  store i8* %11, i8** %9, align 8, !dbg !260
  %12 = load i8*, i8** %6, align 8, !dbg !262
  %13 = load i8*, i8** %5, align 8, !dbg !264
  %14 = icmp eq i8* %12, %13, !dbg !265
  br i1 %14, label %15, label %17, !dbg !266

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !267
  store i8* %16, i8** %4, align 8, !dbg !268
  br label %52, !dbg !268

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !269
  %19 = load i8*, i8** %5, align 8, !dbg !271
  %20 = icmp ugt i8* %18, %19, !dbg !272
  br i1 %20, label %21, label %31, !dbg !273

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !274
  %23 = add i64 %22, -1, !dbg !274
  store i64 %23, i64* %7, align 8, !dbg !274
  %24 = icmp ne i64 %22, 0, !dbg !276
  br i1 %24, label %25, label %50, !dbg !276

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !277
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !277
  store i8* %27, i8** %9, align 8, !dbg !277
  %28 = load i8, i8* %26, align 1, !dbg !278
  %29 = load i8*, i8** %8, align 8, !dbg !279
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !279
  store i8* %30, i8** %8, align 8, !dbg !279
  store i8 %28, i8* %29, align 1, !dbg !280
  br label %21, !dbg !276, !llvm.loop !281

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !283
  %33 = sub i64 %32, 1, !dbg !285
  %34 = load i8*, i8** %8, align 8, !dbg !286
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !286
  store i8* %35, i8** %8, align 8, !dbg !286
  %36 = load i64, i64* %7, align 8, !dbg !287
  %37 = sub i64 %36, 1, !dbg !288
  %38 = load i8*, i8** %9, align 8, !dbg !289
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !289
  store i8* %39, i8** %9, align 8, !dbg !289
  br label %40, !dbg !290

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !291
  %42 = add i64 %41, -1, !dbg !291
  store i64 %42, i64* %7, align 8, !dbg !291
  %43 = icmp ne i64 %41, 0, !dbg !290
  br i1 %43, label %44, label %50, !dbg !290

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !292
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !292
  store i8* %46, i8** %9, align 8, !dbg !292
  %47 = load i8, i8* %45, align 1, !dbg !293
  %48 = load i8*, i8** %8, align 8, !dbg !294
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !294
  store i8* %49, i8** %8, align 8, !dbg !294
  store i8 %47, i8* %48, align 1, !dbg !295
  br label %40, !dbg !290, !llvm.loop !296

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !297
  store i8* %51, i8** %4, align 8, !dbg !298
  br label %52, !dbg !298

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !299
  ret i8* %53, !dbg !299
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/046_buf.c_699_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d45d44e45b1227e0450f27e6ddbbd654")
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
!17 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 23, type: !18, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!3, !3, !20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{}
!24 = !DILocalVariable(name: "ptr", arg: 1, scope: !17, file: !1, line: 23, type: !3)
!25 = !DILocation(line: 23, column: 24, scope: !17)
!26 = !DILocalVariable(name: "size", arg: 2, scope: !17, file: !1, line: 23, type: !20)
!27 = !DILocation(line: 23, column: 36, scope: !17)
!28 = !DILocation(line: 24, column: 9, scope: !29)
!29 = distinct !DILexicalBlock(scope: !17, file: !1, line: 24, column: 9)
!30 = !DILocation(line: 24, column: 14, scope: !29)
!31 = !DILocation(line: 24, column: 9, scope: !17)
!32 = !DILocation(line: 24, column: 20, scope: !29)
!33 = !DILocation(line: 25, column: 20, scope: !17)
!34 = !DILocation(line: 25, column: 25, scope: !17)
!35 = !DILocation(line: 25, column: 12, scope: !17)
!36 = !DILocation(line: 25, column: 5, scope: !17)
!37 = !DILocation(line: 26, column: 1, scope: !17)
!38 = distinct !DISubprogram(name: "xmlBufAdd", scope: !1, file: !1, line: 29, type: !39, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !51, !53}
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 11, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 12, size: 256, elements: !44)
!44 = !{!45, !46, !47, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !43, file: !1, line: 13, baseType: !4, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !43, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !43, file: !1, line: 15, baseType: !48, size: 32, offset: 128)
!48 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!49 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !1, line: 16, baseType: !48, size: 32, offset: 160)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !43, file: !1, line: 17, baseType: !48, size: 32, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!53 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!54 = !DILocalVariable(name: "buf", arg: 1, scope: !38, file: !1, line: 29, type: !41)
!55 = !DILocation(line: 29, column: 24, scope: !38)
!56 = !DILocalVariable(name: "str", arg: 2, scope: !38, file: !1, line: 29, type: !51)
!57 = !DILocation(line: 29, column: 44, scope: !38)
!58 = !DILocalVariable(name: "len", arg: 3, scope: !38, file: !1, line: 29, type: !53)
!59 = !DILocation(line: 29, column: 53, scope: !38)
!60 = !DILocation(line: 31, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !38, file: !1, line: 31, column: 9)
!62 = !DILocation(line: 31, column: 13, scope: !61)
!63 = !DILocation(line: 31, column: 9, scope: !38)
!64 = !DILocation(line: 31, column: 22, scope: !61)
!65 = !DILocalVariable(name: "newSize", scope: !38, file: !1, line: 33, type: !48)
!66 = !DILocation(line: 33, column: 18, scope: !38)
!67 = !DILocation(line: 34, column: 9, scope: !68)
!68 = distinct !DILexicalBlock(scope: !38, file: !1, line: 34, column: 9)
!69 = !DILocation(line: 34, column: 13, scope: !68)
!70 = !DILocation(line: 34, column: 9, scope: !38)
!71 = !DILocation(line: 34, column: 18, scope: !68)
!72 = !DILocation(line: 36, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !38, file: !1, line: 36, column: 9)
!74 = !DILocation(line: 36, column: 14, scope: !73)
!75 = !DILocation(line: 36, column: 20, scope: !73)
!76 = !DILocation(line: 36, column: 18, scope: !73)
!77 = !DILocation(line: 36, column: 24, scope: !73)
!78 = !DILocation(line: 36, column: 30, scope: !73)
!79 = !DILocation(line: 36, column: 35, scope: !73)
!80 = !DILocation(line: 36, column: 28, scope: !73)
!81 = !DILocation(line: 36, column: 9, scope: !38)
!82 = !DILocation(line: 36, column: 40, scope: !73)
!83 = !DILocation(line: 37, column: 15, scope: !38)
!84 = !DILocation(line: 37, column: 20, scope: !38)
!85 = !DILocation(line: 37, column: 26, scope: !38)
!86 = !DILocation(line: 37, column: 24, scope: !38)
!87 = !DILocation(line: 37, column: 30, scope: !38)
!88 = !DILocation(line: 37, column: 13, scope: !38)
!89 = !DILocation(line: 40, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !38, file: !1, line: 40, column: 9)
!91 = !DILocation(line: 40, column: 15, scope: !90)
!92 = !DILocation(line: 40, column: 21, scope: !90)
!93 = !DILocation(line: 40, column: 45, scope: !90)
!94 = !DILocation(line: 40, column: 49, scope: !90)
!95 = !DILocation(line: 40, column: 54, scope: !90)
!96 = !DILocation(line: 40, column: 64, scope: !90)
!97 = !DILocation(line: 40, column: 9, scope: !38)
!98 = !DILocalVariable(name: "start_buf", scope: !99, file: !1, line: 41, type: !53)
!99 = distinct !DILexicalBlock(scope: !90, file: !1, line: 40, column: 74)
!100 = !DILocation(line: 41, column: 13, scope: !99)
!101 = !DILocation(line: 41, column: 25, scope: !99)
!102 = !DILocation(line: 41, column: 30, scope: !99)
!103 = !DILocation(line: 41, column: 40, scope: !99)
!104 = !DILocation(line: 41, column: 45, scope: !99)
!105 = !DILocation(line: 41, column: 38, scope: !99)
!106 = !DILocation(line: 43, column: 13, scope: !107)
!107 = distinct !DILexicalBlock(scope: !99, file: !1, line: 43, column: 13)
!108 = !DILocation(line: 43, column: 25, scope: !107)
!109 = !DILocation(line: 43, column: 23, scope: !107)
!110 = !DILocation(line: 43, column: 13, scope: !99)
!111 = !DILocation(line: 45, column: 21, scope: !112)
!112 = distinct !DILexicalBlock(scope: !107, file: !1, line: 43, column: 34)
!113 = !DILocation(line: 45, column: 26, scope: !112)
!114 = !DILocation(line: 45, column: 37, scope: !112)
!115 = !DILocation(line: 45, column: 42, scope: !112)
!116 = !DILocation(line: 45, column: 51, scope: !112)
!117 = !DILocation(line: 45, column: 56, scope: !112)
!118 = !DILocation(line: 45, column: 13, scope: !112)
!119 = !DILocation(line: 46, column: 28, scope: !112)
!120 = !DILocation(line: 46, column: 33, scope: !112)
!121 = !DILocation(line: 46, column: 13, scope: !112)
!122 = !DILocation(line: 46, column: 18, scope: !112)
!123 = !DILocation(line: 46, column: 26, scope: !112)
!124 = !DILocation(line: 47, column: 13, scope: !112)
!125 = !DILocation(line: 47, column: 18, scope: !112)
!126 = !DILocation(line: 47, column: 26, scope: !112)
!127 = !DILocation(line: 47, column: 31, scope: !112)
!128 = !DILocation(line: 47, column: 36, scope: !112)
!129 = !DILocation(line: 48, column: 26, scope: !112)
!130 = !DILocation(line: 48, column: 13, scope: !112)
!131 = !DILocation(line: 48, column: 18, scope: !112)
!132 = !DILocation(line: 48, column: 23, scope: !112)
!133 = !DILocation(line: 51, column: 13, scope: !112)
!134 = !DILocation(line: 54, column: 13, scope: !112)
!135 = !DILocation(line: 55, column: 9, scope: !112)
!136 = !DILocation(line: 57, column: 24, scope: !137)
!137 = distinct !DILexicalBlock(scope: !107, file: !1, line: 55, column: 16)
!138 = !DILocation(line: 57, column: 29, scope: !137)
!139 = !DILocation(line: 57, column: 40, scope: !137)
!140 = !DILocation(line: 57, column: 52, scope: !137)
!141 = !DILocation(line: 57, column: 50, scope: !137)
!142 = !DILocation(line: 57, column: 13, scope: !137)
!143 = !DILocation(line: 59, column: 5, scope: !99)
!144 = !DILocation(line: 60, column: 1, scope: !38)
!145 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !146, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!146 = !DISubroutineType(types: !147)
!147 = !{!53}
!148 = !DILocalVariable(name: "buf", scope: !145, file: !1, line: 64, type: !42)
!149 = !DILocation(line: 64, column: 12, scope: !145)
!150 = !DILocation(line: 67, column: 29, scope: !145)
!151 = !DILocation(line: 67, column: 24, scope: !145)
!152 = !DILocation(line: 67, column: 5, scope: !145)
!153 = !DILocation(line: 68, column: 29, scope: !145)
!154 = !DILocation(line: 68, column: 24, scope: !145)
!155 = !DILocation(line: 68, column: 5, scope: !145)
!156 = !DILocation(line: 69, column: 29, scope: !145)
!157 = !DILocation(line: 69, column: 24, scope: !145)
!158 = !DILocation(line: 69, column: 5, scope: !145)
!159 = !DILocation(line: 72, column: 21, scope: !145)
!160 = !DILocation(line: 72, column: 27, scope: !145)
!161 = !DILocation(line: 72, column: 17, scope: !145)
!162 = !DILocation(line: 72, column: 5, scope: !145)
!163 = !DILocation(line: 75, column: 21, scope: !145)
!164 = !DILocation(line: 75, column: 25, scope: !145)
!165 = !DILocation(line: 75, column: 30, scope: !145)
!166 = !DILocation(line: 75, column: 37, scope: !145)
!167 = !DILocation(line: 75, column: 41, scope: !145)
!168 = !DILocation(line: 0, scope: !145)
!169 = !DILocation(line: 75, column: 17, scope: !145)
!170 = !DILocation(line: 75, column: 5, scope: !145)
!171 = !DILocalVariable(name: "contentIO_size", scope: !145, file: !1, line: 78, type: !48)
!172 = !DILocation(line: 78, column: 18, scope: !145)
!173 = !DILocation(line: 79, column: 24, scope: !145)
!174 = !DILocation(line: 79, column: 5, scope: !145)
!175 = !DILocation(line: 80, column: 17, scope: !145)
!176 = !DILocation(line: 80, column: 32, scope: !145)
!177 = !DILocation(line: 80, column: 36, scope: !145)
!178 = !DILocation(line: 80, column: 39, scope: !145)
!179 = !DILocation(line: 80, column: 54, scope: !145)
!180 = !DILocation(line: 80, column: 5, scope: !145)
!181 = !DILocation(line: 82, column: 38, scope: !145)
!182 = !DILocation(line: 82, column: 31, scope: !145)
!183 = !DILocation(line: 82, column: 9, scope: !145)
!184 = !DILocation(line: 82, column: 19, scope: !145)
!185 = !DILocalVariable(name: "start_offset", scope: !145, file: !1, line: 85, type: !53)
!186 = !DILocation(line: 85, column: 9, scope: !145)
!187 = !DILocation(line: 86, column: 24, scope: !145)
!188 = !DILocation(line: 86, column: 5, scope: !145)
!189 = !DILocation(line: 87, column: 17, scope: !145)
!190 = !DILocation(line: 87, column: 30, scope: !145)
!191 = !DILocation(line: 87, column: 5, scope: !145)
!192 = !DILocation(line: 88, column: 17, scope: !145)
!193 = !DILocation(line: 88, column: 32, scope: !145)
!194 = !DILocation(line: 88, column: 30, scope: !145)
!195 = !DILocation(line: 88, column: 5, scope: !145)
!196 = !DILocation(line: 90, column: 23, scope: !145)
!197 = !DILocation(line: 90, column: 35, scope: !145)
!198 = !DILocation(line: 90, column: 33, scope: !145)
!199 = !DILocation(line: 90, column: 9, scope: !145)
!200 = !DILocation(line: 90, column: 17, scope: !145)
!201 = !DILocation(line: 93, column: 21, scope: !145)
!202 = !DILocation(line: 93, column: 29, scope: !145)
!203 = !DILocation(line: 93, column: 26, scope: !145)
!204 = !DILocation(line: 93, column: 17, scope: !145)
!205 = !DILocation(line: 93, column: 5, scope: !145)
!206 = !DILocation(line: 96, column: 21, scope: !145)
!207 = !DILocation(line: 96, column: 29, scope: !145)
!208 = !DILocation(line: 96, column: 46, scope: !145)
!209 = !DILocation(line: 96, column: 44, scope: !145)
!210 = !DILocation(line: 96, column: 25, scope: !145)
!211 = !DILocation(line: 96, column: 17, scope: !145)
!212 = !DILocation(line: 96, column: 5, scope: !145)
!213 = !DILocalVariable(name: "add_len", scope: !145, file: !1, line: 99, type: !53)
!214 = !DILocation(line: 99, column: 9, scope: !145)
!215 = !DILocation(line: 100, column: 24, scope: !145)
!216 = !DILocation(line: 100, column: 5, scope: !145)
!217 = !DILocation(line: 101, column: 17, scope: !145)
!218 = !DILocation(line: 101, column: 25, scope: !145)
!219 = !DILocation(line: 101, column: 30, scope: !145)
!220 = !DILocation(line: 101, column: 33, scope: !145)
!221 = !DILocation(line: 101, column: 41, scope: !145)
!222 = !DILocation(line: 101, column: 5, scope: !145)
!223 = !DILocalVariable(name: "add_str", scope: !145, file: !1, line: 103, type: !4)
!224 = !DILocation(line: 103, column: 14, scope: !145)
!225 = !DILocation(line: 103, column: 41, scope: !145)
!226 = !DILocation(line: 103, column: 49, scope: !145)
!227 = !DILocation(line: 103, column: 34, scope: !145)
!228 = !DILocation(line: 104, column: 24, scope: !145)
!229 = !DILocation(line: 104, column: 33, scope: !145)
!230 = !DILocation(line: 104, column: 41, scope: !145)
!231 = !DILocation(line: 104, column: 5, scope: !145)
!232 = !DILocation(line: 107, column: 21, scope: !145)
!233 = !DILocation(line: 107, column: 30, scope: !145)
!234 = !DILocation(line: 107, column: 5, scope: !145)
!235 = !DILocation(line: 110, column: 14, scope: !145)
!236 = !DILocation(line: 110, column: 5, scope: !145)
!237 = !DILocation(line: 111, column: 10, scope: !145)
!238 = !DILocation(line: 111, column: 5, scope: !145)
!239 = !DILocation(line: 113, column: 5, scope: !145)
!240 = distinct !DISubprogram(name: "memmove", scope: !241, file: !241, line: 12, type: !242, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!241 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!242 = !DISubroutineType(types: !243)
!243 = !{!3, !3, !244, !20}
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!246 = !DILocalVariable(name: "dst", arg: 1, scope: !240, file: !241, line: 12, type: !3)
!247 = !DILocation(line: 12, column: 21, scope: !240)
!248 = !DILocalVariable(name: "src", arg: 2, scope: !240, file: !241, line: 12, type: !244)
!249 = !DILocation(line: 12, column: 38, scope: !240)
!250 = !DILocalVariable(name: "count", arg: 3, scope: !240, file: !241, line: 12, type: !20)
!251 = !DILocation(line: 12, column: 50, scope: !240)
!252 = !DILocalVariable(name: "a", scope: !240, file: !241, line: 13, type: !253)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!255 = !DILocation(line: 13, column: 9, scope: !240)
!256 = !DILocation(line: 13, column: 13, scope: !240)
!257 = !DILocalVariable(name: "b", scope: !240, file: !241, line: 14, type: !258)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!260 = !DILocation(line: 14, column: 15, scope: !240)
!261 = !DILocation(line: 14, column: 19, scope: !240)
!262 = !DILocation(line: 16, column: 7, scope: !263)
!263 = distinct !DILexicalBlock(scope: !240, file: !241, line: 16, column: 7)
!264 = !DILocation(line: 16, column: 14, scope: !263)
!265 = !DILocation(line: 16, column: 11, scope: !263)
!266 = !DILocation(line: 16, column: 7, scope: !240)
!267 = !DILocation(line: 17, column: 12, scope: !263)
!268 = !DILocation(line: 17, column: 5, scope: !263)
!269 = !DILocation(line: 19, column: 7, scope: !270)
!270 = distinct !DILexicalBlock(scope: !240, file: !241, line: 19, column: 7)
!271 = !DILocation(line: 19, column: 13, scope: !270)
!272 = !DILocation(line: 19, column: 11, scope: !270)
!273 = !DILocation(line: 19, column: 7, scope: !240)
!274 = !DILocation(line: 20, column: 17, scope: !275)
!275 = distinct !DILexicalBlock(scope: !270, file: !241, line: 19, column: 18)
!276 = !DILocation(line: 20, column: 5, scope: !275)
!277 = !DILocation(line: 21, column: 16, scope: !275)
!278 = !DILocation(line: 21, column: 14, scope: !275)
!279 = !DILocation(line: 21, column: 9, scope: !275)
!280 = !DILocation(line: 21, column: 12, scope: !275)
!281 = distinct !{!281, !276, !277, !282}
!282 = !{!"llvm.loop.mustprogress"}
!283 = !DILocation(line: 23, column: 10, scope: !284)
!284 = distinct !DILexicalBlock(scope: !270, file: !241, line: 22, column: 10)
!285 = !DILocation(line: 23, column: 16, scope: !284)
!286 = !DILocation(line: 23, column: 7, scope: !284)
!287 = !DILocation(line: 24, column: 10, scope: !284)
!288 = !DILocation(line: 24, column: 16, scope: !284)
!289 = !DILocation(line: 24, column: 7, scope: !284)
!290 = !DILocation(line: 25, column: 5, scope: !284)
!291 = !DILocation(line: 25, column: 17, scope: !284)
!292 = !DILocation(line: 26, column: 16, scope: !284)
!293 = !DILocation(line: 26, column: 14, scope: !284)
!294 = !DILocation(line: 26, column: 9, scope: !284)
!295 = !DILocation(line: 26, column: 12, scope: !284)
!296 = distinct !{!296, !290, !292, !282}
!297 = !DILocation(line: 29, column: 10, scope: !240)
!298 = !DILocation(line: 29, column: 3, scope: !240)
!299 = !DILocation(line: 30, column: 1, scope: !240)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [15 x i8] c"growing buffer\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"(len <= buf->size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlStringGetNodeList = private unnamed_addr constant [54 x i8] c"int xmlStringGetNodeList(xmlBuf *, const char *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"initial_content\00", align 1
@.str.8 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"str_data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !16 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !23, metadata !DIExpression()), !dbg !24
  ret void, !dbg !25
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStringGetNodeList(%struct._xmlBuf* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !26 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlBuf*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %5, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !43, metadata !DIExpression()), !dbg !44
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !45, metadata !DIExpression()), !dbg !46
  %10 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !47
  %11 = icmp eq %struct._xmlBuf* %10, null, !dbg !49
  br i1 %11, label %15, label %12, !dbg !50

12:                                               ; preds = %3
  %13 = load i8*, i8** %6, align 8, !dbg !51
  %14 = icmp eq i8* %13, null, !dbg !52
  br i1 %14, label %15, label %16, !dbg !53

15:                                               ; preds = %12, %3
  store i32 -1, i32* %4, align 4, !dbg !54
  br label %117, !dbg !54

16:                                               ; preds = %12
  %17 = load i32, i32* %7, align 4, !dbg !56
  %18 = icmp slt i32 %17, 0, !dbg !58
  br i1 %18, label %19, label %20, !dbg !59

19:                                               ; preds = %16
  store i32 -1, i32* %4, align 4, !dbg !60
  br label %117, !dbg !60

20:                                               ; preds = %16
  %21 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !62
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %21, i32 0, i32 2, !dbg !64
  %23 = load i64, i64* %22, align 8, !dbg !64
  %24 = load i32, i32* %7, align 4, !dbg !65
  %25 = sext i32 %24 to i64, !dbg !65
  %26 = add i64 %23, %25, !dbg !66
  %27 = add i64 %26, 1, !dbg !67
  %28 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !68
  %29 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %28, i32 0, i32 1, !dbg !69
  %30 = load i64, i64* %29, align 8, !dbg !69
  %31 = icmp ugt i64 %27, %30, !dbg !70
  br i1 %31, label %32, label %69, !dbg !71

32:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i64* %8, metadata !72, metadata !DIExpression()), !dbg !74
  %33 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !75
  %34 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %33, i32 0, i32 2, !dbg !76
  %35 = load i64, i64* %34, align 8, !dbg !76
  %36 = load i32, i32* %7, align 4, !dbg !77
  %37 = sext i32 %36 to i64, !dbg !77
  %38 = add i64 %35, %37, !dbg !78
  %39 = add i64 %38, 1, !dbg !79
  store i64 %39, i64* %8, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i8** %9, metadata !80, metadata !DIExpression()), !dbg !81
  %40 = load i64, i64* %8, align 8, !dbg !82
  %41 = call noalias i8* @malloc(i64 noundef %40) #7, !dbg !83
  store i8* %41, i8** %9, align 8, !dbg !81
  %42 = load i8*, i8** %9, align 8, !dbg !84
  %43 = icmp eq i8* %42, null, !dbg !86
  br i1 %43, label %44, label %45, !dbg !87

44:                                               ; preds = %32
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0)), !dbg !88
  store i32 -2, i32* %4, align 4, !dbg !90
  br label %117, !dbg !90

45:                                               ; preds = %32
  %46 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !91
  %47 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %46, i32 0, i32 0, !dbg !93
  %48 = load i8*, i8** %47, align 8, !dbg !93
  %49 = icmp ne i8* %48, null, !dbg !94
  br i1 %49, label %50, label %62, !dbg !95

50:                                               ; preds = %45
  %51 = load i8*, i8** %9, align 8, !dbg !96
  %52 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !98
  %53 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %52, i32 0, i32 0, !dbg !99
  %54 = load i8*, i8** %53, align 8, !dbg !99
  %55 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !100
  %56 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %55, i32 0, i32 2, !dbg !101
  %57 = load i64, i64* %56, align 8, !dbg !101
  %58 = call i8* @memcpy(i8* %51, i8* %54, i64 %57), !dbg !102
  %59 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !103
  %60 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %59, i32 0, i32 0, !dbg !104
  %61 = load i8*, i8** %60, align 8, !dbg !104
  call void @free(i8* noundef %61) #7, !dbg !105
  br label %62, !dbg !106

62:                                               ; preds = %50, %45
  %63 = load i8*, i8** %9, align 8, !dbg !107
  %64 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !108
  %65 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %64, i32 0, i32 0, !dbg !109
  store i8* %63, i8** %65, align 8, !dbg !110
  %66 = load i64, i64* %8, align 8, !dbg !111
  %67 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !112
  %68 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %67, i32 0, i32 1, !dbg !113
  store i64 %66, i64* %68, align 8, !dbg !114
  br label %69, !dbg !115

69:                                               ; preds = %62, %20
  %70 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !116
  %71 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %70, i32 0, i32 0, !dbg !117
  %72 = load i8*, i8** %71, align 8, !dbg !117
  %73 = load i32, i32* %7, align 4, !dbg !118
  %74 = sext i32 %73 to i64, !dbg !116
  %75 = getelementptr inbounds i8, i8* %72, i64 %74, !dbg !116
  %76 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !119
  %77 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %76, i32 0, i32 0, !dbg !120
  %78 = load i8*, i8** %77, align 8, !dbg !120
  %79 = getelementptr inbounds i8, i8* %78, i64 0, !dbg !119
  %80 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !121
  %81 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %80, i32 0, i32 2, !dbg !122
  %82 = load i64, i64* %81, align 8, !dbg !122
  %83 = call i8* @memmove(i8* %75, i8* %79, i64 %82), !dbg !123
  %84 = load i32, i32* %7, align 4, !dbg !124
  %85 = sext i32 %84 to i64, !dbg !124
  %86 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !124
  %87 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %86, i32 0, i32 1, !dbg !124
  %88 = load i64, i64* %87, align 8, !dbg !124
  %89 = icmp ule i64 %85, %88, !dbg !124
  br i1 %89, label %90, label %92, !dbg !124

90:                                               ; preds = %69
  br i1 true, label %91, label %92, !dbg !124

91:                                               ; preds = %90
  br label %94, !dbg !124

92:                                               ; preds = %90, %69
  %93 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.xmlStringGetNodeList, i64 0, i64 0)), !dbg !124
  br label %94, !dbg !124

94:                                               ; preds = %92, %91
  %95 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([54 x i8], [54 x i8]* @__PRETTY_FUNCTION__.xmlStringGetNodeList, i64 0, i64 0)), !dbg !125
  %96 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !126
  %97 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %96, i32 0, i32 0, !dbg !127
  %98 = load i8*, i8** %97, align 8, !dbg !127
  %99 = getelementptr inbounds i8, i8* %98, i64 0, !dbg !126
  %100 = load i8*, i8** %6, align 8, !dbg !128
  %101 = load i32, i32* %7, align 4, !dbg !129
  %102 = sext i32 %101 to i64, !dbg !129
  %103 = call i8* @memmove(i8* %99, i8* %100, i64 %102), !dbg !130
  %104 = load i32, i32* %7, align 4, !dbg !131
  %105 = sext i32 %104 to i64, !dbg !131
  %106 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !132
  %107 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %106, i32 0, i32 2, !dbg !133
  %108 = load i64, i64* %107, align 8, !dbg !134
  %109 = add i64 %108, %105, !dbg !134
  store i64 %109, i64* %107, align 8, !dbg !134
  %110 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !135
  %111 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %110, i32 0, i32 0, !dbg !136
  %112 = load i8*, i8** %111, align 8, !dbg !136
  %113 = load %struct._xmlBuf*, %struct._xmlBuf** %5, align 8, !dbg !137
  %114 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %113, i32 0, i32 2, !dbg !138
  %115 = load i64, i64* %114, align 8, !dbg !138
  %116 = getelementptr inbounds i8, i8* %112, i64 %115, !dbg !135
  store i8 0, i8* %116, align 1, !dbg !139
  store i32 0, i32* %4, align 4, !dbg !140
  br label %117, !dbg !140

117:                                              ; preds = %94, %44, %19, %15
  %118 = load i32, i32* %4, align 4, !dbg !141
  ret i32 %118, !dbg !141
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !142 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !145, metadata !DIExpression()), !dbg !146
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !147, metadata !DIExpression()), !dbg !151
  call void @llvm.dbg.declare(metadata i32* %4, metadata !152, metadata !DIExpression()), !dbg !153
  %5 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !154
  %6 = bitcast i64* %5 to i8*, !dbg !155
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !156
  %7 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !157
  %8 = load i64, i64* %7, align 8, !dbg !157
  %9 = icmp ugt i64 %8, 0, !dbg !158
  %10 = zext i1 %9 to i32, !dbg !158
  %11 = sext i32 %10 to i64, !dbg !159
  call void @klee_assume(i64 noundef %11), !dbg !160
  %12 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !161
  %13 = load i64, i64* %12, align 8, !dbg !161
  %14 = icmp ule i64 %13, 4096, !dbg !162
  %15 = zext i1 %14 to i32, !dbg !162
  %16 = sext i32 %15 to i64, !dbg !163
  call void @klee_assume(i64 noundef %16), !dbg !164
  %17 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !165
  %18 = load i64, i64* %17, align 8, !dbg !165
  %19 = call noalias i8* @malloc(i64 noundef %18) #7, !dbg !166
  %20 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !167
  store i8* %19, i8** %20, align 8, !dbg !168
  %21 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !169
  %22 = load i8*, i8** %21, align 8, !dbg !169
  %23 = icmp eq i8* %22, null, !dbg !171
  br i1 %23, label %24, label %25, !dbg !172

24:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !173
  br label %61, !dbg !173

25:                                               ; preds = %0
  %26 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !175
  %27 = bitcast i64* %26 to i8*, !dbg !176
  call void @klee_make_symbolic(i8* noundef %27, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !177
  %28 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !178
  %29 = load i64, i64* %28, align 8, !dbg !178
  %30 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !179
  %31 = load i64, i64* %30, align 8, !dbg !179
  %32 = icmp ult i64 %29, %31, !dbg !180
  %33 = zext i1 %32 to i32, !dbg !180
  %34 = sext i32 %33 to i64, !dbg !181
  call void @klee_assume(i64 noundef %34), !dbg !182
  %35 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !183
  %36 = load i64, i64* %35, align 8, !dbg !183
  %37 = icmp uge i64 %36, 0, !dbg !184
  %38 = zext i1 %37 to i32, !dbg !184
  %39 = sext i32 %38 to i64, !dbg !185
  call void @klee_assume(i64 noundef %39), !dbg !186
  %40 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !187
  %41 = load i8*, i8** %40, align 8, !dbg !187
  %42 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !188
  %43 = load i64, i64* %42, align 8, !dbg !188
  call void @klee_make_symbolic(i8* noundef %41, i64 noundef %43, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0)), !dbg !189
  %44 = bitcast i32* %4 to i8*, !dbg !190
  call void @klee_make_symbolic(i8* noundef %44, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.8, i64 0, i64 0)), !dbg !191
  %45 = load i32, i32* %4, align 4, !dbg !192
  %46 = icmp sge i32 %45, 0, !dbg !193
  %47 = zext i1 %46 to i32, !dbg !193
  %48 = sext i32 %47 to i64, !dbg !192
  call void @klee_assume(i64 noundef %48), !dbg !194
  %49 = load i32, i32* %4, align 4, !dbg !195
  %50 = icmp slt i32 %49, 256, !dbg !196
  %51 = zext i1 %50 to i32, !dbg !196
  %52 = sext i32 %51 to i64, !dbg !195
  call void @klee_assume(i64 noundef %52), !dbg !197
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !198
  %54 = load i32, i32* %4, align 4, !dbg !199
  %55 = sext i32 %54 to i64, !dbg !199
  call void @klee_make_symbolic(i8* noundef %53, i64 noundef %55, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0)), !dbg !200
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !201
  %57 = load i32, i32* %4, align 4, !dbg !202
  %58 = call i32 @xmlStringGetNodeList(%struct._xmlBuf* noundef %2, i8* noundef %56, i32 noundef %57), !dbg !203
  %59 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !204
  %60 = load i8*, i8** %59, align 8, !dbg !204
  call void @free(i8* noundef %60) #7, !dbg !205
  store i32 0, i32* %1, align 4, !dbg !206
  br label %61, !dbg !206

61:                                               ; preds = %25, %24
  %62 = load i32, i32* %1, align 4, !dbg !207
  ret i32 %62, !dbg !207
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !208 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !214, metadata !DIExpression()), !dbg !215
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !216, metadata !DIExpression()), !dbg !217
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !218, metadata !DIExpression()), !dbg !219
  call void @llvm.dbg.declare(metadata i8** %7, metadata !220, metadata !DIExpression()), !dbg !221
  %9 = load i8*, i8** %4, align 8, !dbg !222
  store i8* %9, i8** %7, align 8, !dbg !221
  call void @llvm.dbg.declare(metadata i8** %8, metadata !223, metadata !DIExpression()), !dbg !224
  %10 = load i8*, i8** %5, align 8, !dbg !225
  store i8* %10, i8** %8, align 8, !dbg !224
  br label %11, !dbg !226

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !227
  %13 = add i64 %12, -1, !dbg !227
  store i64 %13, i64* %6, align 8, !dbg !227
  %14 = icmp ugt i64 %12, 0, !dbg !228
  br i1 %14, label %15, label %21, !dbg !226

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !229
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !229
  store i8* %17, i8** %8, align 8, !dbg !229
  %18 = load i8, i8* %16, align 1, !dbg !230
  %19 = load i8*, i8** %7, align 8, !dbg !231
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !231
  store i8* %20, i8** %7, align 8, !dbg !231
  store i8 %18, i8* %19, align 1, !dbg !232
  br label %11, !dbg !226, !llvm.loop !233

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !235
  ret i8* %22, !dbg !236
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !237 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !239, metadata !DIExpression()), !dbg !240
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !241, metadata !DIExpression()), !dbg !242
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !243, metadata !DIExpression()), !dbg !244
  call void @llvm.dbg.declare(metadata i8** %8, metadata !245, metadata !DIExpression()), !dbg !246
  %10 = load i8*, i8** %5, align 8, !dbg !247
  store i8* %10, i8** %8, align 8, !dbg !246
  call void @llvm.dbg.declare(metadata i8** %9, metadata !248, metadata !DIExpression()), !dbg !249
  %11 = load i8*, i8** %6, align 8, !dbg !250
  store i8* %11, i8** %9, align 8, !dbg !249
  %12 = load i8*, i8** %6, align 8, !dbg !251
  %13 = load i8*, i8** %5, align 8, !dbg !253
  %14 = icmp eq i8* %12, %13, !dbg !254
  br i1 %14, label %15, label %17, !dbg !255

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !256
  store i8* %16, i8** %4, align 8, !dbg !257
  br label %52, !dbg !257

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !258
  %19 = load i8*, i8** %5, align 8, !dbg !260
  %20 = icmp ugt i8* %18, %19, !dbg !261
  br i1 %20, label %21, label %31, !dbg !262

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !263
  %23 = add i64 %22, -1, !dbg !263
  store i64 %23, i64* %7, align 8, !dbg !263
  %24 = icmp ne i64 %22, 0, !dbg !265
  br i1 %24, label %25, label %50, !dbg !265

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !266
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !266
  store i8* %27, i8** %9, align 8, !dbg !266
  %28 = load i8, i8* %26, align 1, !dbg !267
  %29 = load i8*, i8** %8, align 8, !dbg !268
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !268
  store i8* %30, i8** %8, align 8, !dbg !268
  store i8 %28, i8* %29, align 1, !dbg !269
  br label %21, !dbg !265, !llvm.loop !270

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !271
  %33 = sub i64 %32, 1, !dbg !273
  %34 = load i8*, i8** %8, align 8, !dbg !274
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !274
  store i8* %35, i8** %8, align 8, !dbg !274
  %36 = load i64, i64* %7, align 8, !dbg !275
  %37 = sub i64 %36, 1, !dbg !276
  %38 = load i8*, i8** %9, align 8, !dbg !277
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !277
  store i8* %39, i8** %9, align 8, !dbg !277
  br label %40, !dbg !278

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !279
  %42 = add i64 %41, -1, !dbg !279
  store i64 %42, i64* %7, align 8, !dbg !279
  %43 = icmp ne i64 %41, 0, !dbg !278
  br i1 %43, label %44, label %50, !dbg !278

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !280
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !280
  store i8* %46, i8** %9, align 8, !dbg !280
  %47 = load i8, i8* %45, align 1, !dbg !281
  %48 = load i8*, i8** %8, align 8, !dbg !282
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !282
  store i8* %49, i8** %8, align 8, !dbg !282
  store i8 %47, i8* %48, align 1, !dbg !283
  br label %40, !dbg !278, !llvm.loop !284

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !285
  store i8* %51, i8** %4, align 8, !dbg !286
  br label %52, !dbg !286

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !287
  ret i8* %53, !dbg !287
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/178_tree.c_7491_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a8b518433b038d7becc04f368076857e")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 18, type: !17, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !{}
!23 = !DILocalVariable(name: "msg", arg: 1, scope: !16, file: !1, line: 18, type: !19)
!24 = !DILocation(line: 18, column: 35, scope: !16)
!25 = !DILocation(line: 20, column: 1, scope: !16)
!26 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!27 = !DISubroutineType(types: !28)
!28 = !{!29, !30, !19, !29}
!29 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 10, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 11, size: 192, elements: !33)
!33 = !{!34, !36, !40}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !32, file: !1, line: 12, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !32, file: !1, line: 13, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !32, file: !1, line: 14, baseType: !37, size: 64, offset: 128)
!41 = !DILocalVariable(name: "buf", arg: 1, scope: !26, file: !1, line: 23, type: !30)
!42 = !DILocation(line: 23, column: 34, scope: !26)
!43 = !DILocalVariable(name: "str", arg: 2, scope: !26, file: !1, line: 23, type: !19)
!44 = !DILocation(line: 23, column: 51, scope: !26)
!45 = !DILocalVariable(name: "len", arg: 3, scope: !26, file: !1, line: 23, type: !29)
!46 = !DILocation(line: 23, column: 60, scope: !26)
!47 = !DILocation(line: 24, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !26, file: !1, line: 24, column: 9)
!49 = !DILocation(line: 24, column: 13, scope: !48)
!50 = !DILocation(line: 24, column: 21, scope: !48)
!51 = !DILocation(line: 24, column: 24, scope: !48)
!52 = !DILocation(line: 24, column: 28, scope: !48)
!53 = !DILocation(line: 24, column: 9, scope: !26)
!54 = !DILocation(line: 25, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 37)
!56 = !DILocation(line: 28, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !26, file: !1, line: 28, column: 9)
!58 = !DILocation(line: 28, column: 13, scope: !57)
!59 = !DILocation(line: 28, column: 9, scope: !26)
!60 = !DILocation(line: 29, column: 9, scope: !61)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 28, column: 18)
!62 = !DILocation(line: 33, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !26, file: !1, line: 33, column: 9)
!64 = !DILocation(line: 33, column: 14, scope: !63)
!65 = !DILocation(line: 33, column: 20, scope: !63)
!66 = !DILocation(line: 33, column: 18, scope: !63)
!67 = !DILocation(line: 33, column: 24, scope: !63)
!68 = !DILocation(line: 33, column: 30, scope: !63)
!69 = !DILocation(line: 33, column: 35, scope: !63)
!70 = !DILocation(line: 33, column: 28, scope: !63)
!71 = !DILocation(line: 33, column: 9, scope: !26)
!72 = !DILocalVariable(name: "new_size", scope: !73, file: !1, line: 34, type: !37)
!73 = distinct !DILexicalBlock(scope: !63, file: !1, line: 33, column: 41)
!74 = !DILocation(line: 34, column: 16, scope: !73)
!75 = !DILocation(line: 34, column: 27, scope: !73)
!76 = !DILocation(line: 34, column: 32, scope: !73)
!77 = !DILocation(line: 34, column: 38, scope: !73)
!78 = !DILocation(line: 34, column: 36, scope: !73)
!79 = !DILocation(line: 34, column: 42, scope: !73)
!80 = !DILocalVariable(name: "new_content", scope: !73, file: !1, line: 35, type: !35)
!81 = !DILocation(line: 35, column: 15, scope: !73)
!82 = !DILocation(line: 35, column: 36, scope: !73)
!83 = !DILocation(line: 35, column: 29, scope: !73)
!84 = !DILocation(line: 36, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !73, file: !1, line: 36, column: 13)
!86 = !DILocation(line: 36, column: 25, scope: !85)
!87 = !DILocation(line: 36, column: 13, scope: !73)
!88 = !DILocation(line: 37, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 36, column: 34)
!90 = !DILocation(line: 38, column: 13, scope: !89)
!91 = !DILocation(line: 41, column: 13, scope: !92)
!92 = distinct !DILexicalBlock(scope: !73, file: !1, line: 41, column: 13)
!93 = !DILocation(line: 41, column: 18, scope: !92)
!94 = !DILocation(line: 41, column: 26, scope: !92)
!95 = !DILocation(line: 41, column: 13, scope: !73)
!96 = !DILocation(line: 42, column: 20, scope: !97)
!97 = distinct !DILexicalBlock(scope: !92, file: !1, line: 41, column: 35)
!98 = !DILocation(line: 42, column: 33, scope: !97)
!99 = !DILocation(line: 42, column: 38, scope: !97)
!100 = !DILocation(line: 42, column: 47, scope: !97)
!101 = !DILocation(line: 42, column: 52, scope: !97)
!102 = !DILocation(line: 42, column: 13, scope: !97)
!103 = !DILocation(line: 43, column: 18, scope: !97)
!104 = !DILocation(line: 43, column: 23, scope: !97)
!105 = !DILocation(line: 43, column: 13, scope: !97)
!106 = !DILocation(line: 44, column: 9, scope: !97)
!107 = !DILocation(line: 45, column: 24, scope: !73)
!108 = !DILocation(line: 45, column: 9, scope: !73)
!109 = !DILocation(line: 45, column: 14, scope: !73)
!110 = !DILocation(line: 45, column: 22, scope: !73)
!111 = !DILocation(line: 46, column: 21, scope: !73)
!112 = !DILocation(line: 46, column: 9, scope: !73)
!113 = !DILocation(line: 46, column: 14, scope: !73)
!114 = !DILocation(line: 46, column: 19, scope: !73)
!115 = !DILocation(line: 47, column: 5, scope: !73)
!116 = !DILocation(line: 50, column: 14, scope: !26)
!117 = !DILocation(line: 50, column: 19, scope: !26)
!118 = !DILocation(line: 50, column: 27, scope: !26)
!119 = !DILocation(line: 50, column: 34, scope: !26)
!120 = !DILocation(line: 50, column: 39, scope: !26)
!121 = !DILocation(line: 50, column: 51, scope: !26)
!122 = !DILocation(line: 50, column: 56, scope: !26)
!123 = !DILocation(line: 50, column: 5, scope: !26)
!124 = !DILocation(line: 53, column: 5, scope: !26)
!125 = !DILocation(line: 56, column: 5, scope: !26)
!126 = !DILocation(line: 58, column: 14, scope: !26)
!127 = !DILocation(line: 58, column: 19, scope: !26)
!128 = !DILocation(line: 58, column: 31, scope: !26)
!129 = !DILocation(line: 58, column: 36, scope: !26)
!130 = !DILocation(line: 58, column: 5, scope: !26)
!131 = !DILocation(line: 59, column: 17, scope: !26)
!132 = !DILocation(line: 59, column: 5, scope: !26)
!133 = !DILocation(line: 59, column: 10, scope: !26)
!134 = !DILocation(line: 59, column: 14, scope: !26)
!135 = !DILocation(line: 60, column: 5, scope: !26)
!136 = !DILocation(line: 60, column: 10, scope: !26)
!137 = !DILocation(line: 60, column: 18, scope: !26)
!138 = !DILocation(line: 60, column: 23, scope: !26)
!139 = !DILocation(line: 60, column: 28, scope: !26)
!140 = !DILocation(line: 61, column: 5, scope: !26)
!141 = !DILocation(line: 62, column: 1, scope: !26)
!142 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !143, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!143 = !DISubroutineType(types: !144)
!144 = !{!29}
!145 = !DILocalVariable(name: "buf", scope: !142, file: !1, line: 66, type: !31)
!146 = !DILocation(line: 66, column: 12, scope: !142)
!147 = !DILocalVariable(name: "str_data", scope: !142, file: !1, line: 67, type: !148)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !21, size: 2048, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 256)
!151 = !DILocation(line: 67, column: 10, scope: !142)
!152 = !DILocalVariable(name: "len", scope: !142, file: !1, line: 68, type: !29)
!153 = !DILocation(line: 68, column: 9, scope: !142)
!154 = !DILocation(line: 71, column: 29, scope: !142)
!155 = !DILocation(line: 71, column: 24, scope: !142)
!156 = !DILocation(line: 71, column: 5, scope: !142)
!157 = !DILocation(line: 72, column: 21, scope: !142)
!158 = !DILocation(line: 72, column: 26, scope: !142)
!159 = !DILocation(line: 72, column: 17, scope: !142)
!160 = !DILocation(line: 72, column: 5, scope: !142)
!161 = !DILocation(line: 73, column: 21, scope: !142)
!162 = !DILocation(line: 73, column: 26, scope: !142)
!163 = !DILocation(line: 73, column: 17, scope: !142)
!164 = !DILocation(line: 73, column: 5, scope: !142)
!165 = !DILocation(line: 76, column: 30, scope: !142)
!166 = !DILocation(line: 76, column: 19, scope: !142)
!167 = !DILocation(line: 76, column: 9, scope: !142)
!168 = !DILocation(line: 76, column: 17, scope: !142)
!169 = !DILocation(line: 77, column: 13, scope: !170)
!170 = distinct !DILexicalBlock(scope: !142, file: !1, line: 77, column: 9)
!171 = !DILocation(line: 77, column: 21, scope: !170)
!172 = !DILocation(line: 77, column: 9, scope: !142)
!173 = !DILocation(line: 78, column: 9, scope: !174)
!174 = distinct !DILexicalBlock(scope: !170, file: !1, line: 77, column: 30)
!175 = !DILocation(line: 82, column: 29, scope: !142)
!176 = !DILocation(line: 82, column: 24, scope: !142)
!177 = !DILocation(line: 82, column: 5, scope: !142)
!178 = !DILocation(line: 83, column: 21, scope: !142)
!179 = !DILocation(line: 83, column: 31, scope: !142)
!180 = !DILocation(line: 83, column: 25, scope: !142)
!181 = !DILocation(line: 83, column: 17, scope: !142)
!182 = !DILocation(line: 83, column: 5, scope: !142)
!183 = !DILocation(line: 84, column: 21, scope: !142)
!184 = !DILocation(line: 84, column: 25, scope: !142)
!185 = !DILocation(line: 84, column: 17, scope: !142)
!186 = !DILocation(line: 84, column: 5, scope: !142)
!187 = !DILocation(line: 87, column: 28, scope: !142)
!188 = !DILocation(line: 87, column: 41, scope: !142)
!189 = !DILocation(line: 87, column: 5, scope: !142)
!190 = !DILocation(line: 90, column: 24, scope: !142)
!191 = !DILocation(line: 90, column: 5, scope: !142)
!192 = !DILocation(line: 91, column: 17, scope: !142)
!193 = !DILocation(line: 91, column: 21, scope: !142)
!194 = !DILocation(line: 91, column: 5, scope: !142)
!195 = !DILocation(line: 92, column: 17, scope: !142)
!196 = !DILocation(line: 92, column: 21, scope: !142)
!197 = !DILocation(line: 92, column: 5, scope: !142)
!198 = !DILocation(line: 95, column: 24, scope: !142)
!199 = !DILocation(line: 95, column: 34, scope: !142)
!200 = !DILocation(line: 95, column: 5, scope: !142)
!201 = !DILocation(line: 98, column: 32, scope: !142)
!202 = !DILocation(line: 98, column: 42, scope: !142)
!203 = !DILocation(line: 98, column: 5, scope: !142)
!204 = !DILocation(line: 101, column: 14, scope: !142)
!205 = !DILocation(line: 101, column: 5, scope: !142)
!206 = !DILocation(line: 103, column: 5, scope: !142)
!207 = !DILocation(line: 104, column: 1, scope: !142)
!208 = distinct !DISubprogram(name: "memcpy", scope: !209, file: !209, line: 12, type: !210, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !22)
!209 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!210 = !DISubroutineType(types: !211)
!211 = !{!3, !3, !212, !37}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!214 = !DILocalVariable(name: "destaddr", arg: 1, scope: !208, file: !209, line: 12, type: !3)
!215 = !DILocation(line: 12, column: 20, scope: !208)
!216 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !208, file: !209, line: 12, type: !212)
!217 = !DILocation(line: 12, column: 42, scope: !208)
!218 = !DILocalVariable(name: "len", arg: 3, scope: !208, file: !209, line: 12, type: !37)
!219 = !DILocation(line: 12, column: 58, scope: !208)
!220 = !DILocalVariable(name: "dest", scope: !208, file: !209, line: 13, type: !35)
!221 = !DILocation(line: 13, column: 9, scope: !208)
!222 = !DILocation(line: 13, column: 16, scope: !208)
!223 = !DILocalVariable(name: "src", scope: !208, file: !209, line: 14, type: !19)
!224 = !DILocation(line: 14, column: 15, scope: !208)
!225 = !DILocation(line: 14, column: 21, scope: !208)
!226 = !DILocation(line: 16, column: 3, scope: !208)
!227 = !DILocation(line: 16, column: 13, scope: !208)
!228 = !DILocation(line: 16, column: 16, scope: !208)
!229 = !DILocation(line: 17, column: 19, scope: !208)
!230 = !DILocation(line: 17, column: 15, scope: !208)
!231 = !DILocation(line: 17, column: 10, scope: !208)
!232 = !DILocation(line: 17, column: 13, scope: !208)
!233 = distinct !{!233, !226, !229, !234}
!234 = !{!"llvm.loop.mustprogress"}
!235 = !DILocation(line: 18, column: 10, scope: !208)
!236 = !DILocation(line: 18, column: 3, scope: !208)
!237 = distinct !DISubprogram(name: "memmove", scope: !238, file: !238, line: 12, type: !210, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !22)
!238 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!239 = !DILocalVariable(name: "dst", arg: 1, scope: !237, file: !238, line: 12, type: !3)
!240 = !DILocation(line: 12, column: 21, scope: !237)
!241 = !DILocalVariable(name: "src", arg: 2, scope: !237, file: !238, line: 12, type: !212)
!242 = !DILocation(line: 12, column: 38, scope: !237)
!243 = !DILocalVariable(name: "count", arg: 3, scope: !237, file: !238, line: 12, type: !37)
!244 = !DILocation(line: 12, column: 50, scope: !237)
!245 = !DILocalVariable(name: "a", scope: !237, file: !238, line: 13, type: !35)
!246 = !DILocation(line: 13, column: 9, scope: !237)
!247 = !DILocation(line: 13, column: 13, scope: !237)
!248 = !DILocalVariable(name: "b", scope: !237, file: !238, line: 14, type: !19)
!249 = !DILocation(line: 14, column: 15, scope: !237)
!250 = !DILocation(line: 14, column: 19, scope: !237)
!251 = !DILocation(line: 16, column: 7, scope: !252)
!252 = distinct !DILexicalBlock(scope: !237, file: !238, line: 16, column: 7)
!253 = !DILocation(line: 16, column: 14, scope: !252)
!254 = !DILocation(line: 16, column: 11, scope: !252)
!255 = !DILocation(line: 16, column: 7, scope: !237)
!256 = !DILocation(line: 17, column: 12, scope: !252)
!257 = !DILocation(line: 17, column: 5, scope: !252)
!258 = !DILocation(line: 19, column: 7, scope: !259)
!259 = distinct !DILexicalBlock(scope: !237, file: !238, line: 19, column: 7)
!260 = !DILocation(line: 19, column: 13, scope: !259)
!261 = !DILocation(line: 19, column: 11, scope: !259)
!262 = !DILocation(line: 19, column: 7, scope: !237)
!263 = !DILocation(line: 20, column: 17, scope: !264)
!264 = distinct !DILexicalBlock(scope: !259, file: !238, line: 19, column: 18)
!265 = !DILocation(line: 20, column: 5, scope: !264)
!266 = !DILocation(line: 21, column: 16, scope: !264)
!267 = !DILocation(line: 21, column: 14, scope: !264)
!268 = !DILocation(line: 21, column: 9, scope: !264)
!269 = !DILocation(line: 21, column: 12, scope: !264)
!270 = distinct !{!270, !265, !266, !234}
!271 = !DILocation(line: 23, column: 10, scope: !272)
!272 = distinct !DILexicalBlock(scope: !259, file: !238, line: 22, column: 10)
!273 = !DILocation(line: 23, column: 16, scope: !272)
!274 = !DILocation(line: 23, column: 7, scope: !272)
!275 = !DILocation(line: 24, column: 10, scope: !272)
!276 = !DILocation(line: 24, column: 16, scope: !272)
!277 = !DILocation(line: 24, column: 7, scope: !272)
!278 = !DILocation(line: 25, column: 5, scope: !272)
!279 = !DILocation(line: 25, column: 17, scope: !272)
!280 = !DILocation(line: 26, column: 16, scope: !272)
!281 = !DILocation(line: 26, column: 14, scope: !272)
!282 = !DILocation(line: 26, column: 9, scope: !272)
!283 = !DILocation(line: 26, column: 12, scope: !272)
!284 = distinct !{!284, !278, !280, !234}
!285 = !DILocation(line: 29, column: 10, scope: !237)
!286 = !DILocation(line: 29, column: 3, scope: !237)
!287 = !DILocation(line: 30, column: 1, scope: !237)

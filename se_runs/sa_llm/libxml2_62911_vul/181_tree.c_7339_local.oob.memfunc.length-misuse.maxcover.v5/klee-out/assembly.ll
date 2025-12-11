; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/181_tree.c_7339_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/181_tree.c_7339_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuffer = type { i8*, i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"(buf->use <= (buf->size - start_buf) && buf->use <= newSize) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/181_tree.c_7339_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.target_function = private unnamed_addr constant [48 x i8] c"void target_function(xmlBuffer *, unsigned int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"newSize\00", align 1

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
define dso_local i8* @xmlStringGetNodeList() #0 !dbg !38 {
  ret i8* null, !dbg !41
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @target_function(%struct._xmlBuffer* noundef %0, i32 noundef %1) #0 !dbg !42 {
  %3 = alloca %struct._xmlBuffer*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlBuffer* %0, %struct._xmlBuffer** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer** %3, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !57, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i8** %5, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %6, metadata !61, metadata !DIExpression()), !dbg !62
  %7 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !63
  %8 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %7, i32 0, i32 4, !dbg !65
  %9 = load i32, i32* %8, align 8, !dbg !65
  %10 = icmp eq i32 %9, 2, !dbg !66
  br i1 %10, label %11, label %91, !dbg !67

11:                                               ; preds = %2
  %12 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !68
  %13 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %12, i32 0, i32 1, !dbg !69
  %14 = load i8*, i8** %13, align 8, !dbg !69
  %15 = icmp ne i8* %14, null, !dbg !70
  br i1 %15, label %16, label %91, !dbg !71

16:                                               ; preds = %11
  %17 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !72
  %18 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %17, i32 0, i32 0, !dbg !74
  %19 = load i8*, i8** %18, align 8, !dbg !74
  %20 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !75
  %21 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %20, i32 0, i32 1, !dbg !76
  %22 = load i8*, i8** %21, align 8, !dbg !76
  %23 = ptrtoint i8* %19 to i64, !dbg !77
  %24 = ptrtoint i8* %22 to i64, !dbg !77
  %25 = sub i64 %23, %24, !dbg !77
  %26 = trunc i64 %25 to i32, !dbg !72
  store i32 %26, i32* %6, align 4, !dbg !78
  %27 = load i32, i32* %6, align 4, !dbg !79
  %28 = load i32, i32* %4, align 4, !dbg !81
  %29 = icmp ugt i32 %27, %28, !dbg !82
  br i1 %29, label %30, label %81, !dbg !83

30:                                               ; preds = %16
  %31 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !84
  %32 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %31, i32 0, i32 2, !dbg !84
  %33 = load i32, i32* %32, align 8, !dbg !84
  %34 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !84
  %35 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %34, i32 0, i32 3, !dbg !84
  %36 = load i32, i32* %35, align 4, !dbg !84
  %37 = load i32, i32* %6, align 4, !dbg !84
  %38 = sub i32 %36, %37, !dbg !84
  %39 = icmp ule i32 %33, %38, !dbg !84
  br i1 %39, label %40, label %48, !dbg !84

40:                                               ; preds = %30
  %41 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !84
  %42 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %41, i32 0, i32 2, !dbg !84
  %43 = load i32, i32* %42, align 8, !dbg !84
  %44 = load i32, i32* %4, align 4, !dbg !84
  %45 = icmp ule i32 %43, %44, !dbg !84
  br i1 %45, label %46, label %48, !dbg !84

46:                                               ; preds = %40
  br i1 true, label %47, label %48, !dbg !84

47:                                               ; preds = %46
  br label %50, !dbg !84

48:                                               ; preds = %46, %40, %30
  %49 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 50, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !84
  br label %50, !dbg !84

50:                                               ; preds = %48, %47
  %51 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0), i32 noundef 51, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.target_function, i64 0, i64 0)), !dbg !86
  %52 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !87
  %53 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %52, i32 0, i32 1, !dbg !88
  %54 = load i8*, i8** %53, align 8, !dbg !88
  %55 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !89
  %56 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %55, i32 0, i32 0, !dbg !90
  %57 = load i8*, i8** %56, align 8, !dbg !90
  %58 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !91
  %59 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %58, i32 0, i32 2, !dbg !92
  %60 = load i32, i32* %59, align 8, !dbg !92
  %61 = zext i32 %60 to i64, !dbg !91
  %62 = call i8* @memmove(i8* %54, i8* %57, i64 %61), !dbg !93
  %63 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !94
  %64 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %63, i32 0, i32 1, !dbg !95
  %65 = load i8*, i8** %64, align 8, !dbg !95
  %66 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !96
  %67 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %66, i32 0, i32 0, !dbg !97
  store i8* %65, i8** %67, align 8, !dbg !98
  %68 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !99
  %69 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %68, i32 0, i32 0, !dbg !100
  %70 = load i8*, i8** %69, align 8, !dbg !100
  %71 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !101
  %72 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %71, i32 0, i32 2, !dbg !102
  %73 = load i32, i32* %72, align 8, !dbg !102
  %74 = zext i32 %73 to i64, !dbg !99
  %75 = getelementptr inbounds i8, i8* %70, i64 %74, !dbg !99
  store i8 0, i8* %75, align 1, !dbg !103
  %76 = load i32, i32* %6, align 4, !dbg !104
  %77 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !105
  %78 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %77, i32 0, i32 3, !dbg !106
  %79 = load i32, i32* %78, align 4, !dbg !107
  %80 = add i32 %79, %76, !dbg !107
  store i32 %80, i32* %78, align 4, !dbg !107
  br label %90, !dbg !108

81:                                               ; preds = %16
  %82 = load %struct._xmlBuffer*, %struct._xmlBuffer** %3, align 8, !dbg !109
  %83 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %82, i32 0, i32 1, !dbg !111
  %84 = load i8*, i8** %83, align 8, !dbg !111
  %85 = load i32, i32* %6, align 4, !dbg !112
  %86 = load i32, i32* %4, align 4, !dbg !113
  %87 = add i32 %85, %86, !dbg !114
  %88 = zext i32 %87 to i64, !dbg !112
  %89 = call i8* @xmlRealloc(i8* noundef %84, i64 noundef %88), !dbg !115
  store i8* %89, i8** %5, align 8, !dbg !116
  br label %90

90:                                               ; preds = %81, %50
  br label %91, !dbg !117

91:                                               ; preds = %90, %11, %2
  ret void, !dbg !118
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !119 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuffer, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuffer* %2, metadata !123, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.declare(metadata i32* %3, metadata !125, metadata !DIExpression()), !dbg !126
  %5 = bitcast %struct._xmlBuffer* %2 to i8*, !dbg !127
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 32, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !128
  %6 = bitcast i32* %3 to i8*, !dbg !129
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !130
  %7 = load i32, i32* %3, align 4, !dbg !131
  %8 = icmp uge i32 %7, 0, !dbg !132
  %9 = zext i1 %8 to i32, !dbg !132
  %10 = sext i32 %9 to i64, !dbg !131
  call void @klee_assume(i64 noundef %10), !dbg !133
  %11 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 4, !dbg !134
  %12 = load i32, i32* %11, align 8, !dbg !134
  %13 = icmp eq i32 %12, 2, !dbg !135
  %14 = zext i1 %13 to i32, !dbg !135
  %15 = sext i32 %14 to i64, !dbg !136
  call void @klee_assume(i64 noundef %15), !dbg !137
  %16 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !138
  %17 = load i8*, i8** %16, align 8, !dbg !138
  %18 = icmp ne i8* %17, null, !dbg !139
  %19 = zext i1 %18 to i32, !dbg !139
  %20 = sext i32 %19 to i64, !dbg !140
  call void @klee_assume(i64 noundef %20), !dbg !141
  %21 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !142
  %22 = load i8*, i8** %21, align 8, !dbg !142
  %23 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !143
  %24 = load i8*, i8** %23, align 8, !dbg !143
  %25 = icmp uge i8* %22, %24, !dbg !144
  %26 = zext i1 %25 to i32, !dbg !144
  %27 = sext i32 %26 to i64, !dbg !145
  call void @klee_assume(i64 noundef %27), !dbg !146
  %28 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 2, !dbg !147
  %29 = load i32, i32* %28, align 8, !dbg !147
  %30 = icmp ult i32 %29, 4096, !dbg !148
  %31 = zext i1 %30 to i32, !dbg !148
  %32 = sext i32 %31 to i64, !dbg !149
  call void @klee_assume(i64 noundef %32), !dbg !150
  %33 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 3, !dbg !151
  %34 = load i32, i32* %33, align 4, !dbg !151
  %35 = icmp ult i32 %34, 4096, !dbg !152
  %36 = zext i1 %35 to i32, !dbg !152
  %37 = sext i32 %36 to i64, !dbg !153
  call void @klee_assume(i64 noundef %37), !dbg !154
  call void @llvm.dbg.declare(metadata i32* %4, metadata !155, metadata !DIExpression()), !dbg !156
  %38 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 0, !dbg !157
  %39 = load i8*, i8** %38, align 8, !dbg !157
  %40 = getelementptr inbounds %struct._xmlBuffer, %struct._xmlBuffer* %2, i32 0, i32 1, !dbg !158
  %41 = load i8*, i8** %40, align 8, !dbg !158
  %42 = ptrtoint i8* %39 to i64, !dbg !159
  %43 = ptrtoint i8* %41 to i64, !dbg !159
  %44 = sub i64 %42, %43, !dbg !159
  %45 = trunc i64 %44 to i32, !dbg !160
  store i32 %45, i32* %4, align 4, !dbg !156
  %46 = load i32, i32* %4, align 4, !dbg !161
  %47 = load i32, i32* %3, align 4, !dbg !162
  %48 = icmp ugt i32 %46, %47, !dbg !163
  %49 = zext i1 %48 to i32, !dbg !163
  %50 = sext i32 %49 to i64, !dbg !161
  call void @klee_assume(i64 noundef %50), !dbg !164
  %51 = load i32, i32* %3, align 4, !dbg !165
  call void @target_function(%struct._xmlBuffer* noundef %2, i32 noundef %51), !dbg !166
  ret i32 0, !dbg !167
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !168 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !174, metadata !DIExpression()), !dbg !175
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !176, metadata !DIExpression()), !dbg !177
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !178, metadata !DIExpression()), !dbg !179
  call void @llvm.dbg.declare(metadata i8** %8, metadata !180, metadata !DIExpression()), !dbg !183
  %10 = load i8*, i8** %5, align 8, !dbg !184
  store i8* %10, i8** %8, align 8, !dbg !183
  call void @llvm.dbg.declare(metadata i8** %9, metadata !185, metadata !DIExpression()), !dbg !188
  %11 = load i8*, i8** %6, align 8, !dbg !189
  store i8* %11, i8** %9, align 8, !dbg !188
  %12 = load i8*, i8** %6, align 8, !dbg !190
  %13 = load i8*, i8** %5, align 8, !dbg !192
  %14 = icmp eq i8* %12, %13, !dbg !193
  br i1 %14, label %15, label %17, !dbg !194

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !195
  store i8* %16, i8** %4, align 8, !dbg !196
  br label %52, !dbg !196

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !197
  %19 = load i8*, i8** %5, align 8, !dbg !199
  %20 = icmp ugt i8* %18, %19, !dbg !200
  br i1 %20, label %21, label %31, !dbg !201

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !202
  %23 = add i64 %22, -1, !dbg !202
  store i64 %23, i64* %7, align 8, !dbg !202
  %24 = icmp ne i64 %22, 0, !dbg !204
  br i1 %24, label %25, label %50, !dbg !204

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !205
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !205
  store i8* %27, i8** %9, align 8, !dbg !205
  %28 = load i8, i8* %26, align 1, !dbg !206
  %29 = load i8*, i8** %8, align 8, !dbg !207
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !207
  store i8* %30, i8** %8, align 8, !dbg !207
  store i8 %28, i8* %29, align 1, !dbg !208
  br label %21, !dbg !204, !llvm.loop !209

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !211
  %33 = sub i64 %32, 1, !dbg !213
  %34 = load i8*, i8** %8, align 8, !dbg !214
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !214
  store i8* %35, i8** %8, align 8, !dbg !214
  %36 = load i64, i64* %7, align 8, !dbg !215
  %37 = sub i64 %36, 1, !dbg !216
  %38 = load i8*, i8** %9, align 8, !dbg !217
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !217
  store i8* %39, i8** %9, align 8, !dbg !217
  br label %40, !dbg !218

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !219
  %42 = add i64 %41, -1, !dbg !219
  store i64 %42, i64* %7, align 8, !dbg !219
  %43 = icmp ne i64 %41, 0, !dbg !218
  br i1 %43, label %44, label %50, !dbg !218

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !220
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !220
  store i8* %46, i8** %9, align 8, !dbg !220
  %47 = load i8, i8* %45, align 1, !dbg !221
  %48 = load i8*, i8** %8, align 8, !dbg !222
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !222
  store i8* %49, i8** %8, align 8, !dbg !222
  store i8 %47, i8* %48, align 1, !dbg !223
  br label %40, !dbg !218, !llvm.loop !224

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !225
  store i8* %51, i8** %4, align 8, !dbg !226
  br label %52, !dbg !226

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !227
  ret i8* %53, !dbg !227
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/181_tree.c_7339_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0c7dfc996507c76ad8486bc4210d20b1")
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
!38 = distinct !DISubprogram(name: "xmlStringGetNodeList", scope: !1, file: !1, line: 29, type: !39, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!39 = !DISubroutineType(types: !40)
!40 = !{!3}
!41 = !DILocation(line: 31, column: 5, scope: !38)
!42 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 35, type: !43, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !52}
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuffer", file: !1, line: 11, baseType: !47)
!47 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuffer", file: !1, line: 12, size: 256, elements: !48)
!48 = !{!49, !50, !51, !53, !54}
!49 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !47, file: !1, line: 13, baseType: !4, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "contentIO", scope: !47, file: !1, line: 14, baseType: !4, size: 64, offset: 64)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !47, file: !1, line: 15, baseType: !52, size: 32, offset: 128)
!52 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !47, file: !1, line: 16, baseType: !52, size: 32, offset: 160)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !47, file: !1, line: 17, baseType: !52, size: 32, offset: 192)
!55 = !DILocalVariable(name: "buf", arg: 1, scope: !42, file: !1, line: 35, type: !45)
!56 = !DILocation(line: 35, column: 33, scope: !42)
!57 = !DILocalVariable(name: "newSize", arg: 2, scope: !42, file: !1, line: 35, type: !52)
!58 = !DILocation(line: 35, column: 51, scope: !42)
!59 = !DILocalVariable(name: "rebuf", scope: !42, file: !1, line: 36, type: !4)
!60 = !DILocation(line: 36, column: 14, scope: !42)
!61 = !DILocalVariable(name: "start_buf", scope: !42, file: !1, line: 37, type: !52)
!62 = !DILocation(line: 37, column: 18, scope: !42)
!63 = !DILocation(line: 39, column: 10, scope: !64)
!64 = distinct !DILexicalBlock(scope: !42, file: !1, line: 39, column: 9)
!65 = !DILocation(line: 39, column: 15, scope: !64)
!66 = !DILocation(line: 39, column: 21, scope: !64)
!67 = !DILocation(line: 39, column: 45, scope: !64)
!68 = !DILocation(line: 39, column: 49, scope: !64)
!69 = !DILocation(line: 39, column: 54, scope: !64)
!70 = !DILocation(line: 39, column: 64, scope: !64)
!71 = !DILocation(line: 39, column: 9, scope: !42)
!72 = !DILocation(line: 40, column: 21, scope: !73)
!73 = distinct !DILexicalBlock(scope: !64, file: !1, line: 39, column: 74)
!74 = !DILocation(line: 40, column: 26, scope: !73)
!75 = !DILocation(line: 40, column: 36, scope: !73)
!76 = !DILocation(line: 40, column: 41, scope: !73)
!77 = !DILocation(line: 40, column: 34, scope: !73)
!78 = !DILocation(line: 40, column: 19, scope: !73)
!79 = !DILocation(line: 42, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 42, column: 13)
!81 = !DILocation(line: 42, column: 25, scope: !80)
!82 = !DILocation(line: 42, column: 23, scope: !80)
!83 = !DILocation(line: 42, column: 13, scope: !73)
!84 = !DILocation(line: 50, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !1, line: 42, column: 34)
!86 = !DILocation(line: 51, column: 13, scope: !85)
!87 = !DILocation(line: 53, column: 21, scope: !85)
!88 = !DILocation(line: 53, column: 26, scope: !85)
!89 = !DILocation(line: 53, column: 37, scope: !85)
!90 = !DILocation(line: 53, column: 42, scope: !85)
!91 = !DILocation(line: 53, column: 51, scope: !85)
!92 = !DILocation(line: 53, column: 56, scope: !85)
!93 = !DILocation(line: 53, column: 13, scope: !85)
!94 = !DILocation(line: 54, column: 28, scope: !85)
!95 = !DILocation(line: 54, column: 33, scope: !85)
!96 = !DILocation(line: 54, column: 13, scope: !85)
!97 = !DILocation(line: 54, column: 18, scope: !85)
!98 = !DILocation(line: 54, column: 26, scope: !85)
!99 = !DILocation(line: 55, column: 13, scope: !85)
!100 = !DILocation(line: 55, column: 18, scope: !85)
!101 = !DILocation(line: 55, column: 26, scope: !85)
!102 = !DILocation(line: 55, column: 31, scope: !85)
!103 = !DILocation(line: 55, column: 36, scope: !85)
!104 = !DILocation(line: 56, column: 26, scope: !85)
!105 = !DILocation(line: 56, column: 13, scope: !85)
!106 = !DILocation(line: 56, column: 18, scope: !85)
!107 = !DILocation(line: 56, column: 23, scope: !85)
!108 = !DILocation(line: 57, column: 9, scope: !85)
!109 = !DILocation(line: 58, column: 44, scope: !110)
!110 = distinct !DILexicalBlock(scope: !80, file: !1, line: 57, column: 16)
!111 = !DILocation(line: 58, column: 49, scope: !110)
!112 = !DILocation(line: 58, column: 60, scope: !110)
!113 = !DILocation(line: 58, column: 72, scope: !110)
!114 = !DILocation(line: 58, column: 70, scope: !110)
!115 = !DILocation(line: 58, column: 33, scope: !110)
!116 = !DILocation(line: 58, column: 19, scope: !110)
!117 = !DILocation(line: 60, column: 5, scope: !73)
!118 = !DILocation(line: 61, column: 1, scope: !42)
!119 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 63, type: !120, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!120 = !DISubroutineType(types: !121)
!121 = !{!122}
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !DILocalVariable(name: "buf", scope: !119, file: !1, line: 64, type: !46)
!124 = !DILocation(line: 64, column: 15, scope: !119)
!125 = !DILocalVariable(name: "newSize", scope: !119, file: !1, line: 65, type: !52)
!126 = !DILocation(line: 65, column: 18, scope: !119)
!127 = !DILocation(line: 68, column: 24, scope: !119)
!128 = !DILocation(line: 68, column: 5, scope: !119)
!129 = !DILocation(line: 69, column: 24, scope: !119)
!130 = !DILocation(line: 69, column: 5, scope: !119)
!131 = !DILocation(line: 72, column: 17, scope: !119)
!132 = !DILocation(line: 72, column: 25, scope: !119)
!133 = !DILocation(line: 72, column: 5, scope: !119)
!134 = !DILocation(line: 75, column: 21, scope: !119)
!135 = !DILocation(line: 75, column: 27, scope: !119)
!136 = !DILocation(line: 75, column: 17, scope: !119)
!137 = !DILocation(line: 75, column: 5, scope: !119)
!138 = !DILocation(line: 76, column: 21, scope: !119)
!139 = !DILocation(line: 76, column: 31, scope: !119)
!140 = !DILocation(line: 76, column: 17, scope: !119)
!141 = !DILocation(line: 76, column: 5, scope: !119)
!142 = !DILocation(line: 79, column: 21, scope: !119)
!143 = !DILocation(line: 79, column: 36, scope: !119)
!144 = !DILocation(line: 79, column: 29, scope: !119)
!145 = !DILocation(line: 79, column: 17, scope: !119)
!146 = !DILocation(line: 79, column: 5, scope: !119)
!147 = !DILocation(line: 82, column: 21, scope: !119)
!148 = !DILocation(line: 82, column: 25, scope: !119)
!149 = !DILocation(line: 82, column: 17, scope: !119)
!150 = !DILocation(line: 82, column: 5, scope: !119)
!151 = !DILocation(line: 83, column: 21, scope: !119)
!152 = !DILocation(line: 83, column: 26, scope: !119)
!153 = !DILocation(line: 83, column: 17, scope: !119)
!154 = !DILocation(line: 83, column: 5, scope: !119)
!155 = !DILocalVariable(name: "start_buf", scope: !119, file: !1, line: 86, type: !52)
!156 = !DILocation(line: 86, column: 18, scope: !119)
!157 = !DILocation(line: 86, column: 34, scope: !119)
!158 = !DILocation(line: 86, column: 48, scope: !119)
!159 = !DILocation(line: 86, column: 42, scope: !119)
!160 = !DILocation(line: 86, column: 30, scope: !119)
!161 = !DILocation(line: 87, column: 17, scope: !119)
!162 = !DILocation(line: 87, column: 29, scope: !119)
!163 = !DILocation(line: 87, column: 27, scope: !119)
!164 = !DILocation(line: 87, column: 5, scope: !119)
!165 = !DILocation(line: 90, column: 27, scope: !119)
!166 = !DILocation(line: 90, column: 5, scope: !119)
!167 = !DILocation(line: 92, column: 5, scope: !119)
!168 = distinct !DISubprogram(name: "memmove", scope: !169, file: !169, line: 12, type: !170, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!169 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!170 = !DISubroutineType(types: !171)
!171 = !{!3, !3, !172, !20}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!174 = !DILocalVariable(name: "dst", arg: 1, scope: !168, file: !169, line: 12, type: !3)
!175 = !DILocation(line: 12, column: 21, scope: !168)
!176 = !DILocalVariable(name: "src", arg: 2, scope: !168, file: !169, line: 12, type: !172)
!177 = !DILocation(line: 12, column: 38, scope: !168)
!178 = !DILocalVariable(name: "count", arg: 3, scope: !168, file: !169, line: 12, type: !20)
!179 = !DILocation(line: 12, column: 50, scope: !168)
!180 = !DILocalVariable(name: "a", scope: !168, file: !169, line: 13, type: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!183 = !DILocation(line: 13, column: 9, scope: !168)
!184 = !DILocation(line: 13, column: 13, scope: !168)
!185 = !DILocalVariable(name: "b", scope: !168, file: !169, line: 14, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!188 = !DILocation(line: 14, column: 15, scope: !168)
!189 = !DILocation(line: 14, column: 19, scope: !168)
!190 = !DILocation(line: 16, column: 7, scope: !191)
!191 = distinct !DILexicalBlock(scope: !168, file: !169, line: 16, column: 7)
!192 = !DILocation(line: 16, column: 14, scope: !191)
!193 = !DILocation(line: 16, column: 11, scope: !191)
!194 = !DILocation(line: 16, column: 7, scope: !168)
!195 = !DILocation(line: 17, column: 12, scope: !191)
!196 = !DILocation(line: 17, column: 5, scope: !191)
!197 = !DILocation(line: 19, column: 7, scope: !198)
!198 = distinct !DILexicalBlock(scope: !168, file: !169, line: 19, column: 7)
!199 = !DILocation(line: 19, column: 13, scope: !198)
!200 = !DILocation(line: 19, column: 11, scope: !198)
!201 = !DILocation(line: 19, column: 7, scope: !168)
!202 = !DILocation(line: 20, column: 17, scope: !203)
!203 = distinct !DILexicalBlock(scope: !198, file: !169, line: 19, column: 18)
!204 = !DILocation(line: 20, column: 5, scope: !203)
!205 = !DILocation(line: 21, column: 16, scope: !203)
!206 = !DILocation(line: 21, column: 14, scope: !203)
!207 = !DILocation(line: 21, column: 9, scope: !203)
!208 = !DILocation(line: 21, column: 12, scope: !203)
!209 = distinct !{!209, !204, !205, !210}
!210 = !{!"llvm.loop.mustprogress"}
!211 = !DILocation(line: 23, column: 10, scope: !212)
!212 = distinct !DILexicalBlock(scope: !198, file: !169, line: 22, column: 10)
!213 = !DILocation(line: 23, column: 16, scope: !212)
!214 = !DILocation(line: 23, column: 7, scope: !212)
!215 = !DILocation(line: 24, column: 10, scope: !212)
!216 = !DILocation(line: 24, column: 16, scope: !212)
!217 = !DILocation(line: 24, column: 7, scope: !212)
!218 = !DILocation(line: 25, column: 5, scope: !212)
!219 = !DILocation(line: 25, column: 17, scope: !212)
!220 = !DILocation(line: 26, column: 16, scope: !212)
!221 = !DILocation(line: 26, column: 14, scope: !212)
!222 = !DILocation(line: 26, column: 9, scope: !212)
!223 = !DILocation(line: 26, column: 12, scope: !212)
!224 = distinct !{!224, !218, !220, !210}
!225 = !DILocation(line: 29, column: 10, scope: !168)
!226 = !DILocation(line: 29, column: 3, scope: !168)
!227 = !DILocation(line: 30, column: 1, scope: !168)

; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/103_tree.c_9659_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/103_tree.c_9659_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CloneContext = type { %struct._xmlNs*, %struct._xmlNs** }
%struct._xmlNs = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_memory\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"xmlDOMWrapCloneNode(): allocating namespace\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(cloneNs != ((void*)0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/103_tree.c_9659_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDOMWrapCloneNode_helper = private unnamed_addr constant [47 x i8] c"int xmlDOMWrapCloneNode_helper(CloneContext *)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"ns_href_ptr\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ns_prefix_ptr\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !28 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !34, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i8** %3, metadata !36, metadata !DIExpression()), !dbg !37
  %4 = load i64, i64* %2, align 8, !dbg !38
  %5 = call noalias i8* @malloc(i64 noundef %4) #9, !dbg !39
  store i8* %5, i8** %3, align 8, !dbg !37
  %6 = load i8*, i8** %3, align 8, !dbg !40
  %7 = icmp ne i8* %6, null, !dbg !40
  br i1 %7, label %8, label %11, !dbg !42

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !43
  %10 = load i64, i64* %2, align 8, !dbg !45
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !46
  br label %11, !dbg !47

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !48
  ret i8* %12, !dbg !49
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !50 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !55, metadata !DIExpression()), !dbg !56
  %6 = load i8*, i8** %3, align 8, !dbg !57
  %7 = icmp eq i8* %6, null, !dbg !59
  br i1 %7, label %8, label %9, !dbg !60

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !61
  br label %24, !dbg !61

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !62, metadata !DIExpression()), !dbg !63
  %10 = load i8*, i8** %3, align 8, !dbg !64
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !65
  %12 = add i64 %11, 1, !dbg !66
  store i64 %12, i64* %4, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i8** %5, metadata !67, metadata !DIExpression()), !dbg !68
  %13 = load i64, i64* %4, align 8, !dbg !69
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !70
  store i8* %14, i8** %5, align 8, !dbg !68
  %15 = load i8*, i8** %5, align 8, !dbg !71
  %16 = icmp ne i8* %15, null, !dbg !71
  br i1 %16, label %17, label %22, !dbg !73

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !74
  %19 = load i8*, i8** %3, align 8, !dbg !76
  %20 = load i64, i64* %4, align 8, !dbg !77
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !78
  br label %22, !dbg !79

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !80
  store i8* %23, i8** %2, align 8, !dbg !81
  br label %24, !dbg !81

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !82
  ret i8* %25, !dbg !82
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !83 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !86, metadata !DIExpression()), !dbg !87
  ret void, !dbg !88
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDOMWrapCloneNode_helper(%struct.CloneContext* noundef %0) #0 !dbg !89 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.CloneContext*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca %struct._xmlNs*, align 8
  %6 = alloca %struct._xmlNs**, align 8
  store %struct.CloneContext* %0, %struct.CloneContext** %3, align 8
  call void @llvm.dbg.declare(metadata %struct.CloneContext** %3, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !101, metadata !DIExpression()), !dbg !102
  %7 = load %struct.CloneContext*, %struct.CloneContext** %3, align 8, !dbg !103
  %8 = getelementptr inbounds %struct.CloneContext, %struct.CloneContext* %7, i32 0, i32 0, !dbg !104
  %9 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !104
  store %struct._xmlNs* %9, %struct._xmlNs** %4, align 8, !dbg !102
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %5, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata %struct._xmlNs*** %6, metadata !107, metadata !DIExpression()), !dbg !108
  %10 = load %struct.CloneContext*, %struct.CloneContext** %3, align 8, !dbg !109
  %11 = getelementptr inbounds %struct.CloneContext, %struct.CloneContext* %10, i32 0, i32 1, !dbg !110
  %12 = load %struct._xmlNs**, %struct._xmlNs*** %11, align 8, !dbg !110
  store %struct._xmlNs** %12, %struct._xmlNs*** %6, align 8, !dbg !108
  %13 = call i8* @xmlMalloc(i64 noundef 24), !dbg !111
  %14 = bitcast i8* %13 to %struct._xmlNs*, !dbg !112
  store %struct._xmlNs* %14, %struct._xmlNs** %5, align 8, !dbg !113
  %15 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !114
  %16 = icmp eq %struct._xmlNs* %15, null, !dbg !116
  br i1 %16, label %17, label %18, !dbg !117

17:                                               ; preds = %1
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !118
  store i32 -1, i32* %2, align 4, !dbg !120
  br label %58, !dbg !120

18:                                               ; preds = %1
  %19 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !121
  %20 = bitcast %struct._xmlNs* %19 to i8*, !dbg !122
  %21 = call i8* @memset(i8* %20, i32 0, i64 24), !dbg !122
  %22 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !123
  %23 = icmp ne %struct._xmlNs* %22, null, !dbg !123
  br i1 %23, label %24, label %26, !dbg !123

24:                                               ; preds = %18
  br i1 true, label %25, label %26, !dbg !123

25:                                               ; preds = %24
  br label %28, !dbg !123

26:                                               ; preds = %24, %18
  %27 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.xmlDOMWrapCloneNode_helper, i64 0, i64 0)), !dbg !123
  br label %28, !dbg !123

28:                                               ; preds = %26, %25
  %29 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @__PRETTY_FUNCTION__.xmlDOMWrapCloneNode_helper, i64 0, i64 0)), !dbg !124
  %30 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !125
  %31 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %30, i32 0, i32 0, !dbg !126
  store i32 1, i32* %31, align 8, !dbg !127
  %32 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !128
  %33 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %32, i32 0, i32 1, !dbg !130
  %34 = load i8*, i8** %33, align 8, !dbg !130
  %35 = icmp ne i8* %34, null, !dbg !131
  br i1 %35, label %36, label %43, !dbg !132

36:                                               ; preds = %28
  %37 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !133
  %38 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %37, i32 0, i32 1, !dbg !134
  %39 = load i8*, i8** %38, align 8, !dbg !134
  %40 = call i8* @xmlStrdup(i8* noundef %39), !dbg !135
  %41 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !136
  %42 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %41, i32 0, i32 1, !dbg !137
  store i8* %40, i8** %42, align 8, !dbg !138
  br label %43, !dbg !136

43:                                               ; preds = %36, %28
  %44 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !139
  %45 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %44, i32 0, i32 2, !dbg !141
  %46 = load i8*, i8** %45, align 8, !dbg !141
  %47 = icmp ne i8* %46, null, !dbg !142
  br i1 %47, label %48, label %55, !dbg !143

48:                                               ; preds = %43
  %49 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !144
  %50 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %49, i32 0, i32 2, !dbg !145
  %51 = load i8*, i8** %50, align 8, !dbg !145
  %52 = call i8* @xmlStrdup(i8* noundef %51), !dbg !146
  %53 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !147
  %54 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %53, i32 0, i32 2, !dbg !148
  store i8* %52, i8** %54, align 8, !dbg !149
  br label %55, !dbg !147

55:                                               ; preds = %48, %43
  %56 = load %struct._xmlNs*, %struct._xmlNs** %5, align 8, !dbg !150
  %57 = load %struct._xmlNs**, %struct._xmlNs*** %6, align 8, !dbg !151
  store %struct._xmlNs* %56, %struct._xmlNs** %57, align 8, !dbg !152
  store i32 0, i32* %2, align 4, !dbg !153
  br label %58, !dbg !153

58:                                               ; preds = %55, %17
  %59 = load i32, i32* %2, align 4, !dbg !154
  ret i32 %59, !dbg !154
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !155 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.CloneContext, align 8
  %3 = alloca %struct._xmlNs, align 8
  %4 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.CloneContext* %2, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %3, metadata !160, metadata !DIExpression()), !dbg !161
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !162, metadata !DIExpression()), !dbg !163
  store %struct._xmlNs* null, %struct._xmlNs** %4, align 8, !dbg !163
  %5 = getelementptr inbounds %struct.CloneContext, %struct.CloneContext* %2, i32 0, i32 0, !dbg !164
  store %struct._xmlNs* %3, %struct._xmlNs** %5, align 8, !dbg !165
  %6 = getelementptr inbounds %struct.CloneContext, %struct.CloneContext* %2, i32 0, i32 1, !dbg !166
  store %struct._xmlNs** %4, %struct._xmlNs*** %6, align 8, !dbg !167
  %7 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %3, i32 0, i32 1, !dbg !168
  %8 = bitcast i8** %7 to i8*, !dbg !169
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !170
  %9 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %3, i32 0, i32 2, !dbg !171
  %10 = bitcast i8** %9 to i8*, !dbg !172
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 8, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0)), !dbg !173
  %11 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %3, i32 0, i32 1, !dbg !174
  %12 = load i8*, i8** %11, align 8, !dbg !174
  %13 = icmp eq i8* %12, null, !dbg !175
  br i1 %13, label %19, label %14, !dbg !176

14:                                               ; preds = %0
  %15 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %3, i32 0, i32 1, !dbg !177
  %16 = load i8*, i8** %15, align 8, !dbg !177
  %17 = ptrtoint i8* %16 to i64, !dbg !178
  %18 = icmp uge i64 %17, 4096, !dbg !179
  br label %19, !dbg !176

19:                                               ; preds = %14, %0
  %20 = phi i1 [ true, %0 ], [ %18, %14 ]
  %21 = zext i1 %20 to i32, !dbg !176
  %22 = sext i32 %21 to i64, !dbg !180
  call void @klee_assume(i64 noundef %22), !dbg !181
  %23 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %3, i32 0, i32 2, !dbg !182
  %24 = load i8*, i8** %23, align 8, !dbg !182
  %25 = icmp eq i8* %24, null, !dbg !183
  br i1 %25, label %31, label %26, !dbg !184

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %3, i32 0, i32 2, !dbg !185
  %28 = load i8*, i8** %27, align 8, !dbg !185
  %29 = ptrtoint i8* %28 to i64, !dbg !186
  %30 = icmp uge i64 %29, 4096, !dbg !187
  br label %31, !dbg !184

31:                                               ; preds = %26, %19
  %32 = phi i1 [ true, %19 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32, !dbg !184
  %34 = call i32 (i32, ...) bitcast (i32 (...)* @kleke_assume to i32 (i32, ...)*)(i32 noundef %33), !dbg !188
  %35 = call i32 @xmlDOMWrapCloneNode_helper(%struct.CloneContext* noundef %2), !dbg !189
  %36 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !190
  %37 = icmp ne %struct._xmlNs* %36, null, !dbg !190
  br i1 %37, label %38, label %47, !dbg !192

38:                                               ; preds = %31
  %39 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !193
  %40 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %39, i32 0, i32 1, !dbg !195
  %41 = load i8*, i8** %40, align 8, !dbg !195
  call void @free(i8* noundef %41) #9, !dbg !196
  %42 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !197
  %43 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %42, i32 0, i32 2, !dbg !198
  %44 = load i8*, i8** %43, align 8, !dbg !198
  call void @free(i8* noundef %44) #9, !dbg !199
  %45 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !200
  %46 = bitcast %struct._xmlNs* %45 to i8*, !dbg !200
  call void @free(i8* noundef %46) #9, !dbg !201
  br label %47, !dbg !202

47:                                               ; preds = %38, %31
  ret i32 0, !dbg !203
}

declare void @klee_assume(i64 noundef) #3

declare i32 @kleke_assume(...) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !204 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !210, metadata !DIExpression()), !dbg !211
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !212, metadata !DIExpression()), !dbg !213
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !214, metadata !DIExpression()), !dbg !215
  call void @llvm.dbg.declare(metadata i8** %7, metadata !216, metadata !DIExpression()), !dbg !217
  %9 = load i8*, i8** %4, align 8, !dbg !218
  store i8* %9, i8** %7, align 8, !dbg !217
  call void @llvm.dbg.declare(metadata i8** %8, metadata !219, metadata !DIExpression()), !dbg !220
  %10 = load i8*, i8** %5, align 8, !dbg !221
  store i8* %10, i8** %8, align 8, !dbg !220
  br label %11, !dbg !222

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !223
  %13 = add i64 %12, -1, !dbg !223
  store i64 %13, i64* %6, align 8, !dbg !223
  %14 = icmp ugt i64 %12, 0, !dbg !224
  br i1 %14, label %15, label %21, !dbg !222

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !225
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !225
  store i8* %17, i8** %8, align 8, !dbg !225
  %18 = load i8, i8* %16, align 1, !dbg !226
  %19 = load i8*, i8** %7, align 8, !dbg !227
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !227
  store i8* %20, i8** %7, align 8, !dbg !227
  store i8 %18, i8* %19, align 1, !dbg !228
  br label %11, !dbg !222, !llvm.loop !229

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !231
  ret i8* %22, !dbg !232
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !233 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !237, metadata !DIExpression()), !dbg !238
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !239, metadata !DIExpression()), !dbg !240
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !241, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i8** %7, metadata !243, metadata !DIExpression()), !dbg !244
  %8 = load i8*, i8** %4, align 8, !dbg !245
  store i8* %8, i8** %7, align 8, !dbg !244
  br label %9, !dbg !246

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !247
  %11 = add i64 %10, -1, !dbg !247
  store i64 %11, i64* %6, align 8, !dbg !247
  %12 = icmp ugt i64 %10, 0, !dbg !248
  br i1 %12, label %13, label %18, !dbg !246

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !249
  %15 = trunc i32 %14 to i8, !dbg !249
  %16 = load i8*, i8** %7, align 8, !dbg !250
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !250
  store i8* %17, i8** %7, align 8, !dbg !250
  store i8 %15, i8* %16, align 1, !dbg !251
  br label %9, !dbg !246, !llvm.loop !252

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !253
  ret i8* %19, !dbg !254
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !16, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/103_tree.c_9659_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b1096b99cb14abcdc5aac4188adaef07")
!2 = !{!3, !4, !6, !15}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNsPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 13, size: 192, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 14, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !9, file: !1, line: 15, baseType: !4, size: 64, offset: 64)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !9, file: !1, line: 16, baseType: !4, size: 64, offset: 128)
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = distinct !DICompileUnit(language: DW_LANG_C99, file: !17, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!17 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 20, type: !29, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!29 = !DISubroutineType(types: !30)
!30 = !{!3, !31}
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !15)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !{}
!34 = !DILocalVariable(name: "size", arg: 1, scope: !28, file: !1, line: 20, type: !31)
!35 = !DILocation(line: 20, column: 24, scope: !28)
!36 = !DILocalVariable(name: "ptr", scope: !28, file: !1, line: 21, type: !3)
!37 = !DILocation(line: 21, column: 11, scope: !28)
!38 = !DILocation(line: 21, column: 24, scope: !28)
!39 = !DILocation(line: 21, column: 17, scope: !28)
!40 = !DILocation(line: 22, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !1, line: 22, column: 9)
!42 = !DILocation(line: 22, column: 9, scope: !28)
!43 = !DILocation(line: 23, column: 28, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 22, column: 14)
!45 = !DILocation(line: 23, column: 33, scope: !44)
!46 = !DILocation(line: 23, column: 9, scope: !44)
!47 = !DILocation(line: 24, column: 5, scope: !44)
!48 = !DILocation(line: 25, column: 12, scope: !28)
!49 = !DILocation(line: 25, column: 5, scope: !28)
!50 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 29, type: !51, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!51 = !DISubroutineType(types: !52)
!52 = !{!4, !53}
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!55 = !DILocalVariable(name: "cur", arg: 1, scope: !50, file: !1, line: 29, type: !53)
!56 = !DILocation(line: 29, column: 29, scope: !50)
!57 = !DILocation(line: 30, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !1, line: 30, column: 9)
!59 = !DILocation(line: 30, column: 13, scope: !58)
!60 = !DILocation(line: 30, column: 9, scope: !50)
!61 = !DILocation(line: 30, column: 22, scope: !58)
!62 = !DILocalVariable(name: "len", scope: !50, file: !1, line: 31, type: !31)
!63 = !DILocation(line: 31, column: 12, scope: !50)
!64 = !DILocation(line: 31, column: 25, scope: !50)
!65 = !DILocation(line: 31, column: 18, scope: !50)
!66 = !DILocation(line: 31, column: 30, scope: !50)
!67 = !DILocalVariable(name: "res", scope: !50, file: !1, line: 32, type: !4)
!68 = !DILocation(line: 32, column: 11, scope: !50)
!69 = !DILocation(line: 32, column: 31, scope: !50)
!70 = !DILocation(line: 32, column: 24, scope: !50)
!71 = !DILocation(line: 33, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !50, file: !1, line: 33, column: 9)
!73 = !DILocation(line: 33, column: 9, scope: !50)
!74 = !DILocation(line: 34, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 33, column: 14)
!76 = !DILocation(line: 34, column: 21, scope: !75)
!77 = !DILocation(line: 34, column: 26, scope: !75)
!78 = !DILocation(line: 34, column: 9, scope: !75)
!79 = !DILocation(line: 35, column: 5, scope: !75)
!80 = !DILocation(line: 36, column: 12, scope: !50)
!81 = !DILocation(line: 36, column: 5, scope: !50)
!82 = !DILocation(line: 37, column: 1, scope: !50)
!83 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 40, type: !84, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !53}
!86 = !DILocalVariable(name: "func", arg: 1, scope: !83, file: !1, line: 40, type: !53)
!87 = !DILocation(line: 40, column: 35, scope: !83)
!88 = !DILocation(line: 42, column: 1, scope: !83)
!89 = distinct !DISubprogram(name: "xmlDOMWrapCloneNode_helper", scope: !1, file: !1, line: 51, type: !90, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!90 = !DISubroutineType(types: !91)
!91 = !{!12, !92}
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "CloneContext", file: !1, line: 48, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 45, size: 128, elements: !95)
!95 = !{!96, !97}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !94, file: !1, line: 46, baseType: !6, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "cloneNsDefSlot", scope: !94, file: !1, line: 47, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!99 = !DILocalVariable(name: "ctx", arg: 1, scope: !89, file: !1, line: 51, type: !92)
!100 = !DILocation(line: 51, column: 46, scope: !89)
!101 = !DILocalVariable(name: "ns", scope: !89, file: !1, line: 52, type: !6)
!102 = !DILocation(line: 52, column: 14, scope: !89)
!103 = !DILocation(line: 52, column: 19, scope: !89)
!104 = !DILocation(line: 52, column: 24, scope: !89)
!105 = !DILocalVariable(name: "cloneNs", scope: !89, file: !1, line: 53, type: !6)
!106 = !DILocation(line: 53, column: 14, scope: !89)
!107 = !DILocalVariable(name: "cloneNsDefSlot", scope: !89, file: !1, line: 54, type: !98)
!108 = !DILocation(line: 54, column: 15, scope: !89)
!109 = !DILocation(line: 54, column: 32, scope: !89)
!110 = !DILocation(line: 54, column: 37, scope: !89)
!111 = !DILocation(line: 56, column: 26, scope: !89)
!112 = !DILocation(line: 56, column: 15, scope: !89)
!113 = !DILocation(line: 56, column: 13, scope: !89)
!114 = !DILocation(line: 57, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !89, file: !1, line: 57, column: 9)
!116 = !DILocation(line: 57, column: 17, scope: !115)
!117 = !DILocation(line: 57, column: 9, scope: !89)
!118 = !DILocation(line: 58, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !115, file: !1, line: 57, column: 26)
!120 = !DILocation(line: 59, column: 9, scope: !119)
!121 = !DILocation(line: 63, column: 12, scope: !89)
!122 = !DILocation(line: 63, column: 5, scope: !89)
!123 = !DILocation(line: 66, column: 5, scope: !89)
!124 = !DILocation(line: 69, column: 5, scope: !89)
!125 = !DILocation(line: 71, column: 5, scope: !89)
!126 = !DILocation(line: 71, column: 14, scope: !89)
!127 = !DILocation(line: 71, column: 19, scope: !89)
!128 = !DILocation(line: 73, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !89, file: !1, line: 73, column: 9)
!130 = !DILocation(line: 73, column: 13, scope: !129)
!131 = !DILocation(line: 73, column: 18, scope: !129)
!132 = !DILocation(line: 73, column: 9, scope: !89)
!133 = !DILocation(line: 74, column: 35, scope: !129)
!134 = !DILocation(line: 74, column: 39, scope: !129)
!135 = !DILocation(line: 74, column: 25, scope: !129)
!136 = !DILocation(line: 74, column: 9, scope: !129)
!137 = !DILocation(line: 74, column: 18, scope: !129)
!138 = !DILocation(line: 74, column: 23, scope: !129)
!139 = !DILocation(line: 75, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !89, file: !1, line: 75, column: 9)
!141 = !DILocation(line: 75, column: 13, scope: !140)
!142 = !DILocation(line: 75, column: 20, scope: !140)
!143 = !DILocation(line: 75, column: 9, scope: !89)
!144 = !DILocation(line: 76, column: 37, scope: !140)
!145 = !DILocation(line: 76, column: 41, scope: !140)
!146 = !DILocation(line: 76, column: 27, scope: !140)
!147 = !DILocation(line: 76, column: 9, scope: !140)
!148 = !DILocation(line: 76, column: 18, scope: !140)
!149 = !DILocation(line: 76, column: 25, scope: !140)
!150 = !DILocation(line: 78, column: 23, scope: !89)
!151 = !DILocation(line: 78, column: 6, scope: !89)
!152 = !DILocation(line: 78, column: 21, scope: !89)
!153 = !DILocation(line: 79, column: 5, scope: !89)
!154 = !DILocation(line: 80, column: 1, scope: !89)
!155 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 82, type: !156, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !33)
!156 = !DISubroutineType(types: !157)
!157 = !{!12}
!158 = !DILocalVariable(name: "ctx", scope: !155, file: !1, line: 84, type: !93)
!159 = !DILocation(line: 84, column: 18, scope: !155)
!160 = !DILocalVariable(name: "ns", scope: !155, file: !1, line: 85, type: !8)
!161 = !DILocation(line: 85, column: 11, scope: !155)
!162 = !DILocalVariable(name: "cloneNsSlot", scope: !155, file: !1, line: 86, type: !6)
!163 = !DILocation(line: 86, column: 14, scope: !155)
!164 = !DILocation(line: 89, column: 9, scope: !155)
!165 = !DILocation(line: 89, column: 12, scope: !155)
!166 = !DILocation(line: 90, column: 9, scope: !155)
!167 = !DILocation(line: 90, column: 24, scope: !155)
!168 = !DILocation(line: 93, column: 28, scope: !155)
!169 = !DILocation(line: 93, column: 24, scope: !155)
!170 = !DILocation(line: 93, column: 5, scope: !155)
!171 = !DILocation(line: 94, column: 28, scope: !155)
!172 = !DILocation(line: 94, column: 24, scope: !155)
!173 = !DILocation(line: 94, column: 5, scope: !155)
!174 = !DILocation(line: 97, column: 20, scope: !155)
!175 = !DILocation(line: 97, column: 25, scope: !155)
!176 = !DILocation(line: 97, column: 33, scope: !155)
!177 = !DILocation(line: 97, column: 54, scope: !155)
!178 = !DILocation(line: 97, column: 36, scope: !155)
!179 = !DILocation(line: 97, column: 59, scope: !155)
!180 = !DILocation(line: 97, column: 17, scope: !155)
!181 = !DILocation(line: 97, column: 5, scope: !155)
!182 = !DILocation(line: 98, column: 21, scope: !155)
!183 = !DILocation(line: 98, column: 28, scope: !155)
!184 = !DILocation(line: 98, column: 36, scope: !155)
!185 = !DILocation(line: 98, column: 57, scope: !155)
!186 = !DILocation(line: 98, column: 39, scope: !155)
!187 = !DILocation(line: 98, column: 64, scope: !155)
!188 = !DILocation(line: 98, column: 5, scope: !155)
!189 = !DILocation(line: 101, column: 5, scope: !155)
!190 = !DILocation(line: 104, column: 9, scope: !191)
!191 = distinct !DILexicalBlock(scope: !155, file: !1, line: 104, column: 9)
!192 = !DILocation(line: 104, column: 9, scope: !155)
!193 = !DILocation(line: 105, column: 14, scope: !194)
!194 = distinct !DILexicalBlock(scope: !191, file: !1, line: 104, column: 22)
!195 = !DILocation(line: 105, column: 27, scope: !194)
!196 = !DILocation(line: 105, column: 9, scope: !194)
!197 = !DILocation(line: 106, column: 14, scope: !194)
!198 = !DILocation(line: 106, column: 27, scope: !194)
!199 = !DILocation(line: 106, column: 9, scope: !194)
!200 = !DILocation(line: 107, column: 14, scope: !194)
!201 = !DILocation(line: 107, column: 9, scope: !194)
!202 = !DILocation(line: 108, column: 5, scope: !194)
!203 = !DILocation(line: 110, column: 5, scope: !155)
!204 = distinct !DISubprogram(name: "memcpy", scope: !205, file: !205, line: 12, type: !206, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !16, retainedNodes: !33)
!205 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!206 = !DISubroutineType(types: !207)
!207 = !{!3, !3, !208, !31}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!210 = !DILocalVariable(name: "destaddr", arg: 1, scope: !204, file: !205, line: 12, type: !3)
!211 = !DILocation(line: 12, column: 20, scope: !204)
!212 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !204, file: !205, line: 12, type: !208)
!213 = !DILocation(line: 12, column: 42, scope: !204)
!214 = !DILocalVariable(name: "len", arg: 3, scope: !204, file: !205, line: 12, type: !31)
!215 = !DILocation(line: 12, column: 58, scope: !204)
!216 = !DILocalVariable(name: "dest", scope: !204, file: !205, line: 13, type: !4)
!217 = !DILocation(line: 13, column: 9, scope: !204)
!218 = !DILocation(line: 13, column: 16, scope: !204)
!219 = !DILocalVariable(name: "src", scope: !204, file: !205, line: 14, type: !53)
!220 = !DILocation(line: 14, column: 15, scope: !204)
!221 = !DILocation(line: 14, column: 21, scope: !204)
!222 = !DILocation(line: 16, column: 3, scope: !204)
!223 = !DILocation(line: 16, column: 13, scope: !204)
!224 = !DILocation(line: 16, column: 16, scope: !204)
!225 = !DILocation(line: 17, column: 19, scope: !204)
!226 = !DILocation(line: 17, column: 15, scope: !204)
!227 = !DILocation(line: 17, column: 10, scope: !204)
!228 = !DILocation(line: 17, column: 13, scope: !204)
!229 = distinct !{!229, !222, !225, !230}
!230 = !{!"llvm.loop.mustprogress"}
!231 = !DILocation(line: 18, column: 10, scope: !204)
!232 = !DILocation(line: 18, column: 3, scope: !204)
!233 = distinct !DISubprogram(name: "memset", scope: !234, file: !234, line: 12, type: !235, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !33)
!234 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!235 = !DISubroutineType(types: !236)
!236 = !{!3, !3, !12, !31}
!237 = !DILocalVariable(name: "dst", arg: 1, scope: !233, file: !234, line: 12, type: !3)
!238 = !DILocation(line: 12, column: 20, scope: !233)
!239 = !DILocalVariable(name: "s", arg: 2, scope: !233, file: !234, line: 12, type: !12)
!240 = !DILocation(line: 12, column: 29, scope: !233)
!241 = !DILocalVariable(name: "count", arg: 3, scope: !233, file: !234, line: 12, type: !31)
!242 = !DILocation(line: 12, column: 39, scope: !233)
!243 = !DILocalVariable(name: "a", scope: !233, file: !234, line: 13, type: !4)
!244 = !DILocation(line: 13, column: 9, scope: !233)
!245 = !DILocation(line: 13, column: 13, scope: !233)
!246 = !DILocation(line: 14, column: 3, scope: !233)
!247 = !DILocation(line: 14, column: 15, scope: !233)
!248 = !DILocation(line: 14, column: 18, scope: !233)
!249 = !DILocation(line: 15, column: 12, scope: !233)
!250 = !DILocation(line: 15, column: 7, scope: !233)
!251 = !DILocation(line: 15, column: 10, scope: !233)
!252 = distinct !{!252, !246, !249, !230}
!253 = !DILocation(line: 16, column: 10, scope: !233)
!254 = !DILocation(line: 16, column: 3, scope: !233)

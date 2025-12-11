; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNode = type { %struct._xmlNs* }
%struct._xmlNs = type { i32, i8*, i8* }

@.str = private unnamed_addr constant [8 x i8] c"ns_href\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"ns_prefix\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"parent_node\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"(result != -1) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [44 x i8] c"xmlDOMWrapCloneNode(): allocating namespace\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !31 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !37, metadata !DIExpression()), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !40 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !43, metadata !DIExpression()), !dbg !44
  %6 = load i8*, i8** %3, align 8, !dbg !45
  %7 = icmp eq i8* %6, null, !dbg !47
  br i1 %7, label %8, label %9, !dbg !48

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !49
  br label %24, !dbg !49

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !50, metadata !DIExpression()), !dbg !54
  %10 = load i8*, i8** %3, align 8, !dbg !55
  %11 = call i64 @strlen(i8* noundef %10) #9, !dbg !56
  %12 = add i64 %11, 1, !dbg !57
  store i64 %12, i64* %4, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i8** %5, metadata !58, metadata !DIExpression()), !dbg !59
  %13 = load i64, i64* %4, align 8, !dbg !60
  %14 = call noalias i8* @malloc(i64 noundef %13) #10, !dbg !61
  store i8* %14, i8** %5, align 8, !dbg !59
  %15 = load i8*, i8** %5, align 8, !dbg !62
  %16 = icmp ne i8* %15, null, !dbg !64
  br i1 %16, label %17, label %22, !dbg !65

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !66
  %19 = load i8*, i8** %3, align 8, !dbg !68
  %20 = load i64, i64* %4, align 8, !dbg !69
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !70
  br label %22, !dbg !71

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !72
  store i8* %23, i8** %2, align 8, !dbg !73
  br label %24, !dbg !73

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !74
  ret i8* %25, !dbg !74
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !75 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca %struct._xmlNs, align 8
  %6 = alloca [256 x i8], align 16
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !78, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !80, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !82, metadata !DIExpression()), !dbg !83
  store %struct._xmlNode* null, %struct._xmlNode** %4, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %5, metadata !84, metadata !DIExpression()), !dbg !85
  call void @llvm.dbg.declare(metadata [256 x i8]* %6, metadata !86, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata [256 x i8]* %7, metadata !91, metadata !DIExpression()), !dbg !92
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !93
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !94
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !95
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 256, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !96
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 255, !dbg !97
  %12 = load i8, i8* %11, align 1, !dbg !97
  %13 = sext i8 %12 to i32, !dbg !97
  %14 = icmp eq i32 %13, 0, !dbg !98
  %15 = zext i1 %14 to i32, !dbg !98
  %16 = sext i32 %15 to i64, !dbg !97
  call void @klee_assume(i64 noundef %16), !dbg !99
  %17 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255, !dbg !100
  %18 = load i8, i8* %17, align 1, !dbg !100
  %19 = sext i8 %18 to i32, !dbg !100
  %20 = icmp eq i32 %19, 0, !dbg !101
  %21 = zext i1 %20 to i32, !dbg !101
  %22 = sext i32 %21 to i64, !dbg !100
  call void @klee_assume(i64 noundef %22), !dbg !102
  %23 = getelementptr inbounds [256 x i8], [256 x i8]* %6, i64 0, i64 0, !dbg !103
  %24 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %5, i32 0, i32 1, !dbg !104
  store i8* %23, i8** %24, align 8, !dbg !105
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0, !dbg !106
  %26 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %5, i32 0, i32 2, !dbg !107
  store i8* %25, i8** %26, align 8, !dbg !108
  %27 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %5, i32 0, i32 0, !dbg !109
  store i32 1, i32* %27, align 8, !dbg !110
  %28 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !111
  store %struct._xmlNs* %5, %struct._xmlNs** %28, align 8, !dbg !112
  %29 = bitcast %struct._xmlNode* %3 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %29, i64 noundef 8, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !114
  call void @llvm.dbg.declare(metadata i32* %8, metadata !115, metadata !DIExpression()), !dbg !116
  %30 = call i32 @xmlDOMWrapCloneNode(%struct._xmlNode* noundef %2, %struct._xmlNode* noundef %3, %struct._xmlNode** noundef %4), !dbg !117
  store i32 %30, i32* %8, align 4, !dbg !116
  %31 = load i32, i32* %8, align 4, !dbg !118
  %32 = icmp ne i32 %31, -1, !dbg !118
  br i1 %32, label %33, label %35, !dbg !118

33:                                               ; preds = %0
  br i1 true, label %34, label %35, !dbg !118

34:                                               ; preds = %33
  br label %37, !dbg !118

35:                                               ; preds = %33, %0
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !118
  br label %37, !dbg !118

37:                                               ; preds = %35, %34
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.5, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !119
  %39 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !120
  %40 = icmp ne %struct._xmlNode* %39, null, !dbg !122
  br i1 %40, label %41, label %77, !dbg !123

41:                                               ; preds = %37
  %42 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !124
  %43 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %42, i32 0, i32 0, !dbg !125
  %44 = load %struct._xmlNs*, %struct._xmlNs** %43, align 8, !dbg !125
  %45 = icmp ne %struct._xmlNs* %44, null, !dbg !126
  br i1 %45, label %46, label %77, !dbg !127

46:                                               ; preds = %41
  %47 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !128
  %48 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %47, i32 0, i32 0, !dbg !131
  %49 = load %struct._xmlNs*, %struct._xmlNs** %48, align 8, !dbg !131
  %50 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %49, i32 0, i32 1, !dbg !132
  %51 = load i8*, i8** %50, align 8, !dbg !132
  %52 = icmp ne i8* %51, null, !dbg !133
  br i1 %52, label %53, label %59, !dbg !134

53:                                               ; preds = %46
  %54 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !135
  %55 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %54, i32 0, i32 0, !dbg !136
  %56 = load %struct._xmlNs*, %struct._xmlNs** %55, align 8, !dbg !136
  %57 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %56, i32 0, i32 1, !dbg !137
  %58 = load i8*, i8** %57, align 8, !dbg !137
  call void @free(i8* noundef %58) #10, !dbg !138
  br label %59, !dbg !138

59:                                               ; preds = %53, %46
  %60 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !139
  %61 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %60, i32 0, i32 0, !dbg !141
  %62 = load %struct._xmlNs*, %struct._xmlNs** %61, align 8, !dbg !141
  %63 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %62, i32 0, i32 2, !dbg !142
  %64 = load i8*, i8** %63, align 8, !dbg !142
  %65 = icmp ne i8* %64, null, !dbg !143
  br i1 %65, label %66, label %72, !dbg !144

66:                                               ; preds = %59
  %67 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !145
  %68 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %67, i32 0, i32 0, !dbg !146
  %69 = load %struct._xmlNs*, %struct._xmlNs** %68, align 8, !dbg !146
  %70 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %69, i32 0, i32 2, !dbg !147
  %71 = load i8*, i8** %70, align 8, !dbg !147
  call void @free(i8* noundef %71) #10, !dbg !148
  br label %72, !dbg !148

72:                                               ; preds = %66, %59
  %73 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !149
  %74 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %73, i32 0, i32 0, !dbg !150
  %75 = load %struct._xmlNs*, %struct._xmlNs** %74, align 8, !dbg !150
  %76 = bitcast %struct._xmlNs* %75 to i8*, !dbg !149
  call void @free(i8* noundef %76) #10, !dbg !151
  br label %77, !dbg !152

77:                                               ; preds = %72, %41, %37
  %78 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !153
  %79 = bitcast %struct._xmlNode* %78 to i8*, !dbg !153
  call void @free(i8* noundef %79) #10, !dbg !154
  ret i32 0, !dbg !155
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDOMWrapCloneNode(%struct._xmlNode* noundef %0, %struct._xmlNode* noundef %1, %struct._xmlNode** noundef %2) #0 !dbg !156 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlNode*, align 8
  %6 = alloca %struct._xmlNode*, align 8
  %7 = alloca %struct._xmlNode**, align 8
  %8 = alloca %struct._xmlNs*, align 8
  %9 = alloca %struct._xmlNs*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %5, metadata !160, metadata !DIExpression()), !dbg !161
  store %struct._xmlNode* %1, %struct._xmlNode** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %6, metadata !162, metadata !DIExpression()), !dbg !163
  store %struct._xmlNode** %2, %struct._xmlNode*** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode*** %7, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %8, metadata !166, metadata !DIExpression()), !dbg !167
  %10 = load %struct._xmlNode*, %struct._xmlNode** %5, align 8, !dbg !168
  %11 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %10, i32 0, i32 0, !dbg !169
  %12 = load %struct._xmlNs*, %struct._xmlNs** %11, align 8, !dbg !169
  store %struct._xmlNs* %12, %struct._xmlNs** %8, align 8, !dbg !167
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %9, metadata !170, metadata !DIExpression()), !dbg !171
  store %struct._xmlNs* null, %struct._xmlNs** %9, align 8, !dbg !171
  %13 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !172
  %14 = icmp ne %struct._xmlNs* %13, null, !dbg !174
  br i1 %14, label %15, label %66, !dbg !175

15:                                               ; preds = %3
  %16 = call noalias i8* @malloc(i64 noundef 24) #10, !dbg !176
  %17 = bitcast i8* %16 to %struct._xmlNs*, !dbg !178
  store %struct._xmlNs* %17, %struct._xmlNs** %9, align 8, !dbg !179
  %18 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !180
  %19 = icmp eq %struct._xmlNs* %18, null, !dbg !182
  br i1 %19, label %20, label %21, !dbg !183

20:                                               ; preds = %15
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([44 x i8], [44 x i8]* @.str.7, i64 0, i64 0)), !dbg !184
  store i32 -1, i32* %4, align 4, !dbg !186
  br label %67, !dbg !186

21:                                               ; preds = %15
  %22 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !187
  %23 = bitcast %struct._xmlNs* %22 to i8*, !dbg !188
  %24 = call i8* @memset(i8* %23, i32 0, i64 24), !dbg !188
  %25 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !189
  %26 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %25, i32 0, i32 0, !dbg !190
  store i32 1, i32* %26, align 8, !dbg !191
  %27 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !192
  %28 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %27, i32 0, i32 1, !dbg !194
  %29 = load i8*, i8** %28, align 8, !dbg !194
  %30 = icmp ne i8* %29, null, !dbg !195
  br i1 %30, label %31, label %38, !dbg !196

31:                                               ; preds = %21
  %32 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !197
  %33 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %32, i32 0, i32 1, !dbg !198
  %34 = load i8*, i8** %33, align 8, !dbg !198
  %35 = call i8* @xmlStrdup(i8* noundef %34), !dbg !199
  %36 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !200
  %37 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %36, i32 0, i32 1, !dbg !201
  store i8* %35, i8** %37, align 8, !dbg !202
  br label %38, !dbg !200

38:                                               ; preds = %31, %21
  %39 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !203
  %40 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %39, i32 0, i32 2, !dbg !205
  %41 = load i8*, i8** %40, align 8, !dbg !205
  %42 = icmp ne i8* %41, null, !dbg !206
  br i1 %42, label %43, label %50, !dbg !207

43:                                               ; preds = %38
  %44 = load %struct._xmlNs*, %struct._xmlNs** %8, align 8, !dbg !208
  %45 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %44, i32 0, i32 2, !dbg !209
  %46 = load i8*, i8** %45, align 8, !dbg !209
  %47 = call i8* @xmlStrdup(i8* noundef %46), !dbg !210
  %48 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !211
  %49 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %48, i32 0, i32 2, !dbg !212
  store i8* %47, i8** %49, align 8, !dbg !213
  br label %50, !dbg !211

50:                                               ; preds = %43, %38
  %51 = call noalias i8* @malloc(i64 noundef 8) #10, !dbg !214
  %52 = bitcast i8* %51 to %struct._xmlNode*, !dbg !215
  %53 = load %struct._xmlNode**, %struct._xmlNode*** %7, align 8, !dbg !216
  store %struct._xmlNode* %52, %struct._xmlNode** %53, align 8, !dbg !217
  %54 = load %struct._xmlNode**, %struct._xmlNode*** %7, align 8, !dbg !218
  %55 = load %struct._xmlNode*, %struct._xmlNode** %54, align 8, !dbg !220
  %56 = icmp ne %struct._xmlNode* %55, null, !dbg !221
  br i1 %56, label %57, label %62, !dbg !222

57:                                               ; preds = %50
  %58 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !223
  %59 = load %struct._xmlNode**, %struct._xmlNode*** %7, align 8, !dbg !225
  %60 = load %struct._xmlNode*, %struct._xmlNode** %59, align 8, !dbg !226
  %61 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %60, i32 0, i32 0, !dbg !227
  store %struct._xmlNs* %58, %struct._xmlNs** %61, align 8, !dbg !228
  br label %65, !dbg !229

62:                                               ; preds = %50
  %63 = load %struct._xmlNs*, %struct._xmlNs** %9, align 8, !dbg !230
  %64 = bitcast %struct._xmlNs* %63 to i8*, !dbg !230
  call void @free(i8* noundef %64) #10, !dbg !232
  store i32 -1, i32* %4, align 4, !dbg !233
  br label %67, !dbg !233

65:                                               ; preds = %57
  br label %66, !dbg !234

66:                                               ; preds = %65, %3
  store i32 0, i32* %4, align 4, !dbg !235
  br label %67, !dbg !235

67:                                               ; preds = %66, %62, %20
  %68 = load i32, i32* %4, align 4, !dbg !236
  ret i32 %68, !dbg !236
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !237 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !243, metadata !DIExpression()), !dbg !244
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !245, metadata !DIExpression()), !dbg !246
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !247, metadata !DIExpression()), !dbg !248
  call void @llvm.dbg.declare(metadata i8** %7, metadata !249, metadata !DIExpression()), !dbg !250
  %9 = load i8*, i8** %4, align 8, !dbg !251
  store i8* %9, i8** %7, align 8, !dbg !250
  call void @llvm.dbg.declare(metadata i8** %8, metadata !252, metadata !DIExpression()), !dbg !253
  %10 = load i8*, i8** %5, align 8, !dbg !254
  store i8* %10, i8** %8, align 8, !dbg !253
  br label %11, !dbg !255

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !256
  %13 = add i64 %12, -1, !dbg !256
  store i64 %13, i64* %6, align 8, !dbg !256
  %14 = icmp ugt i64 %12, 0, !dbg !257
  br i1 %14, label %15, label %21, !dbg !255

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !258
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !258
  store i8* %17, i8** %8, align 8, !dbg !258
  %18 = load i8, i8* %16, align 1, !dbg !259
  %19 = load i8*, i8** %7, align 8, !dbg !260
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !260
  store i8* %20, i8** %7, align 8, !dbg !260
  store i8 %18, i8* %19, align 1, !dbg !261
  br label %11, !dbg !255, !llvm.loop !262

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !264
  ret i8* %22, !dbg !265
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !266 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !270, metadata !DIExpression()), !dbg !271
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !272, metadata !DIExpression()), !dbg !273
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !274, metadata !DIExpression()), !dbg !275
  call void @llvm.dbg.declare(metadata i8** %7, metadata !276, metadata !DIExpression()), !dbg !277
  %8 = load i8*, i8** %4, align 8, !dbg !278
  store i8* %8, i8** %7, align 8, !dbg !277
  br label %9, !dbg !279

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !280
  %11 = add i64 %10, -1, !dbg !280
  store i64 %11, i64* %6, align 8, !dbg !280
  %12 = icmp ugt i64 %10, 0, !dbg !281
  br i1 %12, label %13, label %18, !dbg !279

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !282
  %15 = trunc i32 %14 to i8, !dbg !282
  %16 = load i8*, i8** %7, align 8, !dbg !283
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !283
  store i8* %17, i8** %7, align 8, !dbg !283
  store i8 %15, i8* %16, align 1, !dbg !284
  br label %9, !dbg !279, !llvm.loop !285

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !286
  ret i8* %19, !dbg !287
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!0, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30, !30, !30}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/150_tree.c_9438_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "6f8a05c7d3de89e0692c6e450c042d14")
!2 = !{!3, !4, !6, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 10, baseType: !8)
!8 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 11, size: 192, elements: !9)
!9 = !{!10, !12, !13}
!10 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !8, file: !1, line: 12, baseType: !11, size: 32)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !8, file: !1, line: 13, baseType: !4, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !8, file: !1, line: 14, baseType: !4, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 17, baseType: !16)
!16 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 18, size: 64, elements: !17)
!17 = !{!18}
!18 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !16, file: !1, line: 19, baseType: !6, size: 64)
!19 = distinct !DICompileUnit(language: DW_LANG_C99, file: !20, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!20 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!23 = !{i32 7, !"Dwarf Version", i32 5}
!24 = !{i32 2, !"Debug Info Version", i32 3}
!25 = !{i32 1, !"wchar_size", i32 4}
!26 = !{i32 7, !"PIC Level", i32 2}
!27 = !{i32 7, !"PIE Level", i32 2}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"Ubuntu clang version 14.0.6"}
!31 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 23, type: !32, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34}
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!36 = !{}
!37 = !DILocalVariable(name: "msg", arg: 1, scope: !31, file: !1, line: 23, type: !34)
!38 = !DILocation(line: 23, column: 35, scope: !31)
!39 = !DILocation(line: 25, column: 1, scope: !31)
!40 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 27, type: !41, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!41 = !DISubroutineType(types: !42)
!42 = !{!4, !34}
!43 = !DILocalVariable(name: "cur", arg: 1, scope: !40, file: !1, line: 27, type: !34)
!44 = !DILocation(line: 27, column: 29, scope: !40)
!45 = !DILocation(line: 28, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 28, column: 9)
!47 = !DILocation(line: 28, column: 13, scope: !46)
!48 = !DILocation(line: 28, column: 9, scope: !40)
!49 = !DILocation(line: 28, column: 22, scope: !46)
!50 = !DILocalVariable(name: "len", scope: !40, file: !1, line: 29, type: !51)
!51 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !52, line: 46, baseType: !53)
!52 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!53 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!54 = !DILocation(line: 29, column: 12, scope: !40)
!55 = !DILocation(line: 29, column: 25, scope: !40)
!56 = !DILocation(line: 29, column: 18, scope: !40)
!57 = !DILocation(line: 29, column: 30, scope: !40)
!58 = !DILocalVariable(name: "copy", scope: !40, file: !1, line: 30, type: !4)
!59 = !DILocation(line: 30, column: 11, scope: !40)
!60 = !DILocation(line: 30, column: 33, scope: !40)
!61 = !DILocation(line: 30, column: 26, scope: !40)
!62 = !DILocation(line: 31, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !40, file: !1, line: 31, column: 9)
!64 = !DILocation(line: 31, column: 14, scope: !63)
!65 = !DILocation(line: 31, column: 9, scope: !40)
!66 = !DILocation(line: 32, column: 16, scope: !67)
!67 = distinct !DILexicalBlock(scope: !63, file: !1, line: 31, column: 23)
!68 = !DILocation(line: 32, column: 22, scope: !67)
!69 = !DILocation(line: 32, column: 27, scope: !67)
!70 = !DILocation(line: 32, column: 9, scope: !67)
!71 = !DILocation(line: 33, column: 5, scope: !67)
!72 = !DILocation(line: 34, column: 12, scope: !40)
!73 = !DILocation(line: 34, column: 5, scope: !40)
!74 = !DILocation(line: 35, column: 1, scope: !40)
!75 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !76, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!76 = !DISubroutineType(types: !77)
!77 = !{!11}
!78 = !DILocalVariable(name: "source_node", scope: !75, file: !1, line: 43, type: !15)
!79 = !DILocation(line: 43, column: 13, scope: !75)
!80 = !DILocalVariable(name: "parent_node", scope: !75, file: !1, line: 44, type: !15)
!81 = !DILocation(line: 44, column: 13, scope: !75)
!82 = !DILocalVariable(name: "clone_node", scope: !75, file: !1, line: 45, type: !14)
!83 = !DILocation(line: 45, column: 14, scope: !75)
!84 = !DILocalVariable(name: "source_ns", scope: !75, file: !1, line: 48, type: !7)
!85 = !DILocation(line: 48, column: 11, scope: !75)
!86 = !DILocalVariable(name: "ns_href", scope: !75, file: !1, line: 49, type: !87)
!87 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !88)
!88 = !{!89}
!89 = !DISubrange(count: 256)
!90 = !DILocation(line: 49, column: 10, scope: !75)
!91 = !DILocalVariable(name: "ns_prefix", scope: !75, file: !1, line: 50, type: !87)
!92 = !DILocation(line: 50, column: 10, scope: !75)
!93 = !DILocation(line: 53, column: 24, scope: !75)
!94 = !DILocation(line: 53, column: 5, scope: !75)
!95 = !DILocation(line: 54, column: 24, scope: !75)
!96 = !DILocation(line: 54, column: 5, scope: !75)
!97 = !DILocation(line: 57, column: 17, scope: !75)
!98 = !DILocation(line: 57, column: 30, scope: !75)
!99 = !DILocation(line: 57, column: 5, scope: !75)
!100 = !DILocation(line: 58, column: 17, scope: !75)
!101 = !DILocation(line: 58, column: 32, scope: !75)
!102 = !DILocation(line: 58, column: 5, scope: !75)
!103 = !DILocation(line: 61, column: 22, scope: !75)
!104 = !DILocation(line: 61, column: 15, scope: !75)
!105 = !DILocation(line: 61, column: 20, scope: !75)
!106 = !DILocation(line: 62, column: 24, scope: !75)
!107 = !DILocation(line: 62, column: 15, scope: !75)
!108 = !DILocation(line: 62, column: 22, scope: !75)
!109 = !DILocation(line: 63, column: 15, scope: !75)
!110 = !DILocation(line: 63, column: 20, scope: !75)
!111 = !DILocation(line: 66, column: 17, scope: !75)
!112 = !DILocation(line: 66, column: 20, scope: !75)
!113 = !DILocation(line: 69, column: 24, scope: !75)
!114 = !DILocation(line: 69, column: 5, scope: !75)
!115 = !DILocalVariable(name: "result", scope: !75, file: !1, line: 72, type: !11)
!116 = !DILocation(line: 72, column: 9, scope: !75)
!117 = !DILocation(line: 72, column: 18, scope: !75)
!118 = !DILocation(line: 81, column: 5, scope: !75)
!119 = !DILocation(line: 84, column: 5, scope: !75)
!120 = !DILocation(line: 87, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !75, file: !1, line: 87, column: 9)
!122 = !DILocation(line: 87, column: 20, scope: !121)
!123 = !DILocation(line: 87, column: 28, scope: !121)
!124 = !DILocation(line: 87, column: 31, scope: !121)
!125 = !DILocation(line: 87, column: 43, scope: !121)
!126 = !DILocation(line: 87, column: 46, scope: !121)
!127 = !DILocation(line: 87, column: 9, scope: !75)
!128 = !DILocation(line: 88, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 88, column: 13)
!130 = distinct !DILexicalBlock(scope: !121, file: !1, line: 87, column: 55)
!131 = !DILocation(line: 88, column: 25, scope: !129)
!132 = !DILocation(line: 88, column: 29, scope: !129)
!133 = !DILocation(line: 88, column: 34, scope: !129)
!134 = !DILocation(line: 88, column: 13, scope: !130)
!135 = !DILocation(line: 88, column: 48, scope: !129)
!136 = !DILocation(line: 88, column: 60, scope: !129)
!137 = !DILocation(line: 88, column: 64, scope: !129)
!138 = !DILocation(line: 88, column: 43, scope: !129)
!139 = !DILocation(line: 89, column: 13, scope: !140)
!140 = distinct !DILexicalBlock(scope: !130, file: !1, line: 89, column: 13)
!141 = !DILocation(line: 89, column: 25, scope: !140)
!142 = !DILocation(line: 89, column: 29, scope: !140)
!143 = !DILocation(line: 89, column: 36, scope: !140)
!144 = !DILocation(line: 89, column: 13, scope: !130)
!145 = !DILocation(line: 89, column: 50, scope: !140)
!146 = !DILocation(line: 89, column: 62, scope: !140)
!147 = !DILocation(line: 89, column: 66, scope: !140)
!148 = !DILocation(line: 89, column: 45, scope: !140)
!149 = !DILocation(line: 90, column: 14, scope: !130)
!150 = !DILocation(line: 90, column: 26, scope: !130)
!151 = !DILocation(line: 90, column: 9, scope: !130)
!152 = !DILocation(line: 91, column: 5, scope: !130)
!153 = !DILocation(line: 92, column: 10, scope: !75)
!154 = !DILocation(line: 92, column: 5, scope: !75)
!155 = !DILocation(line: 94, column: 5, scope: !75)
!156 = distinct !DISubprogram(name: "xmlDOMWrapCloneNode", scope: !1, file: !1, line: 98, type: !157, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!157 = !DISubroutineType(types: !158)
!158 = !{!11, !14, !14, !159}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!160 = !DILocalVariable(name: "source", arg: 1, scope: !156, file: !1, line: 98, type: !14)
!161 = !DILocation(line: 98, column: 34, scope: !156)
!162 = !DILocalVariable(name: "parent", arg: 2, scope: !156, file: !1, line: 98, type: !14)
!163 = !DILocation(line: 98, column: 51, scope: !156)
!164 = !DILocalVariable(name: "clone", arg: 3, scope: !156, file: !1, line: 98, type: !159)
!165 = !DILocation(line: 98, column: 69, scope: !156)
!166 = !DILocalVariable(name: "ns", scope: !156, file: !1, line: 99, type: !6)
!167 = !DILocation(line: 99, column: 12, scope: !156)
!168 = !DILocation(line: 99, column: 17, scope: !156)
!169 = !DILocation(line: 99, column: 25, scope: !156)
!170 = !DILocalVariable(name: "cloneNs", scope: !156, file: !1, line: 100, type: !6)
!171 = !DILocation(line: 100, column: 12, scope: !156)
!172 = !DILocation(line: 102, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !156, file: !1, line: 102, column: 9)
!174 = !DILocation(line: 102, column: 12, scope: !173)
!175 = !DILocation(line: 102, column: 9, scope: !156)
!176 = !DILocation(line: 104, column: 28, scope: !177)
!177 = distinct !DILexicalBlock(scope: !173, file: !1, line: 102, column: 21)
!178 = !DILocation(line: 104, column: 19, scope: !177)
!179 = !DILocation(line: 104, column: 17, scope: !177)
!180 = !DILocation(line: 105, column: 13, scope: !181)
!181 = distinct !DILexicalBlock(scope: !177, file: !1, line: 105, column: 13)
!182 = !DILocation(line: 105, column: 21, scope: !181)
!183 = !DILocation(line: 105, column: 13, scope: !177)
!184 = !DILocation(line: 106, column: 13, scope: !185)
!185 = distinct !DILexicalBlock(scope: !181, file: !1, line: 105, column: 30)
!186 = !DILocation(line: 107, column: 13, scope: !185)
!187 = !DILocation(line: 111, column: 16, scope: !177)
!188 = !DILocation(line: 111, column: 9, scope: !177)
!189 = !DILocation(line: 112, column: 9, scope: !177)
!190 = !DILocation(line: 112, column: 18, scope: !177)
!191 = !DILocation(line: 112, column: 23, scope: !177)
!192 = !DILocation(line: 114, column: 13, scope: !193)
!193 = distinct !DILexicalBlock(scope: !177, file: !1, line: 114, column: 13)
!194 = !DILocation(line: 114, column: 17, scope: !193)
!195 = !DILocation(line: 114, column: 22, scope: !193)
!196 = !DILocation(line: 114, column: 13, scope: !177)
!197 = !DILocation(line: 115, column: 39, scope: !193)
!198 = !DILocation(line: 115, column: 43, scope: !193)
!199 = !DILocation(line: 115, column: 29, scope: !193)
!200 = !DILocation(line: 115, column: 13, scope: !193)
!201 = !DILocation(line: 115, column: 22, scope: !193)
!202 = !DILocation(line: 115, column: 27, scope: !193)
!203 = !DILocation(line: 116, column: 13, scope: !204)
!204 = distinct !DILexicalBlock(scope: !177, file: !1, line: 116, column: 13)
!205 = !DILocation(line: 116, column: 17, scope: !204)
!206 = !DILocation(line: 116, column: 24, scope: !204)
!207 = !DILocation(line: 116, column: 13, scope: !177)
!208 = !DILocation(line: 117, column: 41, scope: !204)
!209 = !DILocation(line: 117, column: 45, scope: !204)
!210 = !DILocation(line: 117, column: 31, scope: !204)
!211 = !DILocation(line: 117, column: 13, scope: !204)
!212 = !DILocation(line: 117, column: 22, scope: !204)
!213 = !DILocation(line: 117, column: 29, scope: !204)
!214 = !DILocation(line: 120, column: 29, scope: !177)
!215 = !DILocation(line: 120, column: 18, scope: !177)
!216 = !DILocation(line: 120, column: 10, scope: !177)
!217 = !DILocation(line: 120, column: 16, scope: !177)
!218 = !DILocation(line: 121, column: 14, scope: !219)
!219 = distinct !DILexicalBlock(scope: !177, file: !1, line: 121, column: 13)
!220 = !DILocation(line: 121, column: 13, scope: !219)
!221 = !DILocation(line: 121, column: 20, scope: !219)
!222 = !DILocation(line: 121, column: 13, scope: !177)
!223 = !DILocation(line: 122, column: 28, scope: !224)
!224 = distinct !DILexicalBlock(scope: !219, file: !1, line: 121, column: 29)
!225 = !DILocation(line: 122, column: 15, scope: !224)
!226 = !DILocation(line: 122, column: 14, scope: !224)
!227 = !DILocation(line: 122, column: 23, scope: !224)
!228 = !DILocation(line: 122, column: 26, scope: !224)
!229 = !DILocation(line: 123, column: 9, scope: !224)
!230 = !DILocation(line: 124, column: 18, scope: !231)
!231 = distinct !DILexicalBlock(scope: !219, file: !1, line: 123, column: 16)
!232 = !DILocation(line: 124, column: 13, scope: !231)
!233 = !DILocation(line: 125, column: 13, scope: !231)
!234 = !DILocation(line: 127, column: 5, scope: !177)
!235 = !DILocation(line: 129, column: 5, scope: !156)
!236 = !DILocation(line: 130, column: 1, scope: !156)
!237 = distinct !DISubprogram(name: "memcpy", scope: !238, file: !238, line: 12, type: !239, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !19, retainedNodes: !36)
!238 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!239 = !DISubroutineType(types: !240)
!240 = !{!3, !3, !241, !51}
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!243 = !DILocalVariable(name: "destaddr", arg: 1, scope: !237, file: !238, line: 12, type: !3)
!244 = !DILocation(line: 12, column: 20, scope: !237)
!245 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !237, file: !238, line: 12, type: !241)
!246 = !DILocation(line: 12, column: 42, scope: !237)
!247 = !DILocalVariable(name: "len", arg: 3, scope: !237, file: !238, line: 12, type: !51)
!248 = !DILocation(line: 12, column: 58, scope: !237)
!249 = !DILocalVariable(name: "dest", scope: !237, file: !238, line: 13, type: !4)
!250 = !DILocation(line: 13, column: 9, scope: !237)
!251 = !DILocation(line: 13, column: 16, scope: !237)
!252 = !DILocalVariable(name: "src", scope: !237, file: !238, line: 14, type: !34)
!253 = !DILocation(line: 14, column: 15, scope: !237)
!254 = !DILocation(line: 14, column: 21, scope: !237)
!255 = !DILocation(line: 16, column: 3, scope: !237)
!256 = !DILocation(line: 16, column: 13, scope: !237)
!257 = !DILocation(line: 16, column: 16, scope: !237)
!258 = !DILocation(line: 17, column: 19, scope: !237)
!259 = !DILocation(line: 17, column: 15, scope: !237)
!260 = !DILocation(line: 17, column: 10, scope: !237)
!261 = !DILocation(line: 17, column: 13, scope: !237)
!262 = distinct !{!262, !255, !258, !263}
!263 = !{!"llvm.loop.mustprogress"}
!264 = !DILocation(line: 18, column: 10, scope: !237)
!265 = !DILocation(line: 18, column: 3, scope: !237)
!266 = distinct !DISubprogram(name: "memset", scope: !267, file: !267, line: 12, type: !268, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !36)
!267 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!268 = !DISubroutineType(types: !269)
!269 = !{!3, !3, !11, !51}
!270 = !DILocalVariable(name: "dst", arg: 1, scope: !266, file: !267, line: 12, type: !3)
!271 = !DILocation(line: 12, column: 20, scope: !266)
!272 = !DILocalVariable(name: "s", arg: 2, scope: !266, file: !267, line: 12, type: !11)
!273 = !DILocation(line: 12, column: 29, scope: !266)
!274 = !DILocalVariable(name: "count", arg: 3, scope: !266, file: !267, line: 12, type: !51)
!275 = !DILocation(line: 12, column: 39, scope: !266)
!276 = !DILocalVariable(name: "a", scope: !266, file: !267, line: 13, type: !4)
!277 = !DILocation(line: 13, column: 9, scope: !266)
!278 = !DILocation(line: 13, column: 13, scope: !266)
!279 = !DILocation(line: 14, column: 3, scope: !266)
!280 = !DILocation(line: 14, column: 15, scope: !266)
!281 = !DILocation(line: 14, column: 18, scope: !266)
!282 = !DILocation(line: 15, column: 12, scope: !266)
!283 = !DILocation(line: 15, column: 7, scope: !266)
!284 = !DILocation(line: 15, column: 10, scope: !266)
!285 = distinct !{!285, !279, !282, !263}
!286 = !DILocation(line: 16, column: 10, scope: !266)
!287 = !DILocation(line: 16, column: 3, scope: !266)

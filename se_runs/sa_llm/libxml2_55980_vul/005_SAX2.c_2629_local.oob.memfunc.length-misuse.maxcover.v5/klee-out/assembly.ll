; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlNode*, i32, i32, i8*, i32 }
%struct._xmlNode = type { i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"xmlSAX2Characters\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"(ctxt->nodelen + len <= ctxt->nodemem) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSAX2Characters = private unnamed_addr constant [62 x i8] c"void xmlSAX2Characters(xmlParserCtxt *, const xmlChar *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"child\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"content_size\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"child_content\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"nodemem\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"nodelen\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"len\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !45, metadata !DIExpression()), !dbg !46
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !47, metadata !DIExpression()), !dbg !48
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !49
  %6 = load i8*, i8** %4, align 8, !dbg !50
  ret void, !dbg !51
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i32 noundef %1) #0 !dbg !52 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !55, metadata !DIExpression()), !dbg !56
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !57, metadata !DIExpression()), !dbg !58
  %6 = load i32, i32* %5, align 4, !dbg !59
  %7 = icmp sle i32 %6, 0, !dbg !61
  br i1 %7, label %8, label %9, !dbg !62

8:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !63
  br label %14, !dbg !63

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !64
  %11 = load i32, i32* %5, align 4, !dbg !65
  %12 = sext i32 %11 to i64, !dbg !65
  %13 = call i8* @realloc(i8* noundef %10, i64 noundef %12) #8, !dbg !66
  store i8* %13, i8** %3, align 8, !dbg !67
  br label %14, !dbg !67

14:                                               ; preds = %9, %8
  %15 = load i8*, i8** %3, align 8, !dbg !68
  ret i8* %15, !dbg !68
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlTextConcat(%struct._xmlNode* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !69 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlNode* %0, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !74, metadata !DIExpression()), !dbg !75
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !76, metadata !DIExpression()), !dbg !77
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !78, metadata !DIExpression()), !dbg !79
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !80
  %8 = load i8*, i8** %5, align 8, !dbg !81
  %9 = load i32, i32* %6, align 4, !dbg !82
  ret i32 0, !dbg !83
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !84 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !87, metadata !DIExpression()), !dbg !88
  %4 = load i8*, i8** %3, align 8, !dbg !89
  %5 = icmp ne i8* %4, null, !dbg !89
  br i1 %5, label %7, label %6, !dbg !91

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !92
  br label %11, !dbg !92

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !93
  %9 = call i64 @strlen(i8* noundef %8) #9, !dbg !94
  %10 = trunc i64 %9 to i32, !dbg !94
  store i32 %10, i32* %2, align 4, !dbg !95
  br label %11, !dbg !95

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !96
  ret i32 %12, !dbg !96
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !97 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !100, metadata !DIExpression()), !dbg !101
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !102, metadata !DIExpression()), !dbg !103
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %8, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata i8** %9, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %10, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 0, i32* %10, align 4, !dbg !113
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !114
  %12 = icmp ne %struct._xmlParserCtxt* %11, null, !dbg !114
  br i1 %12, label %13, label %18, !dbg !116

13:                                               ; preds = %3
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !117
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 0, !dbg !118
  %16 = load %struct._xmlNode*, %struct._xmlNode** %15, align 8, !dbg !118
  %17 = icmp ne %struct._xmlNode* %16, null, !dbg !117
  br i1 %17, label %19, label %18, !dbg !119

18:                                               ; preds = %13, %3
  br label %129, !dbg !120

19:                                               ; preds = %13
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !121
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 0, !dbg !122
  %22 = load %struct._xmlNode*, %struct._xmlNode** %21, align 8, !dbg !122
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %22, i32 0, i32 1, !dbg !123
  %24 = load %struct._xmlNode*, %struct._xmlNode** %23, align 8, !dbg !123
  store %struct._xmlNode* %24, %struct._xmlNode** %7, align 8, !dbg !124
  %25 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !125
  %26 = icmp ne %struct._xmlNode* %25, null, !dbg !125
  br i1 %26, label %28, label %27, !dbg !127

27:                                               ; preds = %19
  br label %129, !dbg !128

28:                                               ; preds = %19
  %29 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !129
  %30 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %29, i32 0, i32 5, !dbg !131
  %31 = load i32, i32* %30, align 8, !dbg !131
  %32 = icmp eq i32 %31, 3, !dbg !132
  br i1 %32, label %33, label %102, !dbg !133

33:                                               ; preds = %28
  %34 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !134
  %35 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %34, i32 0, i32 1, !dbg !137
  %36 = load i32, i32* %35, align 8, !dbg !137
  %37 = icmp eq i32 %36, 0, !dbg !138
  br i1 %37, label %38, label %61, !dbg !139

38:                                               ; preds = %33
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !140
  %40 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %39, i32 0, i32 2, !dbg !142
  %41 = load i32, i32* %40, align 4, !dbg !142
  %42 = load i32, i32* %6, align 4, !dbg !143
  %43 = add nsw i32 %41, %42, !dbg !144
  %44 = add nsw i32 %43, 100, !dbg !145
  store i32 %44, i32* %8, align 4, !dbg !146
  %45 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !147
  %46 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %45, i32 0, i32 0, !dbg !148
  %47 = load i8*, i8** %46, align 8, !dbg !148
  %48 = load i32, i32* %8, align 4, !dbg !149
  %49 = call i8* @xmlRealloc(i8* noundef %47, i32 noundef %48), !dbg !150
  store i8* %49, i8** %9, align 8, !dbg !151
  %50 = load i8*, i8** %9, align 8, !dbg !152
  %51 = icmp eq i8* %50, null, !dbg !154
  br i1 %51, label %52, label %54, !dbg !155

52:                                               ; preds = %38
  %53 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !156
  call void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %53, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !158
  br label %129, !dbg !159

54:                                               ; preds = %38
  %55 = load i32, i32* %8, align 4, !dbg !160
  %56 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !161
  %57 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %56, i32 0, i32 1, !dbg !162
  store i32 %55, i32* %57, align 8, !dbg !163
  %58 = load i8*, i8** %9, align 8, !dbg !164
  %59 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !165
  %60 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %59, i32 0, i32 0, !dbg !166
  store i8* %58, i8** %60, align 8, !dbg !167
  br label %61, !dbg !168

61:                                               ; preds = %54, %33
  %62 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !169
  %63 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %62, i32 0, i32 0, !dbg !170
  %64 = load i8*, i8** %63, align 8, !dbg !170
  %65 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !171
  %66 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %65, i32 0, i32 2, !dbg !172
  %67 = load i32, i32* %66, align 4, !dbg !172
  %68 = sext i32 %67 to i64, !dbg !169
  %69 = getelementptr inbounds i8, i8* %64, i64 %68, !dbg !169
  %70 = load i8*, i8** %5, align 8, !dbg !173
  %71 = load i32, i32* %6, align 4, !dbg !174
  %72 = sext i32 %71 to i64, !dbg !174
  %73 = call i8* @memcpy(i8* %69, i8* %70, i64 %72), !dbg !175
  %74 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !176
  %75 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %74, i32 0, i32 2, !dbg !176
  %76 = load i32, i32* %75, align 4, !dbg !176
  %77 = load i32, i32* %6, align 4, !dbg !176
  %78 = add nsw i32 %76, %77, !dbg !176
  %79 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !176
  %80 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %79, i32 0, i32 1, !dbg !176
  %81 = load i32, i32* %80, align 8, !dbg !176
  %82 = icmp sle i32 %78, %81, !dbg !176
  br i1 %82, label %83, label %85, !dbg !176

83:                                               ; preds = %61
  br i1 true, label %84, label %85, !dbg !176

84:                                               ; preds = %83
  br label %87, !dbg !176

85:                                               ; preds = %83, %61
  %86 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSAX2Characters, i64 0, i64 0)), !dbg !176
  br label %87, !dbg !176

87:                                               ; preds = %85, %84
  %88 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 80, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSAX2Characters, i64 0, i64 0)), !dbg !177
  %89 = load i32, i32* %6, align 4, !dbg !178
  %90 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !179
  %91 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %90, i32 0, i32 2, !dbg !180
  %92 = load i32, i32* %91, align 4, !dbg !181
  %93 = add nsw i32 %92, %89, !dbg !181
  store i32 %93, i32* %91, align 4, !dbg !181
  %94 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !182
  %95 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %94, i32 0, i32 0, !dbg !183
  %96 = load i8*, i8** %95, align 8, !dbg !183
  %97 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !184
  %98 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %97, i32 0, i32 2, !dbg !185
  %99 = load i32, i32* %98, align 4, !dbg !185
  %100 = sext i32 %99 to i64, !dbg !182
  %101 = getelementptr inbounds i8, i8* %96, i64 %100, !dbg !182
  store i8 0, i8* %101, align 1, !dbg !186
  br label %129, !dbg !187

102:                                              ; preds = %28
  %103 = load i32, i32* %10, align 4, !dbg !188
  %104 = icmp ne i32 %103, 0, !dbg !188
  br i1 %104, label %105, label %128, !dbg !190

105:                                              ; preds = %102
  %106 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !191
  %107 = load i8*, i8** %5, align 8, !dbg !194
  %108 = load i32, i32* %6, align 4, !dbg !195
  %109 = call i32 @xmlTextConcat(%struct._xmlNode* noundef %106, i8* noundef %107, i32 noundef %108), !dbg !196
  %110 = icmp ne i32 %109, 0, !dbg !196
  br i1 %110, label %111, label %113, !dbg !197

111:                                              ; preds = %105
  %112 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !198
  call void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %112, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !200
  br label %113, !dbg !201

113:                                              ; preds = %111, %105
  %114 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !202
  %115 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %114, i32 0, i32 0, !dbg !204
  %116 = load %struct._xmlNode*, %struct._xmlNode** %115, align 8, !dbg !204
  %117 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %116, i32 0, i32 1, !dbg !205
  %118 = load %struct._xmlNode*, %struct._xmlNode** %117, align 8, !dbg !205
  %119 = icmp ne %struct._xmlNode* %118, null, !dbg !206
  br i1 %119, label %120, label %127, !dbg !207

120:                                              ; preds = %113
  %121 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !208
  %122 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %121, i32 0, i32 0, !dbg !210
  %123 = load i8*, i8** %122, align 8, !dbg !210
  %124 = call i32 @xmlStrlen(i8* noundef %123), !dbg !211
  %125 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !212
  %126 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %125, i32 0, i32 2, !dbg !213
  store i32 %124, i32* %126, align 4, !dbg !214
  br label %127, !dbg !215

127:                                              ; preds = %120, %113
  br label %128, !dbg !216

128:                                              ; preds = %127, %102
  br label %129

129:                                              ; preds = %18, %27, %52, %128, %87
  ret void, !dbg !217
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !218 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca %struct._xmlNode, align 8
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %4, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata [4096 x i8]* %5, metadata !227, metadata !DIExpression()), !dbg !231
  call void @llvm.dbg.declare(metadata i32* %6, metadata !232, metadata !DIExpression()), !dbg !233
  call void @llvm.dbg.declare(metadata i32* %7, metadata !234, metadata !DIExpression()), !dbg !235
  %8 = bitcast %struct._xmlParserCtxt* %2 to i8*, !dbg !236
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !237
  %9 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !238
  %10 = load %struct._xmlNode*, %struct._xmlNode** %9, align 8, !dbg !238
  %11 = icmp ne %struct._xmlNode* %10, null, !dbg !239
  %12 = zext i1 %11 to i32, !dbg !239
  %13 = sext i32 %12 to i64, !dbg !240
  call void @klee_assume(i64 noundef %13), !dbg !241
  %14 = bitcast %struct._xmlNode* %3 to i8*, !dbg !242
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 48, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0)), !dbg !243
  %15 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 5, !dbg !244
  store i32 1, i32* %15, align 8, !dbg !245
  %16 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 1, !dbg !246
  store %struct._xmlNode* %4, %struct._xmlNode** %16, align 8, !dbg !247
  %17 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !248
  store i8* null, i8** %17, align 8, !dbg !249
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !250
  store %struct._xmlNode* %3, %struct._xmlNode** %18, align 8, !dbg !251
  %19 = bitcast %struct._xmlNode* %4 to i8*, !dbg !252
  call void @klee_make_symbolic(i8* noundef %19, i64 noundef 48, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0)), !dbg !253
  %20 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 5, !dbg !254
  store i32 3, i32* %20, align 8, !dbg !255
  %21 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 4, !dbg !256
  store %struct._xmlNode* %3, %struct._xmlNode** %21, align 8, !dbg !257
  %22 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 1, !dbg !258
  store %struct._xmlNode* null, %struct._xmlNode** %22, align 8, !dbg !259
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 2, !dbg !260
  store %struct._xmlNode* null, %struct._xmlNode** %23, align 8, !dbg !261
  %24 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 3, !dbg !262
  store %struct._xmlNode* null, %struct._xmlNode** %24, align 8, !dbg !263
  %25 = bitcast i32* %7 to i8*, !dbg !264
  call void @klee_make_symbolic(i8* noundef %25, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0)), !dbg !265
  %26 = load i32, i32* %7, align 4, !dbg !266
  %27 = icmp sge i32 %26, 0, !dbg !267
  br i1 %27, label %28, label %31, !dbg !268

28:                                               ; preds = %0
  %29 = load i32, i32* %7, align 4, !dbg !269
  %30 = icmp slt i32 %29, 4096, !dbg !270
  br label %31

31:                                               ; preds = %28, %0
  %32 = phi i1 [ false, %0 ], [ %30, %28 ], !dbg !271
  %33 = zext i1 %32 to i32, !dbg !268
  %34 = sext i32 %33 to i64, !dbg !266
  call void @klee_assume(i64 noundef %34), !dbg !272
  %35 = load i32, i32* %7, align 4, !dbg !273
  %36 = add nsw i32 %35, 1, !dbg !274
  %37 = sext i32 %36 to i64, !dbg !273
  %38 = call noalias i8* @malloc(i64 noundef %37) #8, !dbg !275
  %39 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 0, !dbg !276
  store i8* %38, i8** %39, align 8, !dbg !277
  %40 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 0, !dbg !278
  %41 = load i8*, i8** %40, align 8, !dbg !278
  %42 = icmp ne i8* %41, null, !dbg !280
  br i1 %42, label %43, label %56, !dbg !281

43:                                               ; preds = %31
  %44 = load i32, i32* %7, align 4, !dbg !282
  %45 = icmp sgt i32 %44, 0, !dbg !283
  br i1 %45, label %46, label %56, !dbg !284

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 0, !dbg !285
  %48 = load i8*, i8** %47, align 8, !dbg !285
  %49 = load i32, i32* %7, align 4, !dbg !287
  %50 = sext i32 %49 to i64, !dbg !287
  call void @klee_make_symbolic(i8* noundef %48, i64 noundef %50, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0)), !dbg !288
  %51 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 0, !dbg !289
  %52 = load i8*, i8** %51, align 8, !dbg !289
  %53 = load i32, i32* %7, align 4, !dbg !290
  %54 = sext i32 %53 to i64, !dbg !291
  %55 = getelementptr inbounds i8, i8* %52, i64 %54, !dbg !291
  store i8 0, i8* %55, align 1, !dbg !292
  br label %56, !dbg !293

56:                                               ; preds = %46, %43, %31
  %57 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !294
  %58 = bitcast i32* %57 to i8*, !dbg !295
  call void @klee_make_symbolic(i8* noundef %58, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0)), !dbg !296
  %59 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !297
  %60 = bitcast i32* %59 to i8*, !dbg !298
  call void @klee_make_symbolic(i8* noundef %60, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.11, i64 0, i64 0)), !dbg !299
  %61 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !300
  %62 = load i32, i32* %61, align 8, !dbg !300
  %63 = icmp sge i32 %62, 0, !dbg !301
  br i1 %63, label %64, label %68, !dbg !302

64:                                               ; preds = %56
  %65 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !303
  %66 = load i32, i32* %65, align 8, !dbg !303
  %67 = icmp slt i32 %66, 65536, !dbg !304
  br label %68

68:                                               ; preds = %64, %56
  %69 = phi i1 [ false, %56 ], [ %67, %64 ], !dbg !271
  %70 = zext i1 %69 to i32, !dbg !302
  %71 = sext i32 %70 to i64, !dbg !305
  call void @klee_assume(i64 noundef %71), !dbg !306
  %72 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !307
  %73 = load i32, i32* %72, align 4, !dbg !307
  %74 = icmp sge i32 %73, 0, !dbg !308
  br i1 %74, label %75, label %81, !dbg !309

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !310
  %77 = load i32, i32* %76, align 4, !dbg !310
  %78 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !311
  %79 = load i32, i32* %78, align 8, !dbg !311
  %80 = icmp slt i32 %77, %79, !dbg !312
  br label %81

81:                                               ; preds = %75, %68
  %82 = phi i1 [ false, %68 ], [ %80, %75 ], !dbg !271
  %83 = zext i1 %82 to i32, !dbg !309
  %84 = sext i32 %83 to i64, !dbg !313
  call void @klee_assume(i64 noundef %84), !dbg !314
  %85 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !315
  call void @klee_make_symbolic(i8* noundef %85, i64 noundef 4096, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i64 0, i64 0)), !dbg !316
  %86 = bitcast i32* %6 to i8*, !dbg !317
  call void @klee_make_symbolic(i8* noundef %86, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i64 0, i64 0)), !dbg !318
  %87 = load i32, i32* %6, align 4, !dbg !319
  %88 = icmp sge i32 %87, 0, !dbg !320
  br i1 %88, label %89, label %92, !dbg !321

89:                                               ; preds = %81
  %90 = load i32, i32* %6, align 4, !dbg !322
  %91 = icmp slt i32 %90, 4096, !dbg !323
  br label %92

92:                                               ; preds = %89, %81
  %93 = phi i1 [ false, %81 ], [ %91, %89 ], !dbg !271
  %94 = zext i1 %93 to i32, !dbg !321
  %95 = sext i32 %94 to i64, !dbg !319
  call void @klee_assume(i64 noundef %95), !dbg !324
  %96 = load i32, i32* %7, align 4, !dbg !325
  %97 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !326
  store i32 %96, i32* %97, align 8, !dbg !327
  %98 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !328
  %99 = load i32, i32* %6, align 4, !dbg !329
  call void @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %2, i8* noundef %98, i32 noundef %99), !dbg !330
  %100 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 0, !dbg !331
  %101 = load i8*, i8** %100, align 8, !dbg !331
  %102 = icmp ne i8* %101, null, !dbg !333
  br i1 %102, label %103, label %106, !dbg !334

103:                                              ; preds = %92
  %104 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %4, i32 0, i32 0, !dbg !335
  %105 = load i8*, i8** %104, align 8, !dbg !335
  call void @free(i8* noundef %105) #8, !dbg !336
  br label %106, !dbg !336

106:                                              ; preds = %103, %92
  ret i32 0, !dbg !337
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !338 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !347, metadata !DIExpression()), !dbg !348
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !349, metadata !DIExpression()), !dbg !350
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !351, metadata !DIExpression()), !dbg !352
  call void @llvm.dbg.declare(metadata i8** %7, metadata !353, metadata !DIExpression()), !dbg !355
  %9 = load i8*, i8** %4, align 8, !dbg !356
  store i8* %9, i8** %7, align 8, !dbg !355
  call void @llvm.dbg.declare(metadata i8** %8, metadata !357, metadata !DIExpression()), !dbg !358
  %10 = load i8*, i8** %5, align 8, !dbg !359
  store i8* %10, i8** %8, align 8, !dbg !358
  br label %11, !dbg !360

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !361
  %13 = add i64 %12, -1, !dbg !361
  store i64 %13, i64* %6, align 8, !dbg !361
  %14 = icmp ugt i64 %12, 0, !dbg !362
  br i1 %14, label %15, label %21, !dbg !360

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !363
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !363
  store i8* %17, i8** %8, align 8, !dbg !363
  %18 = load i8, i8* %16, align 1, !dbg !364
  %19 = load i8*, i8** %7, align 8, !dbg !365
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !365
  store i8* %20, i8** %7, align 8, !dbg !365
  store i8 %18, i8* %19, align 1, !dbg !366
  br label %11, !dbg !360, !llvm.loop !367

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !369
  ret i8* %22, !dbg !370
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "81000d7d795bfbb698c0503058af96f8")
!2 = !{!3, !6, !9}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
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
!20 = distinct !DISubprogram(name: "xmlSAX2ErrMemory", scope: !1, file: !1, line: 32, type: !21, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !6}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 23, size: 256, elements: !26)
!26 = !{!27, !40, !41, !42, !43}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !1, line: 24, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 11, baseType: !30)
!30 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 14, size: 384, elements: !31)
!31 = !{!32, !33, !35, !36, !37, !38}
!32 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !30, file: !1, line: 15, baseType: !3, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !30, file: !1, line: 16, baseType: !34, size: 64, offset: 64)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !30, file: !1, line: 17, baseType: !34, size: 64, offset: 128)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !30, file: !1, line: 18, baseType: !34, size: 64, offset: 192)
!37 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !30, file: !1, line: 19, baseType: !34, size: 64, offset: 256)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !30, file: !1, line: 20, baseType: !39, size: 32, offset: 320)
!39 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !25, file: !1, line: 25, baseType: !39, size: 32, offset: 64)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !25, file: !1, line: 26, baseType: !39, size: 32, offset: 96)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !25, file: !1, line: 27, baseType: !9, size: 64, offset: 128)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "errNo", scope: !25, file: !1, line: 28, baseType: !39, size: 32, offset: 192)
!44 = !{}
!45 = !DILocalVariable(name: "ctxt", arg: 1, scope: !20, file: !1, line: 32, type: !23)
!46 = !DILocation(line: 32, column: 38, scope: !20)
!47 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 32, type: !6)
!48 = !DILocation(line: 32, column: 56, scope: !20)
!49 = !DILocation(line: 33, column: 11, scope: !20)
!50 = !DILocation(line: 34, column: 11, scope: !20)
!51 = !DILocation(line: 35, column: 1, scope: !20)
!52 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 37, type: !53, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!53 = !DISubroutineType(types: !54)
!54 = !{!3, !3, !39}
!55 = !DILocalVariable(name: "ptr", arg: 1, scope: !52, file: !1, line: 37, type: !3)
!56 = !DILocation(line: 37, column: 30, scope: !52)
!57 = !DILocalVariable(name: "size", arg: 2, scope: !52, file: !1, line: 37, type: !39)
!58 = !DILocation(line: 37, column: 39, scope: !52)
!59 = !DILocation(line: 38, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !52, file: !1, line: 38, column: 9)
!61 = !DILocation(line: 38, column: 14, scope: !60)
!62 = !DILocation(line: 38, column: 9, scope: !52)
!63 = !DILocation(line: 38, column: 20, scope: !60)
!64 = !DILocation(line: 39, column: 31, scope: !52)
!65 = !DILocation(line: 39, column: 36, scope: !52)
!66 = !DILocation(line: 39, column: 23, scope: !52)
!67 = !DILocation(line: 39, column: 5, scope: !52)
!68 = !DILocation(line: 40, column: 1, scope: !52)
!69 = distinct !DISubprogram(name: "xmlTextConcat", scope: !1, file: !1, line: 42, type: !70, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!70 = !DISubroutineType(types: !71)
!71 = !{!39, !28, !72, !39}
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!74 = !DILocalVariable(name: "node", arg: 1, scope: !69, file: !1, line: 42, type: !28)
!75 = !DILocation(line: 42, column: 28, scope: !69)
!76 = !DILocalVariable(name: "ch", arg: 2, scope: !69, file: !1, line: 42, type: !72)
!77 = !DILocation(line: 42, column: 49, scope: !69)
!78 = !DILocalVariable(name: "len", arg: 3, scope: !69, file: !1, line: 42, type: !39)
!79 = !DILocation(line: 42, column: 57, scope: !69)
!80 = !DILocation(line: 43, column: 11, scope: !69)
!81 = !DILocation(line: 44, column: 11, scope: !69)
!82 = !DILocation(line: 45, column: 11, scope: !69)
!83 = !DILocation(line: 46, column: 5, scope: !69)
!84 = distinct !DISubprogram(name: "xmlStrlen", scope: !1, file: !1, line: 49, type: !85, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!85 = !DISubroutineType(types: !86)
!86 = !{!39, !72}
!87 = !DILocalVariable(name: "str", arg: 1, scope: !84, file: !1, line: 49, type: !72)
!88 = !DILocation(line: 49, column: 30, scope: !84)
!89 = !DILocation(line: 50, column: 10, scope: !90)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 50, column: 9)
!91 = !DILocation(line: 50, column: 9, scope: !84)
!92 = !DILocation(line: 50, column: 15, scope: !90)
!93 = !DILocation(line: 51, column: 33, scope: !84)
!94 = !DILocation(line: 51, column: 12, scope: !84)
!95 = !DILocation(line: 51, column: 5, scope: !84)
!96 = !DILocation(line: 52, column: 1, scope: !84)
!97 = distinct !DISubprogram(name: "xmlSAX2Characters", scope: !1, file: !1, line: 55, type: !98, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !23, !72, !39}
!100 = !DILocalVariable(name: "ctxt", arg: 1, scope: !97, file: !1, line: 55, type: !23)
!101 = !DILocation(line: 55, column: 39, scope: !97)
!102 = !DILocalVariable(name: "ch", arg: 2, scope: !97, file: !1, line: 55, type: !72)
!103 = !DILocation(line: 55, column: 60, scope: !97)
!104 = !DILocalVariable(name: "len", arg: 3, scope: !97, file: !1, line: 55, type: !39)
!105 = !DILocation(line: 55, column: 68, scope: !97)
!106 = !DILocalVariable(name: "lastChild", scope: !97, file: !1, line: 56, type: !28)
!107 = !DILocation(line: 56, column: 14, scope: !97)
!108 = !DILocalVariable(name: "size", scope: !97, file: !1, line: 57, type: !39)
!109 = !DILocation(line: 57, column: 9, scope: !97)
!110 = !DILocalVariable(name: "newbuf", scope: !97, file: !1, line: 58, type: !3)
!111 = !DILocation(line: 58, column: 14, scope: !97)
!112 = !DILocalVariable(name: "coalesceText", scope: !97, file: !1, line: 59, type: !39)
!113 = !DILocation(line: 59, column: 9, scope: !97)
!114 = !DILocation(line: 61, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !97, file: !1, line: 61, column: 9)
!116 = !DILocation(line: 61, column: 15, scope: !115)
!117 = !DILocation(line: 61, column: 19, scope: !115)
!118 = !DILocation(line: 61, column: 25, scope: !115)
!119 = !DILocation(line: 61, column: 9, scope: !97)
!120 = !DILocation(line: 61, column: 31, scope: !115)
!121 = !DILocation(line: 63, column: 17, scope: !97)
!122 = !DILocation(line: 63, column: 23, scope: !97)
!123 = !DILocation(line: 63, column: 29, scope: !97)
!124 = !DILocation(line: 63, column: 15, scope: !97)
!125 = !DILocation(line: 64, column: 10, scope: !126)
!126 = distinct !DILexicalBlock(scope: !97, file: !1, line: 64, column: 9)
!127 = !DILocation(line: 64, column: 9, scope: !97)
!128 = !DILocation(line: 64, column: 21, scope: !126)
!129 = !DILocation(line: 66, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !97, file: !1, line: 66, column: 9)
!131 = !DILocation(line: 66, column: 20, scope: !130)
!132 = !DILocation(line: 66, column: 25, scope: !130)
!133 = !DILocation(line: 66, column: 9, scope: !97)
!134 = !DILocation(line: 67, column: 13, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !1, line: 67, column: 13)
!136 = distinct !DILexicalBlock(scope: !130, file: !1, line: 66, column: 31)
!137 = !DILocation(line: 67, column: 19, scope: !135)
!138 = !DILocation(line: 67, column: 27, scope: !135)
!139 = !DILocation(line: 67, column: 13, scope: !136)
!140 = !DILocation(line: 68, column: 20, scope: !141)
!141 = distinct !DILexicalBlock(scope: !135, file: !1, line: 67, column: 33)
!142 = !DILocation(line: 68, column: 26, scope: !141)
!143 = !DILocation(line: 68, column: 36, scope: !141)
!144 = !DILocation(line: 68, column: 34, scope: !141)
!145 = !DILocation(line: 68, column: 40, scope: !141)
!146 = !DILocation(line: 68, column: 18, scope: !141)
!147 = !DILocation(line: 69, column: 45, scope: !141)
!148 = !DILocation(line: 69, column: 56, scope: !141)
!149 = !DILocation(line: 69, column: 65, scope: !141)
!150 = !DILocation(line: 69, column: 34, scope: !141)
!151 = !DILocation(line: 69, column: 20, scope: !141)
!152 = !DILocation(line: 70, column: 17, scope: !153)
!153 = distinct !DILexicalBlock(scope: !141, file: !1, line: 70, column: 17)
!154 = !DILocation(line: 70, column: 24, scope: !153)
!155 = !DILocation(line: 70, column: 17, scope: !141)
!156 = !DILocation(line: 71, column: 34, scope: !157)
!157 = distinct !DILexicalBlock(scope: !153, file: !1, line: 70, column: 33)
!158 = !DILocation(line: 71, column: 17, scope: !157)
!159 = !DILocation(line: 72, column: 17, scope: !157)
!160 = !DILocation(line: 74, column: 29, scope: !141)
!161 = !DILocation(line: 74, column: 13, scope: !141)
!162 = !DILocation(line: 74, column: 19, scope: !141)
!163 = !DILocation(line: 74, column: 27, scope: !141)
!164 = !DILocation(line: 75, column: 34, scope: !141)
!165 = !DILocation(line: 75, column: 13, scope: !141)
!166 = !DILocation(line: 75, column: 24, scope: !141)
!167 = !DILocation(line: 75, column: 32, scope: !141)
!168 = !DILocation(line: 76, column: 9, scope: !141)
!169 = !DILocation(line: 78, column: 17, scope: !136)
!170 = !DILocation(line: 78, column: 28, scope: !136)
!171 = !DILocation(line: 78, column: 36, scope: !136)
!172 = !DILocation(line: 78, column: 42, scope: !136)
!173 = !DILocation(line: 78, column: 52, scope: !136)
!174 = !DILocation(line: 78, column: 56, scope: !136)
!175 = !DILocation(line: 78, column: 9, scope: !136)
!176 = !DILocation(line: 79, column: 9, scope: !136)
!177 = !DILocation(line: 80, column: 9, scope: !136)
!178 = !DILocation(line: 81, column: 26, scope: !136)
!179 = !DILocation(line: 81, column: 9, scope: !136)
!180 = !DILocation(line: 81, column: 15, scope: !136)
!181 = !DILocation(line: 81, column: 23, scope: !136)
!182 = !DILocation(line: 82, column: 9, scope: !136)
!183 = !DILocation(line: 82, column: 20, scope: !136)
!184 = !DILocation(line: 82, column: 28, scope: !136)
!185 = !DILocation(line: 82, column: 34, scope: !136)
!186 = !DILocation(line: 82, column: 43, scope: !136)
!187 = !DILocation(line: 83, column: 5, scope: !136)
!188 = !DILocation(line: 83, column: 16, scope: !189)
!189 = distinct !DILexicalBlock(scope: !130, file: !1, line: 83, column: 16)
!190 = !DILocation(line: 83, column: 16, scope: !130)
!191 = !DILocation(line: 84, column: 27, scope: !192)
!192 = distinct !DILexicalBlock(scope: !193, file: !1, line: 84, column: 13)
!193 = distinct !DILexicalBlock(scope: !189, file: !1, line: 83, column: 30)
!194 = !DILocation(line: 84, column: 38, scope: !192)
!195 = !DILocation(line: 84, column: 42, scope: !192)
!196 = !DILocation(line: 84, column: 13, scope: !192)
!197 = !DILocation(line: 84, column: 13, scope: !193)
!198 = !DILocation(line: 85, column: 30, scope: !199)
!199 = distinct !DILexicalBlock(scope: !192, file: !1, line: 84, column: 48)
!200 = !DILocation(line: 85, column: 13, scope: !199)
!201 = !DILocation(line: 86, column: 9, scope: !199)
!202 = !DILocation(line: 87, column: 13, scope: !203)
!203 = distinct !DILexicalBlock(scope: !193, file: !1, line: 87, column: 13)
!204 = !DILocation(line: 87, column: 19, scope: !203)
!205 = !DILocation(line: 87, column: 25, scope: !203)
!206 = !DILocation(line: 87, column: 34, scope: !203)
!207 = !DILocation(line: 87, column: 13, scope: !193)
!208 = !DILocation(line: 88, column: 39, scope: !209)
!209 = distinct !DILexicalBlock(scope: !203, file: !1, line: 87, column: 43)
!210 = !DILocation(line: 88, column: 50, scope: !209)
!211 = !DILocation(line: 88, column: 29, scope: !209)
!212 = !DILocation(line: 88, column: 13, scope: !209)
!213 = !DILocation(line: 88, column: 19, scope: !209)
!214 = !DILocation(line: 88, column: 27, scope: !209)
!215 = !DILocation(line: 89, column: 9, scope: !209)
!216 = !DILocation(line: 90, column: 5, scope: !193)
!217 = !DILocation(line: 91, column: 1, scope: !97)
!218 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 93, type: !219, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !44)
!219 = !DISubroutineType(types: !220)
!220 = !{!39}
!221 = !DILocalVariable(name: "ctxt", scope: !218, file: !1, line: 94, type: !24)
!222 = !DILocation(line: 94, column: 19, scope: !218)
!223 = !DILocalVariable(name: "node", scope: !218, file: !1, line: 95, type: !29)
!224 = !DILocation(line: 95, column: 13, scope: !218)
!225 = !DILocalVariable(name: "child", scope: !218, file: !1, line: 96, type: !29)
!226 = !DILocation(line: 96, column: 13, scope: !218)
!227 = !DILocalVariable(name: "buffer", scope: !218, file: !1, line: 97, type: !228)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32768, elements: !229)
!229 = !{!230}
!230 = !DISubrange(count: 4096)
!231 = !DILocation(line: 97, column: 13, scope: !218)
!232 = !DILocalVariable(name: "len", scope: !218, file: !1, line: 98, type: !39)
!233 = !DILocation(line: 98, column: 9, scope: !218)
!234 = !DILocalVariable(name: "content_size", scope: !218, file: !1, line: 99, type: !39)
!235 = !DILocation(line: 99, column: 9, scope: !218)
!236 = !DILocation(line: 102, column: 24, scope: !218)
!237 = !DILocation(line: 102, column: 5, scope: !218)
!238 = !DILocation(line: 103, column: 22, scope: !218)
!239 = !DILocation(line: 103, column: 27, scope: !218)
!240 = !DILocation(line: 103, column: 17, scope: !218)
!241 = !DILocation(line: 103, column: 5, scope: !218)
!242 = !DILocation(line: 106, column: 24, scope: !218)
!243 = !DILocation(line: 106, column: 5, scope: !218)
!244 = !DILocation(line: 107, column: 10, scope: !218)
!245 = !DILocation(line: 107, column: 15, scope: !218)
!246 = !DILocation(line: 108, column: 10, scope: !218)
!247 = !DILocation(line: 108, column: 19, scope: !218)
!248 = !DILocation(line: 109, column: 10, scope: !218)
!249 = !DILocation(line: 109, column: 18, scope: !218)
!250 = !DILocation(line: 110, column: 10, scope: !218)
!251 = !DILocation(line: 110, column: 15, scope: !218)
!252 = !DILocation(line: 113, column: 24, scope: !218)
!253 = !DILocation(line: 113, column: 5, scope: !218)
!254 = !DILocation(line: 114, column: 11, scope: !218)
!255 = !DILocation(line: 114, column: 16, scope: !218)
!256 = !DILocation(line: 115, column: 11, scope: !218)
!257 = !DILocation(line: 115, column: 18, scope: !218)
!258 = !DILocation(line: 116, column: 11, scope: !218)
!259 = !DILocation(line: 116, column: 20, scope: !218)
!260 = !DILocation(line: 117, column: 11, scope: !218)
!261 = !DILocation(line: 117, column: 16, scope: !218)
!262 = !DILocation(line: 118, column: 11, scope: !218)
!263 = !DILocation(line: 118, column: 16, scope: !218)
!264 = !DILocation(line: 121, column: 24, scope: !218)
!265 = !DILocation(line: 121, column: 5, scope: !218)
!266 = !DILocation(line: 122, column: 17, scope: !218)
!267 = !DILocation(line: 122, column: 30, scope: !218)
!268 = !DILocation(line: 122, column: 35, scope: !218)
!269 = !DILocation(line: 122, column: 38, scope: !218)
!270 = !DILocation(line: 122, column: 51, scope: !218)
!271 = !DILocation(line: 0, scope: !218)
!272 = !DILocation(line: 122, column: 5, scope: !218)
!273 = !DILocation(line: 123, column: 39, scope: !218)
!274 = !DILocation(line: 123, column: 52, scope: !218)
!275 = !DILocation(line: 123, column: 32, scope: !218)
!276 = !DILocation(line: 123, column: 11, scope: !218)
!277 = !DILocation(line: 123, column: 19, scope: !218)
!278 = !DILocation(line: 124, column: 15, scope: !279)
!279 = distinct !DILexicalBlock(scope: !218, file: !1, line: 124, column: 9)
!280 = !DILocation(line: 124, column: 9, scope: !279)
!281 = !DILocation(line: 124, column: 23, scope: !279)
!282 = !DILocation(line: 124, column: 26, scope: !279)
!283 = !DILocation(line: 124, column: 39, scope: !279)
!284 = !DILocation(line: 124, column: 9, scope: !218)
!285 = !DILocation(line: 125, column: 34, scope: !286)
!286 = distinct !DILexicalBlock(scope: !279, file: !1, line: 124, column: 44)
!287 = !DILocation(line: 125, column: 43, scope: !286)
!288 = !DILocation(line: 125, column: 9, scope: !286)
!289 = !DILocation(line: 126, column: 15, scope: !286)
!290 = !DILocation(line: 126, column: 23, scope: !286)
!291 = !DILocation(line: 126, column: 9, scope: !286)
!292 = !DILocation(line: 126, column: 37, scope: !286)
!293 = !DILocation(line: 127, column: 5, scope: !286)
!294 = !DILocation(line: 130, column: 30, scope: !218)
!295 = !DILocation(line: 130, column: 24, scope: !218)
!296 = !DILocation(line: 130, column: 5, scope: !218)
!297 = !DILocation(line: 131, column: 30, scope: !218)
!298 = !DILocation(line: 131, column: 24, scope: !218)
!299 = !DILocation(line: 131, column: 5, scope: !218)
!300 = !DILocation(line: 134, column: 22, scope: !218)
!301 = !DILocation(line: 134, column: 30, scope: !218)
!302 = !DILocation(line: 134, column: 35, scope: !218)
!303 = !DILocation(line: 134, column: 43, scope: !218)
!304 = !DILocation(line: 134, column: 51, scope: !218)
!305 = !DILocation(line: 134, column: 17, scope: !218)
!306 = !DILocation(line: 134, column: 5, scope: !218)
!307 = !DILocation(line: 135, column: 22, scope: !218)
!308 = !DILocation(line: 135, column: 30, scope: !218)
!309 = !DILocation(line: 135, column: 35, scope: !218)
!310 = !DILocation(line: 135, column: 43, scope: !218)
!311 = !DILocation(line: 135, column: 58, scope: !218)
!312 = !DILocation(line: 135, column: 51, scope: !218)
!313 = !DILocation(line: 135, column: 17, scope: !218)
!314 = !DILocation(line: 135, column: 5, scope: !218)
!315 = !DILocation(line: 138, column: 24, scope: !218)
!316 = !DILocation(line: 138, column: 5, scope: !218)
!317 = !DILocation(line: 139, column: 24, scope: !218)
!318 = !DILocation(line: 139, column: 5, scope: !218)
!319 = !DILocation(line: 140, column: 17, scope: !218)
!320 = !DILocation(line: 140, column: 21, scope: !218)
!321 = !DILocation(line: 140, column: 26, scope: !218)
!322 = !DILocation(line: 140, column: 29, scope: !218)
!323 = !DILocation(line: 140, column: 33, scope: !218)
!324 = !DILocation(line: 140, column: 5, scope: !218)
!325 = !DILocation(line: 143, column: 20, scope: !218)
!326 = !DILocation(line: 143, column: 10, scope: !218)
!327 = !DILocation(line: 143, column: 18, scope: !218)
!328 = !DILocation(line: 146, column: 30, scope: !218)
!329 = !DILocation(line: 146, column: 38, scope: !218)
!330 = !DILocation(line: 146, column: 5, scope: !218)
!331 = !DILocation(line: 149, column: 15, scope: !332)
!332 = distinct !DILexicalBlock(scope: !218, file: !1, line: 149, column: 9)
!333 = !DILocation(line: 149, column: 9, scope: !332)
!334 = !DILocation(line: 149, column: 9, scope: !218)
!335 = !DILocation(line: 149, column: 35, scope: !332)
!336 = !DILocation(line: 149, column: 24, scope: !332)
!337 = !DILocation(line: 151, column: 5, scope: !218)
!338 = distinct !DISubprogram(name: "memcpy", scope: !339, file: !339, line: 12, type: !340, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !44)
!339 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!340 = !DISubroutineType(types: !341)
!341 = !{!9, !9, !342, !344}
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !345, line: 46, baseType: !346)
!345 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!346 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!347 = !DILocalVariable(name: "destaddr", arg: 1, scope: !338, file: !339, line: 12, type: !9)
!348 = !DILocation(line: 12, column: 20, scope: !338)
!349 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !338, file: !339, line: 12, type: !342)
!350 = !DILocation(line: 12, column: 42, scope: !338)
!351 = !DILocalVariable(name: "len", arg: 3, scope: !338, file: !339, line: 12, type: !344)
!352 = !DILocation(line: 12, column: 58, scope: !338)
!353 = !DILocalVariable(name: "dest", scope: !338, file: !339, line: 13, type: !354)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!355 = !DILocation(line: 13, column: 9, scope: !338)
!356 = !DILocation(line: 13, column: 16, scope: !338)
!357 = !DILocalVariable(name: "src", scope: !338, file: !339, line: 14, type: !6)
!358 = !DILocation(line: 14, column: 15, scope: !338)
!359 = !DILocation(line: 14, column: 21, scope: !338)
!360 = !DILocation(line: 16, column: 3, scope: !338)
!361 = !DILocation(line: 16, column: 13, scope: !338)
!362 = !DILocation(line: 16, column: 16, scope: !338)
!363 = !DILocation(line: 17, column: 19, scope: !338)
!364 = !DILocation(line: 17, column: 15, scope: !338)
!365 = !DILocation(line: 17, column: 10, scope: !338)
!366 = !DILocation(line: 17, column: 13, scope: !338)
!367 = distinct !{!367, !360, !363, !368}
!368 = !{!"llvm.loop.mustprogress"}
!369 = !DILocation(line: 18, column: 10, scope: !338)
!370 = !DILocation(line: 18, column: 3, scope: !338)

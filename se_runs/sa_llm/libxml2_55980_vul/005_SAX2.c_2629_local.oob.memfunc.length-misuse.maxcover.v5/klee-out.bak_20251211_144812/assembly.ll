; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32, i32, %struct._xmlNode* }
%struct._xmlNode = type { i8*, %struct._xmlNode* }

@.str = private unnamed_addr constant [18 x i8] c"xmlSAX2Characters\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"(ctxt->nodelen + len < ctxt->nodemem) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSAX2Characters = private unnamed_addr constant [62 x i8] c"void xmlSAX2Characters(xmlParserCtxt *, const xmlChar *, int)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"nodemem\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"nodelen\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"ch_data\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !41, metadata !DIExpression()), !dbg !42
  ret void, !dbg !43
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlRealloc(i8* noundef %0, i32 noundef %1) #0 !dbg !44 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !47, metadata !DIExpression()), !dbg !48
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !49, metadata !DIExpression()), !dbg !50
  %6 = load i32, i32* %5, align 4, !dbg !51
  %7 = icmp sle i32 %6, 0, !dbg !53
  br i1 %7, label %8, label %9, !dbg !54

8:                                                ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !55
  br label %14, !dbg !55

9:                                                ; preds = %2
  %10 = load i8*, i8** %4, align 8, !dbg !56
  %11 = load i32, i32* %5, align 4, !dbg !57
  %12 = sext i32 %11 to i64, !dbg !57
  %13 = call i8* @realloc(i8* noundef %10, i64 noundef %12) #8, !dbg !58
  store i8* %13, i8** %3, align 8, !dbg !59
  br label %14, !dbg !59

14:                                               ; preds = %9, %8
  %15 = load i8*, i8** %3, align 8, !dbg !60
  ret i8* %15, !dbg !60
}

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlTextConcat(%struct._xmlNode* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !61 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlNode* %0, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !68, metadata !DIExpression()), !dbg !69
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !70, metadata !DIExpression()), !dbg !71
  ret i32 0, !dbg !72
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrlen(i8* noundef %0) #0 !dbg !73 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !76, metadata !DIExpression()), !dbg !77
  %4 = load i8*, i8** %3, align 8, !dbg !78
  %5 = icmp ne i8* %4, null, !dbg !78
  br i1 %5, label %7, label %6, !dbg !80

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4, !dbg !81
  br label %11, !dbg !81

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8, !dbg !82
  %9 = call i64 @strlen(i8* noundef %8) #9, !dbg !83
  %10 = trunc i64 %9 to i32, !dbg !83
  store i32 %10, i32* %2, align 4, !dbg !84
  br label %11, !dbg !84

11:                                               ; preds = %7, %6
  %12 = load i32, i32* %2, align 4, !dbg !85
  ret i32 %12, !dbg !85
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !86 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !89, metadata !DIExpression()), !dbg !90
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !95, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.declare(metadata i32* %8, metadata !97, metadata !DIExpression()), !dbg !98
  call void @llvm.dbg.declare(metadata i8** %9, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %10, metadata !101, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %10, align 4, !dbg !102
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !103
  %12 = icmp ne %struct._xmlParserCtxt* %11, null, !dbg !103
  br i1 %12, label %13, label %18, !dbg !105

13:                                               ; preds = %3
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !106
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 2, !dbg !107
  %16 = load %struct._xmlNode*, %struct._xmlNode** %15, align 8, !dbg !107
  %17 = icmp ne %struct._xmlNode* %16, null, !dbg !106
  br i1 %17, label %19, label %18, !dbg !108

18:                                               ; preds = %13, %3
  br label %110, !dbg !109

19:                                               ; preds = %13
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !110
  %21 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %20, i32 0, i32 2, !dbg !111
  %22 = load %struct._xmlNode*, %struct._xmlNode** %21, align 8, !dbg !111
  %23 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %22, i32 0, i32 1, !dbg !112
  %24 = load %struct._xmlNode*, %struct._xmlNode** %23, align 8, !dbg !112
  store %struct._xmlNode* %24, %struct._xmlNode** %7, align 8, !dbg !113
  %25 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !114
  %26 = icmp ne %struct._xmlNode* %25, null, !dbg !114
  br i1 %26, label %28, label %27, !dbg !116

27:                                               ; preds = %19
  br label %110, !dbg !117

28:                                               ; preds = %19
  %29 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !118
  %30 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %29, i32 0, i32 0, !dbg !120
  %31 = load i8*, i8** %30, align 8, !dbg !120
  %32 = icmp eq i8* %31, null, !dbg !121
  br i1 %32, label %33, label %34, !dbg !122

33:                                               ; preds = %28
  br label %110, !dbg !123

34:                                               ; preds = %28
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !125
  %36 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %35, i32 0, i32 0, !dbg !126
  %37 = load i32, i32* %36, align 8, !dbg !126
  store i32 %37, i32* %8, align 4, !dbg !127
  %38 = load i32, i32* %8, align 4, !dbg !128
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !130
  %40 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %39, i32 0, i32 1, !dbg !131
  %41 = load i32, i32* %40, align 4, !dbg !131
  %42 = load i32, i32* %6, align 4, !dbg !132
  %43 = add nsw i32 %41, %42, !dbg !133
  %44 = add nsw i32 %43, 1, !dbg !134
  %45 = icmp slt i32 %38, %44, !dbg !135
  br i1 %45, label %46, label %69, !dbg !136

46:                                               ; preds = %34
  %47 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !137
  %48 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %47, i32 0, i32 1, !dbg !139
  %49 = load i32, i32* %48, align 4, !dbg !139
  %50 = load i32, i32* %6, align 4, !dbg !140
  %51 = add nsw i32 %49, %50, !dbg !141
  %52 = add nsw i32 %51, 1, !dbg !142
  store i32 %52, i32* %8, align 4, !dbg !143
  %53 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !144
  %54 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %53, i32 0, i32 0, !dbg !145
  %55 = load i8*, i8** %54, align 8, !dbg !145
  %56 = load i32, i32* %8, align 4, !dbg !146
  %57 = call i8* @xmlRealloc(i8* noundef %55, i32 noundef %56), !dbg !147
  store i8* %57, i8** %9, align 8, !dbg !148
  %58 = load i8*, i8** %9, align 8, !dbg !149
  %59 = icmp eq i8* %58, null, !dbg !151
  br i1 %59, label %60, label %62, !dbg !152

60:                                               ; preds = %46
  %61 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !153
  call void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %61, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !155
  br label %110, !dbg !156

62:                                               ; preds = %46
  %63 = load i32, i32* %8, align 4, !dbg !157
  %64 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !158
  %65 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %64, i32 0, i32 0, !dbg !159
  store i32 %63, i32* %65, align 8, !dbg !160
  %66 = load i8*, i8** %9, align 8, !dbg !161
  %67 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !162
  %68 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %67, i32 0, i32 0, !dbg !163
  store i8* %66, i8** %68, align 8, !dbg !164
  br label %69, !dbg !165

69:                                               ; preds = %62, %34
  %70 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !166
  %71 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %70, i32 0, i32 1, !dbg !166
  %72 = load i32, i32* %71, align 4, !dbg !166
  %73 = load i32, i32* %6, align 4, !dbg !166
  %74 = add nsw i32 %72, %73, !dbg !166
  %75 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !166
  %76 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %75, i32 0, i32 0, !dbg !166
  %77 = load i32, i32* %76, align 8, !dbg !166
  %78 = icmp slt i32 %74, %77, !dbg !166
  br i1 %78, label %79, label %81, !dbg !166

79:                                               ; preds = %69
  br i1 true, label %80, label %81, !dbg !166

80:                                               ; preds = %79
  br label %83, !dbg !166

81:                                               ; preds = %79, %69
  %82 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 78, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSAX2Characters, i64 0, i64 0)), !dbg !166
  br label %83, !dbg !166

83:                                               ; preds = %81, %80
  %84 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([62 x i8], [62 x i8]* @__PRETTY_FUNCTION__.xmlSAX2Characters, i64 0, i64 0)), !dbg !167
  %85 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !168
  %86 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %85, i32 0, i32 0, !dbg !169
  %87 = load i8*, i8** %86, align 8, !dbg !169
  %88 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !170
  %89 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %88, i32 0, i32 1, !dbg !171
  %90 = load i32, i32* %89, align 4, !dbg !171
  %91 = sext i32 %90 to i64, !dbg !168
  %92 = getelementptr inbounds i8, i8* %87, i64 %91, !dbg !168
  %93 = load i8*, i8** %5, align 8, !dbg !172
  %94 = load i32, i32* %6, align 4, !dbg !173
  %95 = sext i32 %94 to i64, !dbg !173
  %96 = call i8* @memcpy(i8* %92, i8* %93, i64 %95), !dbg !174
  %97 = load i32, i32* %6, align 4, !dbg !175
  %98 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !176
  %99 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %98, i32 0, i32 1, !dbg !177
  %100 = load i32, i32* %99, align 4, !dbg !178
  %101 = add nsw i32 %100, %97, !dbg !178
  store i32 %101, i32* %99, align 4, !dbg !178
  %102 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !179
  %103 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %102, i32 0, i32 0, !dbg !180
  %104 = load i8*, i8** %103, align 8, !dbg !180
  %105 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !181
  %106 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %105, i32 0, i32 1, !dbg !182
  %107 = load i32, i32* %106, align 4, !dbg !182
  %108 = sext i32 %107 to i64, !dbg !179
  %109 = getelementptr inbounds i8, i8* %104, i64 %108, !dbg !179
  store i8 0, i8* %109, align 1, !dbg !183
  br label %110, !dbg !184

110:                                              ; preds = %83, %60, %33, %27, %18
  ret void, !dbg !184
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !185 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca [256 x i8], align 16
  %5 = alloca [256 x i8], align 16
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !190, metadata !DIExpression()), !dbg !191
  call void @llvm.dbg.declare(metadata [256 x i8]* %4, metadata !192, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [256 x i8]* %5, metadata !197, metadata !DIExpression()), !dbg !198
  call void @llvm.dbg.declare(metadata i32* %6, metadata !199, metadata !DIExpression()), !dbg !200
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !201
  %8 = bitcast i32* %7 to i8*, !dbg !202
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !203
  %9 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !204
  %10 = bitcast i32* %9 to i8*, !dbg !205
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !206
  %11 = bitcast i32* %6 to i8*, !dbg !207
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0)), !dbg !208
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !209
  %13 = load i32, i32* %12, align 8, !dbg !209
  %14 = icmp sgt i32 %13, 0, !dbg !210
  %15 = zext i1 %14 to i32, !dbg !210
  %16 = sext i32 %15 to i64, !dbg !211
  call void @klee_assume(i64 noundef %16), !dbg !212
  %17 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !213
  %18 = load i32, i32* %17, align 8, !dbg !213
  %19 = icmp sle i32 %18, 4096, !dbg !214
  %20 = zext i1 %19 to i32, !dbg !214
  %21 = sext i32 %20 to i64, !dbg !215
  call void @klee_assume(i64 noundef %21), !dbg !216
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !217
  %23 = load i32, i32* %22, align 4, !dbg !217
  %24 = icmp sge i32 %23, 0, !dbg !218
  %25 = zext i1 %24 to i32, !dbg !218
  %26 = sext i32 %25 to i64, !dbg !219
  call void @klee_assume(i64 noundef %26), !dbg !220
  %27 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !221
  %28 = load i32, i32* %27, align 4, !dbg !221
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !222
  %30 = load i32, i32* %29, align 8, !dbg !222
  %31 = icmp slt i32 %28, %30, !dbg !223
  %32 = zext i1 %31 to i32, !dbg !223
  %33 = sext i32 %32 to i64, !dbg !224
  call void @klee_assume(i64 noundef %33), !dbg !225
  %34 = load i32, i32* %6, align 4, !dbg !226
  %35 = icmp sgt i32 %34, 0, !dbg !227
  %36 = zext i1 %35 to i32, !dbg !227
  %37 = sext i32 %36 to i64, !dbg !226
  call void @klee_assume(i64 noundef %37), !dbg !228
  %38 = load i32, i32* %6, align 4, !dbg !229
  %39 = icmp sle i32 %38, 256, !dbg !230
  %40 = zext i1 %39 to i32, !dbg !230
  %41 = sext i32 %40 to i64, !dbg !229
  call void @klee_assume(i64 noundef %41), !dbg !231
  %42 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0, !dbg !232
  %43 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !233
  store i8* %42, i8** %43, align 8, !dbg !234
  %44 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 1, !dbg !235
  store %struct._xmlNode* null, %struct._xmlNode** %44, align 8, !dbg !236
  %45 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !237
  store %struct._xmlNode* %3, %struct._xmlNode** %45, align 8, !dbg !238
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !239
  call void @klee_make_symbolic(i8* noundef %46, i64 noundef 256, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0)), !dbg !240
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %5, i64 0, i64 0, !dbg !241
  %48 = load i32, i32* %6, align 4, !dbg !242
  call void @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %2, i8* noundef %47, i32 noundef %48), !dbg !243
  ret i32 0, !dbg !244
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !245 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !254, metadata !DIExpression()), !dbg !255
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !256, metadata !DIExpression()), !dbg !257
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !258, metadata !DIExpression()), !dbg !259
  call void @llvm.dbg.declare(metadata i8** %7, metadata !260, metadata !DIExpression()), !dbg !262
  %9 = load i8*, i8** %4, align 8, !dbg !263
  store i8* %9, i8** %7, align 8, !dbg !262
  call void @llvm.dbg.declare(metadata i8** %8, metadata !264, metadata !DIExpression()), !dbg !265
  %10 = load i8*, i8** %5, align 8, !dbg !266
  store i8* %10, i8** %8, align 8, !dbg !265
  br label %11, !dbg !267

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !268
  %13 = add i64 %12, -1, !dbg !268
  store i64 %13, i64* %6, align 8, !dbg !268
  %14 = icmp ugt i64 %12, 0, !dbg !269
  br i1 %14, label %15, label %21, !dbg !267

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !270
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !270
  store i8* %17, i8** %8, align 8, !dbg !270
  %18 = load i8, i8* %16, align 1, !dbg !271
  %19 = load i8*, i8** %7, align 8, !dbg !272
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !272
  store i8* %20, i8** %7, align 8, !dbg !272
  store i8 %18, i8* %19, align 1, !dbg !273
  br label %11, !dbg !267, !llvm.loop !274

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !276
  ret i8* %22, !dbg !277
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/005_SAX2.c_2629_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8b7428c35200cdbe4487ccf493f8d168")
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
!20 = distinct !DISubprogram(name: "xmlSAX2ErrMemory", scope: !1, file: !1, line: 26, type: !21, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23, !6}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 12, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 19, size: 128, elements: !26)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !25, file: !1, line: 20, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !25, file: !1, line: 21, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !25, file: !1, line: 22, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 11, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 14, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !33, file: !1, line: 15, baseType: !3, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !33, file: !1, line: 16, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!38 = !{}
!39 = !DILocalVariable(name: "ctxt", arg: 1, scope: !20, file: !1, line: 26, type: !23)
!40 = !DILocation(line: 26, column: 38, scope: !20)
!41 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 26, type: !6)
!42 = !DILocation(line: 26, column: 56, scope: !20)
!43 = !DILocation(line: 28, column: 1, scope: !20)
!44 = distinct !DISubprogram(name: "xmlRealloc", scope: !1, file: !1, line: 30, type: !45, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!45 = !DISubroutineType(types: !46)
!46 = !{!3, !3, !28}
!47 = !DILocalVariable(name: "ptr", arg: 1, scope: !44, file: !1, line: 30, type: !3)
!48 = !DILocation(line: 30, column: 30, scope: !44)
!49 = !DILocalVariable(name: "size", arg: 2, scope: !44, file: !1, line: 30, type: !28)
!50 = !DILocation(line: 30, column: 39, scope: !44)
!51 = !DILocation(line: 31, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !44, file: !1, line: 31, column: 9)
!53 = !DILocation(line: 31, column: 14, scope: !52)
!54 = !DILocation(line: 31, column: 9, scope: !44)
!55 = !DILocation(line: 31, column: 20, scope: !52)
!56 = !DILocation(line: 32, column: 30, scope: !44)
!57 = !DILocation(line: 32, column: 35, scope: !44)
!58 = !DILocation(line: 32, column: 22, scope: !44)
!59 = !DILocation(line: 32, column: 5, scope: !44)
!60 = !DILocation(line: 33, column: 1, scope: !44)
!61 = distinct !DISubprogram(name: "xmlTextConcat", scope: !1, file: !1, line: 35, type: !62, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!62 = !DISubroutineType(types: !63)
!63 = !{!28, !31, !64, !28}
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!66 = !DILocalVariable(name: "node", arg: 1, scope: !61, file: !1, line: 35, type: !31)
!67 = !DILocation(line: 35, column: 28, scope: !61)
!68 = !DILocalVariable(name: "ch", arg: 2, scope: !61, file: !1, line: 35, type: !64)
!69 = !DILocation(line: 35, column: 49, scope: !61)
!70 = !DILocalVariable(name: "len", arg: 3, scope: !61, file: !1, line: 35, type: !28)
!71 = !DILocation(line: 35, column: 57, scope: !61)
!72 = !DILocation(line: 37, column: 5, scope: !61)
!73 = distinct !DISubprogram(name: "xmlStrlen", scope: !1, file: !1, line: 40, type: !74, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!74 = !DISubroutineType(types: !75)
!75 = !{!28, !64}
!76 = !DILocalVariable(name: "str", arg: 1, scope: !73, file: !1, line: 40, type: !64)
!77 = !DILocation(line: 40, column: 30, scope: !73)
!78 = !DILocation(line: 41, column: 10, scope: !79)
!79 = distinct !DILexicalBlock(scope: !73, file: !1, line: 41, column: 9)
!80 = !DILocation(line: 41, column: 9, scope: !73)
!81 = !DILocation(line: 41, column: 15, scope: !79)
!82 = !DILocation(line: 42, column: 32, scope: !73)
!83 = !DILocation(line: 42, column: 12, scope: !73)
!84 = !DILocation(line: 42, column: 5, scope: !73)
!85 = !DILocation(line: 43, column: 1, scope: !73)
!86 = distinct !DISubprogram(name: "xmlSAX2Characters", scope: !1, file: !1, line: 46, type: !87, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!87 = !DISubroutineType(types: !88)
!88 = !{null, !23, !64, !28}
!89 = !DILocalVariable(name: "ctxt", arg: 1, scope: !86, file: !1, line: 46, type: !23)
!90 = !DILocation(line: 46, column: 39, scope: !86)
!91 = !DILocalVariable(name: "ch", arg: 2, scope: !86, file: !1, line: 46, type: !64)
!92 = !DILocation(line: 46, column: 60, scope: !86)
!93 = !DILocalVariable(name: "len", arg: 3, scope: !86, file: !1, line: 46, type: !28)
!94 = !DILocation(line: 46, column: 68, scope: !86)
!95 = !DILocalVariable(name: "lastChild", scope: !86, file: !1, line: 47, type: !31)
!96 = !DILocation(line: 47, column: 14, scope: !86)
!97 = !DILocalVariable(name: "size", scope: !86, file: !1, line: 48, type: !28)
!98 = !DILocation(line: 48, column: 9, scope: !86)
!99 = !DILocalVariable(name: "newbuf", scope: !86, file: !1, line: 49, type: !3)
!100 = !DILocation(line: 49, column: 14, scope: !86)
!101 = !DILocalVariable(name: "coalesceText", scope: !86, file: !1, line: 50, type: !28)
!102 = !DILocation(line: 50, column: 9, scope: !86)
!103 = !DILocation(line: 53, column: 10, scope: !104)
!104 = distinct !DILexicalBlock(scope: !86, file: !1, line: 53, column: 9)
!105 = !DILocation(line: 53, column: 15, scope: !104)
!106 = !DILocation(line: 53, column: 19, scope: !104)
!107 = !DILocation(line: 53, column: 25, scope: !104)
!108 = !DILocation(line: 53, column: 9, scope: !86)
!109 = !DILocation(line: 53, column: 31, scope: !104)
!110 = !DILocation(line: 54, column: 17, scope: !86)
!111 = !DILocation(line: 54, column: 23, scope: !86)
!112 = !DILocation(line: 54, column: 29, scope: !86)
!113 = !DILocation(line: 54, column: 15, scope: !86)
!114 = !DILocation(line: 55, column: 10, scope: !115)
!115 = distinct !DILexicalBlock(scope: !86, file: !1, line: 55, column: 9)
!116 = !DILocation(line: 55, column: 9, scope: !86)
!117 = !DILocation(line: 55, column: 21, scope: !115)
!118 = !DILocation(line: 58, column: 9, scope: !119)
!119 = distinct !DILexicalBlock(scope: !86, file: !1, line: 58, column: 9)
!120 = !DILocation(line: 58, column: 20, scope: !119)
!121 = !DILocation(line: 58, column: 28, scope: !119)
!122 = !DILocation(line: 58, column: 9, scope: !86)
!123 = !DILocation(line: 60, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 58, column: 37)
!125 = !DILocation(line: 64, column: 12, scope: !86)
!126 = !DILocation(line: 64, column: 18, scope: !86)
!127 = !DILocation(line: 64, column: 10, scope: !86)
!128 = !DILocation(line: 65, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !86, file: !1, line: 65, column: 9)
!130 = !DILocation(line: 65, column: 16, scope: !129)
!131 = !DILocation(line: 65, column: 22, scope: !129)
!132 = !DILocation(line: 65, column: 32, scope: !129)
!133 = !DILocation(line: 65, column: 30, scope: !129)
!134 = !DILocation(line: 65, column: 36, scope: !129)
!135 = !DILocation(line: 65, column: 14, scope: !129)
!136 = !DILocation(line: 65, column: 9, scope: !86)
!137 = !DILocation(line: 66, column: 16, scope: !138)
!138 = distinct !DILexicalBlock(scope: !129, file: !1, line: 65, column: 41)
!139 = !DILocation(line: 66, column: 22, scope: !138)
!140 = !DILocation(line: 66, column: 32, scope: !138)
!141 = !DILocation(line: 66, column: 30, scope: !138)
!142 = !DILocation(line: 66, column: 36, scope: !138)
!143 = !DILocation(line: 66, column: 14, scope: !138)
!144 = !DILocation(line: 67, column: 29, scope: !138)
!145 = !DILocation(line: 67, column: 40, scope: !138)
!146 = !DILocation(line: 67, column: 49, scope: !138)
!147 = !DILocation(line: 67, column: 18, scope: !138)
!148 = !DILocation(line: 67, column: 16, scope: !138)
!149 = !DILocation(line: 68, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !138, file: !1, line: 68, column: 13)
!151 = !DILocation(line: 68, column: 20, scope: !150)
!152 = !DILocation(line: 68, column: 13, scope: !138)
!153 = !DILocation(line: 69, column: 30, scope: !154)
!154 = distinct !DILexicalBlock(scope: !150, file: !1, line: 68, column: 29)
!155 = !DILocation(line: 69, column: 13, scope: !154)
!156 = !DILocation(line: 70, column: 13, scope: !154)
!157 = !DILocation(line: 72, column: 25, scope: !138)
!158 = !DILocation(line: 72, column: 9, scope: !138)
!159 = !DILocation(line: 72, column: 15, scope: !138)
!160 = !DILocation(line: 72, column: 23, scope: !138)
!161 = !DILocation(line: 73, column: 30, scope: !138)
!162 = !DILocation(line: 73, column: 9, scope: !138)
!163 = !DILocation(line: 73, column: 20, scope: !138)
!164 = !DILocation(line: 73, column: 28, scope: !138)
!165 = !DILocation(line: 74, column: 5, scope: !138)
!166 = !DILocation(line: 78, column: 5, scope: !86)
!167 = !DILocation(line: 81, column: 5, scope: !86)
!168 = !DILocation(line: 84, column: 13, scope: !86)
!169 = !DILocation(line: 84, column: 24, scope: !86)
!170 = !DILocation(line: 84, column: 32, scope: !86)
!171 = !DILocation(line: 84, column: 38, scope: !86)
!172 = !DILocation(line: 84, column: 48, scope: !86)
!173 = !DILocation(line: 84, column: 52, scope: !86)
!174 = !DILocation(line: 84, column: 5, scope: !86)
!175 = !DILocation(line: 85, column: 22, scope: !86)
!176 = !DILocation(line: 85, column: 5, scope: !86)
!177 = !DILocation(line: 85, column: 11, scope: !86)
!178 = !DILocation(line: 85, column: 19, scope: !86)
!179 = !DILocation(line: 86, column: 5, scope: !86)
!180 = !DILocation(line: 86, column: 16, scope: !86)
!181 = !DILocation(line: 86, column: 24, scope: !86)
!182 = !DILocation(line: 86, column: 30, scope: !86)
!183 = !DILocation(line: 86, column: 39, scope: !86)
!184 = !DILocation(line: 87, column: 1, scope: !86)
!185 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 89, type: !186, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!186 = !DISubroutineType(types: !187)
!187 = !{!28}
!188 = !DILocalVariable(name: "ctxt", scope: !185, file: !1, line: 90, type: !24)
!189 = !DILocation(line: 90, column: 19, scope: !185)
!190 = !DILocalVariable(name: "node", scope: !185, file: !1, line: 91, type: !32)
!191 = !DILocation(line: 91, column: 13, scope: !185)
!192 = !DILocalVariable(name: "node_content", scope: !185, file: !1, line: 92, type: !193)
!193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !194)
!194 = !{!195}
!195 = !DISubrange(count: 256)
!196 = !DILocation(line: 92, column: 13, scope: !185)
!197 = !DILocalVariable(name: "ch_data", scope: !185, file: !1, line: 93, type: !193)
!198 = !DILocation(line: 93, column: 13, scope: !185)
!199 = !DILocalVariable(name: "len", scope: !185, file: !1, line: 94, type: !28)
!200 = !DILocation(line: 94, column: 9, scope: !185)
!201 = !DILocation(line: 97, column: 30, scope: !185)
!202 = !DILocation(line: 97, column: 24, scope: !185)
!203 = !DILocation(line: 97, column: 5, scope: !185)
!204 = !DILocation(line: 98, column: 30, scope: !185)
!205 = !DILocation(line: 98, column: 24, scope: !185)
!206 = !DILocation(line: 98, column: 5, scope: !185)
!207 = !DILocation(line: 99, column: 24, scope: !185)
!208 = !DILocation(line: 99, column: 5, scope: !185)
!209 = !DILocation(line: 102, column: 22, scope: !185)
!210 = !DILocation(line: 102, column: 30, scope: !185)
!211 = !DILocation(line: 102, column: 17, scope: !185)
!212 = !DILocation(line: 102, column: 5, scope: !185)
!213 = !DILocation(line: 103, column: 22, scope: !185)
!214 = !DILocation(line: 103, column: 30, scope: !185)
!215 = !DILocation(line: 103, column: 17, scope: !185)
!216 = !DILocation(line: 103, column: 5, scope: !185)
!217 = !DILocation(line: 104, column: 22, scope: !185)
!218 = !DILocation(line: 104, column: 30, scope: !185)
!219 = !DILocation(line: 104, column: 17, scope: !185)
!220 = !DILocation(line: 104, column: 5, scope: !185)
!221 = !DILocation(line: 105, column: 22, scope: !185)
!222 = !DILocation(line: 105, column: 37, scope: !185)
!223 = !DILocation(line: 105, column: 30, scope: !185)
!224 = !DILocation(line: 105, column: 17, scope: !185)
!225 = !DILocation(line: 105, column: 5, scope: !185)
!226 = !DILocation(line: 106, column: 17, scope: !185)
!227 = !DILocation(line: 106, column: 21, scope: !185)
!228 = !DILocation(line: 106, column: 5, scope: !185)
!229 = !DILocation(line: 107, column: 17, scope: !185)
!230 = !DILocation(line: 107, column: 21, scope: !185)
!231 = !DILocation(line: 107, column: 5, scope: !185)
!232 = !DILocation(line: 110, column: 20, scope: !185)
!233 = !DILocation(line: 110, column: 10, scope: !185)
!234 = !DILocation(line: 110, column: 18, scope: !185)
!235 = !DILocation(line: 111, column: 10, scope: !185)
!236 = !DILocation(line: 111, column: 19, scope: !185)
!237 = !DILocation(line: 112, column: 10, scope: !185)
!238 = !DILocation(line: 112, column: 15, scope: !185)
!239 = !DILocation(line: 115, column: 24, scope: !185)
!240 = !DILocation(line: 115, column: 5, scope: !185)
!241 = !DILocation(line: 118, column: 30, scope: !185)
!242 = !DILocation(line: 118, column: 39, scope: !185)
!243 = !DILocation(line: 118, column: 5, scope: !185)
!244 = !DILocation(line: 120, column: 5, scope: !185)
!245 = distinct !DISubprogram(name: "memcpy", scope: !246, file: !246, line: 12, type: !247, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !38)
!246 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!247 = !DISubroutineType(types: !248)
!248 = !{!9, !9, !249, !251}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !252, line: 46, baseType: !253)
!252 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!253 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!254 = !DILocalVariable(name: "destaddr", arg: 1, scope: !245, file: !246, line: 12, type: !9)
!255 = !DILocation(line: 12, column: 20, scope: !245)
!256 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !245, file: !246, line: 12, type: !249)
!257 = !DILocation(line: 12, column: 42, scope: !245)
!258 = !DILocalVariable(name: "len", arg: 3, scope: !245, file: !246, line: 12, type: !251)
!259 = !DILocation(line: 12, column: 58, scope: !245)
!260 = !DILocalVariable(name: "dest", scope: !245, file: !246, line: 13, type: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!262 = !DILocation(line: 13, column: 9, scope: !245)
!263 = !DILocation(line: 13, column: 16, scope: !245)
!264 = !DILocalVariable(name: "src", scope: !245, file: !246, line: 14, type: !6)
!265 = !DILocation(line: 14, column: 15, scope: !245)
!266 = !DILocation(line: 14, column: 21, scope: !245)
!267 = !DILocation(line: 16, column: 3, scope: !245)
!268 = !DILocation(line: 16, column: 13, scope: !245)
!269 = !DILocation(line: 16, column: 16, scope: !245)
!270 = !DILocation(line: 17, column: 19, scope: !245)
!271 = !DILocation(line: 17, column: 15, scope: !245)
!272 = !DILocation(line: 17, column: 10, scope: !245)
!273 = !DILocation(line: 17, column: 13, scope: !245)
!274 = distinct !{!274, !267, !270, !275}
!275 = !{!"llvm.loop.mustprogress"}
!276 = !DILocation(line: 18, column: 10, scope: !245)
!277 = !DILocation(line: 18, column: 3, scope: !245)

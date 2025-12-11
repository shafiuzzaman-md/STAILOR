; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i32, i32, i8* }
%struct._xmlNode = type { i8*, i8*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, %struct._xmlNode*, i32 }

@.str = private unnamed_addr constant [18 x i8] c"xmlSAX2Characters\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"nodelen\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"nodemem\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"ch\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [59 x i8] c"(ctxt.nodelen + len < ctxt.nodemem) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %0, i8* noundef %1) #0 !dbg !18 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !32, metadata !DIExpression()), !dbg !33
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !34, metadata !DIExpression()), !dbg !35
  %5 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !36
  %6 = load i8*, i8** %4, align 8, !dbg !37
  ret void, !dbg !38
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlTextConcat(%struct._xmlNode* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !39 {
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct._xmlNode* %0, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !54, metadata !DIExpression()), !dbg !55
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !56, metadata !DIExpression()), !dbg !57
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !58, metadata !DIExpression()), !dbg !59
  %7 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !60
  %8 = load i8*, i8** %5, align 8, !dbg !61
  %9 = load i32, i32* %6, align 4, !dbg !62
  ret i32 0, !dbg !63
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !64 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlNode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !67, metadata !DIExpression()), !dbg !68
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %7, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %8, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8** %9, metadata !77, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %10, metadata !79, metadata !DIExpression()), !dbg !80
  store i32 1, i32* %10, align 4, !dbg !80
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !81
  %12 = icmp eq %struct._xmlParserCtxt* %11, null, !dbg !83
  br i1 %12, label %19, label %13, !dbg !84

13:                                               ; preds = %3
  %14 = load i8*, i8** %5, align 8, !dbg !85
  %15 = icmp eq i8* %14, null, !dbg !86
  br i1 %15, label %19, label %16, !dbg !87

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4, !dbg !88
  %18 = icmp slt i32 %17, 0, !dbg !89
  br i1 %18, label %19, label %20, !dbg !90

19:                                               ; preds = %16, %13, %3
  br label %136, !dbg !91

20:                                               ; preds = %16
  %21 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !92
  %22 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %21, i32 0, i32 2, !dbg !93
  %23 = load i8*, i8** %22, align 8, !dbg !93
  %24 = bitcast i8* %23 to %struct._xmlNode*, !dbg !92
  store %struct._xmlNode* %24, %struct._xmlNode** %7, align 8, !dbg !94
  %25 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !95
  %26 = icmp eq %struct._xmlNode* %25, null, !dbg !97
  br i1 %26, label %27, label %28, !dbg !98

27:                                               ; preds = %20
  br label %136, !dbg !99

28:                                               ; preds = %20
  %29 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !100
  %30 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %29, i32 0, i32 6, !dbg !102
  %31 = load i32, i32* %30, align 8, !dbg !102
  %32 = icmp eq i32 %31, 3, !dbg !103
  br i1 %32, label %33, label %123, !dbg !104

33:                                               ; preds = %28
  %34 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !105
  %35 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %34, i32 0, i32 0, !dbg !108
  %36 = load i8*, i8** %35, align 8, !dbg !108
  %37 = icmp eq i8* %36, null, !dbg !109
  br i1 %37, label %38, label %62, !dbg !110

38:                                               ; preds = %33
  %39 = load i32, i32* %6, align 4, !dbg !111
  %40 = icmp eq i32 %39, 0, !dbg !114
  br i1 %40, label %41, label %42, !dbg !115

41:                                               ; preds = %38
  br label %136, !dbg !116

42:                                               ; preds = %38
  %43 = load i32, i32* %6, align 4, !dbg !117
  %44 = add nsw i32 %43, 1, !dbg !118
  store i32 %44, i32* %8, align 4, !dbg !119
  %45 = load i32, i32* %8, align 4, !dbg !120
  %46 = sext i32 %45 to i64, !dbg !120
  %47 = call noalias i8* @malloc(i64 noundef %46) #8, !dbg !121
  %48 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !122
  %49 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %48, i32 0, i32 0, !dbg !123
  store i8* %47, i8** %49, align 8, !dbg !124
  %50 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !125
  %51 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %50, i32 0, i32 0, !dbg !127
  %52 = load i8*, i8** %51, align 8, !dbg !127
  %53 = icmp eq i8* %52, null, !dbg !128
  br i1 %53, label %54, label %56, !dbg !129

54:                                               ; preds = %42
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !130
  call void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %55, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !132
  br label %136, !dbg !133

56:                                               ; preds = %42
  %57 = load i32, i32* %8, align 4, !dbg !134
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !135
  %59 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %58, i32 0, i32 0, !dbg !136
  store i32 %57, i32* %59, align 8, !dbg !137
  %60 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !138
  %61 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %60, i32 0, i32 1, !dbg !139
  store i32 0, i32* %61, align 4, !dbg !140
  br label %122, !dbg !141

62:                                               ; preds = %33
  %63 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !142
  %64 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %63, i32 0, i32 1, !dbg !145
  %65 = load i32, i32* %64, align 4, !dbg !145
  %66 = load i32, i32* %6, align 4, !dbg !146
  %67 = add nsw i32 %65, %66, !dbg !147
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !148
  %69 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %68, i32 0, i32 0, !dbg !149
  %70 = load i32, i32* %69, align 8, !dbg !149
  %71 = icmp sge i32 %67, %70, !dbg !150
  br i1 %71, label %72, label %96, !dbg !151

72:                                               ; preds = %62
  %73 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !152
  %74 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %73, i32 0, i32 1, !dbg !154
  %75 = load i32, i32* %74, align 4, !dbg !154
  %76 = load i32, i32* %6, align 4, !dbg !155
  %77 = add nsw i32 %75, %76, !dbg !156
  %78 = add nsw i32 %77, 1, !dbg !157
  store i32 %78, i32* %8, align 4, !dbg !158
  %79 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !159
  %80 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %79, i32 0, i32 0, !dbg !160
  %81 = load i8*, i8** %80, align 8, !dbg !160
  %82 = load i32, i32* %8, align 4, !dbg !161
  %83 = sext i32 %82 to i64, !dbg !161
  %84 = call i8* @realloc(i8* noundef %81, i64 noundef %83) #8, !dbg !162
  store i8* %84, i8** %9, align 8, !dbg !163
  %85 = load i8*, i8** %9, align 8, !dbg !164
  %86 = icmp eq i8* %85, null, !dbg !166
  br i1 %86, label %87, label %89, !dbg !167

87:                                               ; preds = %72
  %88 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !168
  call void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %88, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !170
  br label %136, !dbg !171

89:                                               ; preds = %72
  %90 = load i32, i32* %8, align 4, !dbg !172
  %91 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !173
  %92 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %91, i32 0, i32 0, !dbg !174
  store i32 %90, i32* %92, align 8, !dbg !175
  %93 = load i8*, i8** %9, align 8, !dbg !176
  %94 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !177
  %95 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %94, i32 0, i32 0, !dbg !178
  store i8* %93, i8** %95, align 8, !dbg !179
  br label %96, !dbg !180

96:                                               ; preds = %89, %62
  %97 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !181
  %98 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %97, i32 0, i32 0, !dbg !182
  %99 = load i8*, i8** %98, align 8, !dbg !182
  %100 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !183
  %101 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %100, i32 0, i32 1, !dbg !184
  %102 = load i32, i32* %101, align 4, !dbg !184
  %103 = sext i32 %102 to i64, !dbg !181
  %104 = getelementptr inbounds i8, i8* %99, i64 %103, !dbg !181
  %105 = load i8*, i8** %5, align 8, !dbg !185
  %106 = load i32, i32* %6, align 4, !dbg !186
  %107 = sext i32 %106 to i64, !dbg !186
  %108 = call i8* @memcpy(i8* %104, i8* %105, i64 %107), !dbg !187
  %109 = load i32, i32* %6, align 4, !dbg !188
  %110 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !189
  %111 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %110, i32 0, i32 1, !dbg !190
  %112 = load i32, i32* %111, align 4, !dbg !191
  %113 = add nsw i32 %112, %109, !dbg !191
  store i32 %113, i32* %111, align 4, !dbg !191
  %114 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !192
  %115 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %114, i32 0, i32 0, !dbg !193
  %116 = load i8*, i8** %115, align 8, !dbg !193
  %117 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !194
  %118 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %117, i32 0, i32 1, !dbg !195
  %119 = load i32, i32* %118, align 4, !dbg !195
  %120 = sext i32 %119 to i64, !dbg !192
  %121 = getelementptr inbounds i8, i8* %116, i64 %120, !dbg !192
  store i8 0, i8* %121, align 1, !dbg !196
  br label %122

122:                                              ; preds = %96, %56
  br label %136, !dbg !197

123:                                              ; preds = %28
  %124 = load i32, i32* %10, align 4, !dbg !198
  %125 = icmp ne i32 %124, 0, !dbg !198
  br i1 %125, label %126, label %135, !dbg !200

126:                                              ; preds = %123
  %127 = load %struct._xmlNode*, %struct._xmlNode** %7, align 8, !dbg !201
  %128 = load i8*, i8** %5, align 8, !dbg !204
  %129 = load i32, i32* %6, align 4, !dbg !205
  %130 = call i32 @xmlTextConcat(%struct._xmlNode* noundef %127, i8* noundef %128, i32 noundef %129), !dbg !206
  %131 = icmp ne i32 %130, 0, !dbg !206
  br i1 %131, label %132, label %134, !dbg !207

132:                                              ; preds = %126
  %133 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !208
  call void @xmlSAX2ErrMemory(%struct._xmlParserCtxt* noundef %133, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !210
  br label %134, !dbg !211

134:                                              ; preds = %132, %126
  br label %135, !dbg !212

135:                                              ; preds = %134, %123
  br label %136

136:                                              ; preds = %19, %27, %41, %54, %87, %135, %122
  ret void, !dbg !213
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare i8* @realloc(i8* noundef, i64 noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !214 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt, align 8
  %3 = alloca %struct._xmlNode, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt* %2, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %3, metadata !219, metadata !DIExpression()), !dbg !220
  call void @llvm.dbg.declare(metadata i8** %4, metadata !221, metadata !DIExpression()), !dbg !222
  call void @llvm.dbg.declare(metadata i32* %5, metadata !223, metadata !DIExpression()), !dbg !224
  call void @llvm.dbg.declare(metadata i32* %6, metadata !225, metadata !DIExpression()), !dbg !226
  call void @llvm.dbg.declare(metadata i32* %7, metadata !227, metadata !DIExpression()), !dbg !228
  %8 = bitcast %struct._xmlParserCtxt* %2 to i8*, !dbg !229
  %9 = call i8* @memset(i8* %8, i32 0, i64 16), !dbg !229
  %10 = bitcast %struct._xmlNode* %3 to i8*, !dbg !230
  %11 = call i8* @memset(i8* %10, i32 0, i64 56), !dbg !230
  %12 = bitcast i32* %5 to i8*, !dbg !231
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !232
  %13 = bitcast i32* %6 to i8*, !dbg !233
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !234
  %14 = bitcast i32* %7 to i8*, !dbg !235
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)), !dbg !236
  %15 = load i32, i32* %5, align 4, !dbg !237
  %16 = icmp sge i32 %15, 0, !dbg !238
  br i1 %16, label %17, label %20, !dbg !239

17:                                               ; preds = %0
  %18 = load i32, i32* %5, align 4, !dbg !240
  %19 = icmp slt i32 %18, 1024, !dbg !241
  br label %20

20:                                               ; preds = %17, %0
  %21 = phi i1 [ false, %0 ], [ %19, %17 ], !dbg !242
  %22 = zext i1 %21 to i32, !dbg !239
  %23 = sext i32 %22 to i64, !dbg !237
  call void @klee_assume(i64 noundef %23), !dbg !243
  %24 = load i32, i32* %6, align 4, !dbg !244
  %25 = icmp sge i32 %24, 0, !dbg !245
  br i1 %25, label %26, label %29, !dbg !246

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4, !dbg !247
  %28 = icmp slt i32 %27, 1024, !dbg !248
  br label %29

29:                                               ; preds = %26, %20
  %30 = phi i1 [ false, %20 ], [ %28, %26 ], !dbg !242
  %31 = zext i1 %30 to i32, !dbg !246
  %32 = sext i32 %31 to i64, !dbg !244
  call void @klee_assume(i64 noundef %32), !dbg !249
  %33 = load i32, i32* %7, align 4, !dbg !250
  %34 = icmp sge i32 %33, 0, !dbg !251
  br i1 %34, label %35, label %38, !dbg !252

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4, !dbg !253
  %37 = icmp slt i32 %36, 2048, !dbg !254
  br label %38

38:                                               ; preds = %35, %29
  %39 = phi i1 [ false, %29 ], [ %37, %35 ], !dbg !242
  %40 = zext i1 %39 to i32, !dbg !252
  %41 = sext i32 %40 to i64, !dbg !250
  call void @klee_assume(i64 noundef %41), !dbg !255
  %42 = load i32, i32* %6, align 4, !dbg !256
  %43 = load i32, i32* %5, align 4, !dbg !257
  %44 = add nsw i32 %42, %43, !dbg !258
  %45 = load i32, i32* %7, align 4, !dbg !259
  %46 = icmp sge i32 %44, %45, !dbg !260
  %47 = zext i1 %46 to i32, !dbg !260
  %48 = sext i32 %47 to i64, !dbg !256
  call void @klee_assume(i64 noundef %48), !dbg !261
  %49 = load i32, i32* %7, align 4, !dbg !262
  %50 = icmp sgt i32 %49, 0, !dbg !263
  %51 = zext i1 %50 to i32, !dbg !263
  %52 = sext i32 %51 to i64, !dbg !262
  call void @klee_assume(i64 noundef %52), !dbg !264
  %53 = load i32, i32* %6, align 4, !dbg !265
  %54 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !266
  store i32 %53, i32* %54, align 4, !dbg !267
  %55 = load i32, i32* %7, align 4, !dbg !268
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !269
  store i32 %55, i32* %56, align 8, !dbg !270
  %57 = bitcast %struct._xmlNode* %3 to i8*, !dbg !271
  %58 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 2, !dbg !272
  store i8* %57, i8** %58, align 8, !dbg !273
  %59 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 6, !dbg !274
  store i32 3, i32* %59, align 8, !dbg !275
  %60 = load i32, i32* %7, align 4, !dbg !276
  %61 = sext i32 %60 to i64, !dbg !276
  %62 = call noalias i8* @malloc(i64 noundef %61) #8, !dbg !277
  %63 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !278
  store i8* %62, i8** %63, align 8, !dbg !279
  %64 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !280
  %65 = load i8*, i8** %64, align 8, !dbg !280
  %66 = icmp ne i8* %65, null, !dbg !281
  %67 = zext i1 %66 to i32, !dbg !281
  %68 = sext i32 %67 to i64, !dbg !282
  call void @klee_assume(i64 noundef %68), !dbg !283
  %69 = load i32, i32* %5, align 4, !dbg !284
  %70 = add nsw i32 %69, 1, !dbg !285
  %71 = sext i32 %70 to i64, !dbg !284
  %72 = call noalias i8* @malloc(i64 noundef %71) #8, !dbg !286
  store i8* %72, i8** %4, align 8, !dbg !287
  %73 = load i8*, i8** %4, align 8, !dbg !288
  %74 = icmp ne i8* %73, null, !dbg !289
  %75 = zext i1 %74 to i32, !dbg !289
  %76 = sext i32 %75 to i64, !dbg !288
  call void @klee_assume(i64 noundef %76), !dbg !290
  %77 = load i8*, i8** %4, align 8, !dbg !291
  %78 = load i32, i32* %5, align 4, !dbg !292
  %79 = add nsw i32 %78, 1, !dbg !293
  %80 = sext i32 %79 to i64, !dbg !292
  call void @klee_make_symbolic(i8* noundef %77, i64 noundef %80, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0)), !dbg !294
  %81 = load i8*, i8** %4, align 8, !dbg !295
  %82 = load i32, i32* %5, align 4, !dbg !296
  call void @xmlSAX2Characters(%struct._xmlParserCtxt* noundef %2, i8* noundef %81, i32 noundef %82), !dbg !297
  %83 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 1, !dbg !298
  %84 = load i32, i32* %83, align 4, !dbg !298
  %85 = load i32, i32* %5, align 4, !dbg !298
  %86 = add nsw i32 %84, %85, !dbg !298
  %87 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %2, i32 0, i32 0, !dbg !298
  %88 = load i32, i32* %87, align 8, !dbg !298
  %89 = icmp slt i32 %86, %88, !dbg !298
  br i1 %89, label %90, label %92, !dbg !298

90:                                               ; preds = %38
  br i1 true, label %91, label %92, !dbg !298

91:                                               ; preds = %90
  br label %94, !dbg !298

92:                                               ; preds = %90, %38
  %93 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([59 x i8], [59 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !298
  br label %94, !dbg !298

94:                                               ; preds = %92, %91
  %95 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.7, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !299
  %96 = load i8*, i8** %4, align 8, !dbg !300
  call void @free(i8* noundef %96) #8, !dbg !301
  %97 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %3, i32 0, i32 0, !dbg !302
  %98 = load i8*, i8** %97, align 8, !dbg !302
  call void @free(i8* noundef %98) #8, !dbg !303
  ret i32 0, !dbg !304
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !305 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !314, metadata !DIExpression()), !dbg !315
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !316, metadata !DIExpression()), !dbg !317
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !318, metadata !DIExpression()), !dbg !319
  call void @llvm.dbg.declare(metadata i8** %7, metadata !320, metadata !DIExpression()), !dbg !321
  %9 = load i8*, i8** %4, align 8, !dbg !322
  store i8* %9, i8** %7, align 8, !dbg !321
  call void @llvm.dbg.declare(metadata i8** %8, metadata !323, metadata !DIExpression()), !dbg !324
  %10 = load i8*, i8** %5, align 8, !dbg !325
  store i8* %10, i8** %8, align 8, !dbg !324
  br label %11, !dbg !326

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !327
  %13 = add i64 %12, -1, !dbg !327
  store i64 %13, i64* %6, align 8, !dbg !327
  %14 = icmp ugt i64 %12, 0, !dbg !328
  br i1 %14, label %15, label %21, !dbg !326

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !329
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !329
  store i8* %17, i8** %8, align 8, !dbg !329
  %18 = load i8, i8* %16, align 1, !dbg !330
  %19 = load i8*, i8** %7, align 8, !dbg !331
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !331
  store i8* %20, i8** %7, align 8, !dbg !331
  store i8 %18, i8* %19, align 1, !dbg !332
  br label %11, !dbg !326, !llvm.loop !333

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !335
  ret i8* %22, !dbg !336
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !337 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !341, metadata !DIExpression()), !dbg !342
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !343, metadata !DIExpression()), !dbg !344
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !345, metadata !DIExpression()), !dbg !346
  call void @llvm.dbg.declare(metadata i8** %7, metadata !347, metadata !DIExpression()), !dbg !348
  %8 = load i8*, i8** %4, align 8, !dbg !349
  store i8* %8, i8** %7, align 8, !dbg !348
  br label %9, !dbg !350

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !351
  %11 = add i64 %10, -1, !dbg !351
  store i64 %11, i64* %6, align 8, !dbg !351
  %12 = icmp ugt i64 %10, 0, !dbg !352
  br i1 %12, label %13, label %18, !dbg !350

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !353
  %15 = trunc i32 %14 to i8, !dbg !353
  %16 = load i8*, i8** %7, align 8, !dbg !354
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !354
  store i8* %17, i8** %7, align 8, !dbg !354
  store i8 %15, i8* %16, align 1, !dbg !355
  br label %9, !dbg !350, !llvm.loop !356

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !357
  ret i8* %19, !dbg !358
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/000_SAX2.c_2479_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f20613209062f55ff5fe977de2fe8e13")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "xmlSAX2ErrMemory", scope: !1, file: !1, line: 30, type: !19, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21, !29}
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 13, size: 128, elements: !24)
!24 = !{!25, !27, !28}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "nodemem", scope: !23, file: !1, line: 14, baseType: !26, size: 32)
!26 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "nodelen", scope: !23, file: !1, line: 15, baseType: !26, size: 32, offset: 32)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !23, file: !1, line: 16, baseType: !3, size: 64, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!31 = !{}
!32 = !DILocalVariable(name: "ctxt", arg: 1, scope: !18, file: !1, line: 30, type: !21)
!33 = !DILocation(line: 30, column: 38, scope: !18)
!34 = !DILocalVariable(name: "msg", arg: 2, scope: !18, file: !1, line: 30, type: !29)
!35 = !DILocation(line: 30, column: 56, scope: !18)
!36 = !DILocation(line: 31, column: 11, scope: !18)
!37 = !DILocation(line: 32, column: 11, scope: !18)
!38 = !DILocation(line: 33, column: 1, scope: !18)
!39 = distinct !DISubprogram(name: "xmlTextConcat", scope: !1, file: !1, line: 35, type: !40, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!40 = !DISubroutineType(types: !41)
!41 = !{!26, !42, !29, !26}
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 11, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 19, size: 448, elements: !45)
!45 = !{!46, !47, !48, !50, !51, !52, !53}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !44, file: !1, line: 20, baseType: !4, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !44, file: !1, line: 21, baseType: !3, size: 64, offset: 64)
!48 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !44, file: !1, line: 22, baseType: !49, size: 64, offset: 128)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !44, file: !1, line: 23, baseType: !49, size: 64, offset: 192)
!51 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !44, file: !1, line: 24, baseType: !49, size: 64, offset: 256)
!52 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !44, file: !1, line: 25, baseType: !49, size: 64, offset: 320)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !44, file: !1, line: 26, baseType: !26, size: 32, offset: 384)
!54 = !DILocalVariable(name: "node", arg: 1, scope: !39, file: !1, line: 35, type: !42)
!55 = !DILocation(line: 35, column: 28, scope: !39)
!56 = !DILocalVariable(name: "ch", arg: 2, scope: !39, file: !1, line: 35, type: !29)
!57 = !DILocation(line: 35, column: 46, scope: !39)
!58 = !DILocalVariable(name: "len", arg: 3, scope: !39, file: !1, line: 35, type: !26)
!59 = !DILocation(line: 35, column: 54, scope: !39)
!60 = !DILocation(line: 36, column: 11, scope: !39)
!61 = !DILocation(line: 37, column: 11, scope: !39)
!62 = !DILocation(line: 38, column: 11, scope: !39)
!63 = !DILocation(line: 39, column: 5, scope: !39)
!64 = distinct !DISubprogram(name: "xmlSAX2Characters", scope: !1, file: !1, line: 43, type: !65, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !21, !29, !26}
!67 = !DILocalVariable(name: "ctxt", arg: 1, scope: !64, file: !1, line: 43, type: !21)
!68 = !DILocation(line: 43, column: 39, scope: !64)
!69 = !DILocalVariable(name: "ch", arg: 2, scope: !64, file: !1, line: 43, type: !29)
!70 = !DILocation(line: 43, column: 57, scope: !64)
!71 = !DILocalVariable(name: "len", arg: 3, scope: !64, file: !1, line: 43, type: !26)
!72 = !DILocation(line: 43, column: 65, scope: !64)
!73 = !DILocalVariable(name: "lastChild", scope: !64, file: !1, line: 44, type: !42)
!74 = !DILocation(line: 44, column: 14, scope: !64)
!75 = !DILocalVariable(name: "size", scope: !64, file: !1, line: 45, type: !26)
!76 = !DILocation(line: 45, column: 9, scope: !64)
!77 = !DILocalVariable(name: "newbuf", scope: !64, file: !1, line: 46, type: !4)
!78 = !DILocation(line: 46, column: 11, scope: !64)
!79 = !DILocalVariable(name: "coalesceText", scope: !64, file: !1, line: 47, type: !26)
!80 = !DILocation(line: 47, column: 9, scope: !64)
!81 = !DILocation(line: 49, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !64, file: !1, line: 49, column: 9)
!83 = !DILocation(line: 49, column: 14, scope: !82)
!84 = !DILocation(line: 49, column: 22, scope: !82)
!85 = !DILocation(line: 49, column: 25, scope: !82)
!86 = !DILocation(line: 49, column: 28, scope: !82)
!87 = !DILocation(line: 49, column: 36, scope: !82)
!88 = !DILocation(line: 49, column: 39, scope: !82)
!89 = !DILocation(line: 49, column: 43, scope: !82)
!90 = !DILocation(line: 49, column: 9, scope: !64)
!91 = !DILocation(line: 49, column: 48, scope: !82)
!92 = !DILocation(line: 51, column: 17, scope: !64)
!93 = !DILocation(line: 51, column: 23, scope: !64)
!94 = !DILocation(line: 51, column: 15, scope: !64)
!95 = !DILocation(line: 52, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !64, file: !1, line: 52, column: 9)
!97 = !DILocation(line: 52, column: 19, scope: !96)
!98 = !DILocation(line: 52, column: 9, scope: !64)
!99 = !DILocation(line: 52, column: 28, scope: !96)
!100 = !DILocation(line: 54, column: 9, scope: !101)
!101 = distinct !DILexicalBlock(scope: !64, file: !1, line: 54, column: 9)
!102 = !DILocation(line: 54, column: 20, scope: !101)
!103 = !DILocation(line: 54, column: 25, scope: !101)
!104 = !DILocation(line: 54, column: 9, scope: !64)
!105 = !DILocation(line: 55, column: 13, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 55, column: 13)
!107 = distinct !DILexicalBlock(scope: !101, file: !1, line: 54, column: 31)
!108 = !DILocation(line: 55, column: 24, scope: !106)
!109 = !DILocation(line: 55, column: 32, scope: !106)
!110 = !DILocation(line: 55, column: 13, scope: !107)
!111 = !DILocation(line: 56, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 56, column: 17)
!113 = distinct !DILexicalBlock(scope: !106, file: !1, line: 55, column: 41)
!114 = !DILocation(line: 56, column: 21, scope: !112)
!115 = !DILocation(line: 56, column: 17, scope: !113)
!116 = !DILocation(line: 56, column: 27, scope: !112)
!117 = !DILocation(line: 57, column: 20, scope: !113)
!118 = !DILocation(line: 57, column: 24, scope: !113)
!119 = !DILocation(line: 57, column: 18, scope: !113)
!120 = !DILocation(line: 58, column: 49, scope: !113)
!121 = !DILocation(line: 58, column: 42, scope: !113)
!122 = !DILocation(line: 58, column: 13, scope: !113)
!123 = !DILocation(line: 58, column: 24, scope: !113)
!124 = !DILocation(line: 58, column: 32, scope: !113)
!125 = !DILocation(line: 59, column: 17, scope: !126)
!126 = distinct !DILexicalBlock(scope: !113, file: !1, line: 59, column: 17)
!127 = !DILocation(line: 59, column: 28, scope: !126)
!128 = !DILocation(line: 59, column: 36, scope: !126)
!129 = !DILocation(line: 59, column: 17, scope: !113)
!130 = !DILocation(line: 60, column: 34, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 59, column: 45)
!132 = !DILocation(line: 60, column: 17, scope: !131)
!133 = !DILocation(line: 61, column: 17, scope: !131)
!134 = !DILocation(line: 63, column: 29, scope: !113)
!135 = !DILocation(line: 63, column: 13, scope: !113)
!136 = !DILocation(line: 63, column: 19, scope: !113)
!137 = !DILocation(line: 63, column: 27, scope: !113)
!138 = !DILocation(line: 64, column: 13, scope: !113)
!139 = !DILocation(line: 64, column: 19, scope: !113)
!140 = !DILocation(line: 64, column: 27, scope: !113)
!141 = !DILocation(line: 65, column: 9, scope: !113)
!142 = !DILocation(line: 66, column: 17, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 66, column: 17)
!144 = distinct !DILexicalBlock(scope: !106, file: !1, line: 65, column: 16)
!145 = !DILocation(line: 66, column: 23, scope: !143)
!146 = !DILocation(line: 66, column: 33, scope: !143)
!147 = !DILocation(line: 66, column: 31, scope: !143)
!148 = !DILocation(line: 66, column: 40, scope: !143)
!149 = !DILocation(line: 66, column: 46, scope: !143)
!150 = !DILocation(line: 66, column: 37, scope: !143)
!151 = !DILocation(line: 66, column: 17, scope: !144)
!152 = !DILocation(line: 67, column: 24, scope: !153)
!153 = distinct !DILexicalBlock(scope: !143, file: !1, line: 66, column: 55)
!154 = !DILocation(line: 67, column: 30, scope: !153)
!155 = !DILocation(line: 67, column: 40, scope: !153)
!156 = !DILocation(line: 67, column: 38, scope: !153)
!157 = !DILocation(line: 67, column: 44, scope: !153)
!158 = !DILocation(line: 67, column: 22, scope: !153)
!159 = !DILocation(line: 68, column: 42, scope: !153)
!160 = !DILocation(line: 68, column: 53, scope: !153)
!161 = !DILocation(line: 68, column: 62, scope: !153)
!162 = !DILocation(line: 68, column: 34, scope: !153)
!163 = !DILocation(line: 68, column: 24, scope: !153)
!164 = !DILocation(line: 69, column: 21, scope: !165)
!165 = distinct !DILexicalBlock(scope: !153, file: !1, line: 69, column: 21)
!166 = !DILocation(line: 69, column: 28, scope: !165)
!167 = !DILocation(line: 69, column: 21, scope: !153)
!168 = !DILocation(line: 70, column: 38, scope: !169)
!169 = distinct !DILexicalBlock(scope: !165, file: !1, line: 69, column: 37)
!170 = !DILocation(line: 70, column: 21, scope: !169)
!171 = !DILocation(line: 71, column: 21, scope: !169)
!172 = !DILocation(line: 73, column: 33, scope: !153)
!173 = !DILocation(line: 73, column: 17, scope: !153)
!174 = !DILocation(line: 73, column: 23, scope: !153)
!175 = !DILocation(line: 73, column: 31, scope: !153)
!176 = !DILocation(line: 74, column: 38, scope: !153)
!177 = !DILocation(line: 74, column: 17, scope: !153)
!178 = !DILocation(line: 74, column: 28, scope: !153)
!179 = !DILocation(line: 74, column: 36, scope: !153)
!180 = !DILocation(line: 75, column: 13, scope: !153)
!181 = !DILocation(line: 77, column: 21, scope: !144)
!182 = !DILocation(line: 77, column: 32, scope: !144)
!183 = !DILocation(line: 77, column: 40, scope: !144)
!184 = !DILocation(line: 77, column: 46, scope: !144)
!185 = !DILocation(line: 77, column: 56, scope: !144)
!186 = !DILocation(line: 77, column: 60, scope: !144)
!187 = !DILocation(line: 77, column: 13, scope: !144)
!188 = !DILocation(line: 78, column: 30, scope: !144)
!189 = !DILocation(line: 78, column: 13, scope: !144)
!190 = !DILocation(line: 78, column: 19, scope: !144)
!191 = !DILocation(line: 78, column: 27, scope: !144)
!192 = !DILocation(line: 79, column: 13, scope: !144)
!193 = !DILocation(line: 79, column: 24, scope: !144)
!194 = !DILocation(line: 79, column: 32, scope: !144)
!195 = !DILocation(line: 79, column: 38, scope: !144)
!196 = !DILocation(line: 79, column: 47, scope: !144)
!197 = !DILocation(line: 81, column: 5, scope: !107)
!198 = !DILocation(line: 81, column: 16, scope: !199)
!199 = distinct !DILexicalBlock(scope: !101, file: !1, line: 81, column: 16)
!200 = !DILocation(line: 81, column: 16, scope: !101)
!201 = !DILocation(line: 82, column: 27, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !1, line: 82, column: 13)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 81, column: 30)
!204 = !DILocation(line: 82, column: 38, scope: !202)
!205 = !DILocation(line: 82, column: 42, scope: !202)
!206 = !DILocation(line: 82, column: 13, scope: !202)
!207 = !DILocation(line: 82, column: 13, scope: !203)
!208 = !DILocation(line: 83, column: 30, scope: !209)
!209 = distinct !DILexicalBlock(scope: !202, file: !1, line: 82, column: 48)
!210 = !DILocation(line: 83, column: 13, scope: !209)
!211 = !DILocation(line: 84, column: 9, scope: !209)
!212 = !DILocation(line: 85, column: 5, scope: !203)
!213 = !DILocation(line: 86, column: 1, scope: !64)
!214 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 88, type: !215, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !31)
!215 = !DISubroutineType(types: !216)
!216 = !{!26}
!217 = !DILocalVariable(name: "ctxt", scope: !214, file: !1, line: 89, type: !22)
!218 = !DILocation(line: 89, column: 19, scope: !214)
!219 = !DILocalVariable(name: "node", scope: !214, file: !1, line: 90, type: !43)
!220 = !DILocation(line: 90, column: 13, scope: !214)
!221 = !DILocalVariable(name: "ch", scope: !214, file: !1, line: 91, type: !4)
!222 = !DILocation(line: 91, column: 11, scope: !214)
!223 = !DILocalVariable(name: "len", scope: !214, file: !1, line: 92, type: !26)
!224 = !DILocation(line: 92, column: 9, scope: !214)
!225 = !DILocalVariable(name: "nodelen", scope: !214, file: !1, line: 93, type: !26)
!226 = !DILocation(line: 93, column: 9, scope: !214)
!227 = !DILocalVariable(name: "nodemem", scope: !214, file: !1, line: 94, type: !26)
!228 = !DILocation(line: 94, column: 9, scope: !214)
!229 = !DILocation(line: 97, column: 5, scope: !214)
!230 = !DILocation(line: 98, column: 5, scope: !214)
!231 = !DILocation(line: 101, column: 24, scope: !214)
!232 = !DILocation(line: 101, column: 5, scope: !214)
!233 = !DILocation(line: 102, column: 24, scope: !214)
!234 = !DILocation(line: 102, column: 5, scope: !214)
!235 = !DILocation(line: 103, column: 24, scope: !214)
!236 = !DILocation(line: 103, column: 5, scope: !214)
!237 = !DILocation(line: 106, column: 17, scope: !214)
!238 = !DILocation(line: 106, column: 21, scope: !214)
!239 = !DILocation(line: 106, column: 26, scope: !214)
!240 = !DILocation(line: 106, column: 29, scope: !214)
!241 = !DILocation(line: 106, column: 33, scope: !214)
!242 = !DILocation(line: 0, scope: !214)
!243 = !DILocation(line: 106, column: 5, scope: !214)
!244 = !DILocation(line: 107, column: 17, scope: !214)
!245 = !DILocation(line: 107, column: 25, scope: !214)
!246 = !DILocation(line: 107, column: 30, scope: !214)
!247 = !DILocation(line: 107, column: 33, scope: !214)
!248 = !DILocation(line: 107, column: 41, scope: !214)
!249 = !DILocation(line: 107, column: 5, scope: !214)
!250 = !DILocation(line: 108, column: 17, scope: !214)
!251 = !DILocation(line: 108, column: 25, scope: !214)
!252 = !DILocation(line: 108, column: 30, scope: !214)
!253 = !DILocation(line: 108, column: 33, scope: !214)
!254 = !DILocation(line: 108, column: 41, scope: !214)
!255 = !DILocation(line: 108, column: 5, scope: !214)
!256 = !DILocation(line: 111, column: 17, scope: !214)
!257 = !DILocation(line: 111, column: 27, scope: !214)
!258 = !DILocation(line: 111, column: 25, scope: !214)
!259 = !DILocation(line: 111, column: 34, scope: !214)
!260 = !DILocation(line: 111, column: 31, scope: !214)
!261 = !DILocation(line: 111, column: 5, scope: !214)
!262 = !DILocation(line: 112, column: 17, scope: !214)
!263 = !DILocation(line: 112, column: 25, scope: !214)
!264 = !DILocation(line: 112, column: 5, scope: !214)
!265 = !DILocation(line: 115, column: 20, scope: !214)
!266 = !DILocation(line: 115, column: 10, scope: !214)
!267 = !DILocation(line: 115, column: 18, scope: !214)
!268 = !DILocation(line: 116, column: 20, scope: !214)
!269 = !DILocation(line: 116, column: 10, scope: !214)
!270 = !DILocation(line: 116, column: 18, scope: !214)
!271 = !DILocation(line: 117, column: 21, scope: !214)
!272 = !DILocation(line: 117, column: 10, scope: !214)
!273 = !DILocation(line: 117, column: 19, scope: !214)
!274 = !DILocation(line: 120, column: 10, scope: !214)
!275 = !DILocation(line: 120, column: 15, scope: !214)
!276 = !DILocation(line: 121, column: 35, scope: !214)
!277 = !DILocation(line: 121, column: 28, scope: !214)
!278 = !DILocation(line: 121, column: 10, scope: !214)
!279 = !DILocation(line: 121, column: 18, scope: !214)
!280 = !DILocation(line: 122, column: 22, scope: !214)
!281 = !DILocation(line: 122, column: 30, scope: !214)
!282 = !DILocation(line: 122, column: 17, scope: !214)
!283 = !DILocation(line: 122, column: 5, scope: !214)
!284 = !DILocation(line: 125, column: 25, scope: !214)
!285 = !DILocation(line: 125, column: 29, scope: !214)
!286 = !DILocation(line: 125, column: 18, scope: !214)
!287 = !DILocation(line: 125, column: 8, scope: !214)
!288 = !DILocation(line: 126, column: 17, scope: !214)
!289 = !DILocation(line: 126, column: 20, scope: !214)
!290 = !DILocation(line: 126, column: 5, scope: !214)
!291 = !DILocation(line: 127, column: 24, scope: !214)
!292 = !DILocation(line: 127, column: 28, scope: !214)
!293 = !DILocation(line: 127, column: 32, scope: !214)
!294 = !DILocation(line: 127, column: 5, scope: !214)
!295 = !DILocation(line: 130, column: 30, scope: !214)
!296 = !DILocation(line: 130, column: 34, scope: !214)
!297 = !DILocation(line: 130, column: 5, scope: !214)
!298 = !DILocation(line: 133, column: 5, scope: !214)
!299 = !DILocation(line: 136, column: 5, scope: !214)
!300 = !DILocation(line: 139, column: 10, scope: !214)
!301 = !DILocation(line: 139, column: 5, scope: !214)
!302 = !DILocation(line: 140, column: 15, scope: !214)
!303 = !DILocation(line: 140, column: 5, scope: !214)
!304 = !DILocation(line: 142, column: 5, scope: !214)
!305 = distinct !DISubprogram(name: "memcpy", scope: !306, file: !306, line: 12, type: !307, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !31)
!306 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!307 = !DISubroutineType(types: !308)
!308 = !{!3, !3, !309, !311}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !312, line: 46, baseType: !313)
!312 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!313 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!314 = !DILocalVariable(name: "destaddr", arg: 1, scope: !305, file: !306, line: 12, type: !3)
!315 = !DILocation(line: 12, column: 20, scope: !305)
!316 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !305, file: !306, line: 12, type: !309)
!317 = !DILocation(line: 12, column: 42, scope: !305)
!318 = !DILocalVariable(name: "len", arg: 3, scope: !305, file: !306, line: 12, type: !311)
!319 = !DILocation(line: 12, column: 58, scope: !305)
!320 = !DILocalVariable(name: "dest", scope: !305, file: !306, line: 13, type: !4)
!321 = !DILocation(line: 13, column: 9, scope: !305)
!322 = !DILocation(line: 13, column: 16, scope: !305)
!323 = !DILocalVariable(name: "src", scope: !305, file: !306, line: 14, type: !29)
!324 = !DILocation(line: 14, column: 15, scope: !305)
!325 = !DILocation(line: 14, column: 21, scope: !305)
!326 = !DILocation(line: 16, column: 3, scope: !305)
!327 = !DILocation(line: 16, column: 13, scope: !305)
!328 = !DILocation(line: 16, column: 16, scope: !305)
!329 = !DILocation(line: 17, column: 19, scope: !305)
!330 = !DILocation(line: 17, column: 15, scope: !305)
!331 = !DILocation(line: 17, column: 10, scope: !305)
!332 = !DILocation(line: 17, column: 13, scope: !305)
!333 = distinct !{!333, !326, !329, !334}
!334 = !{!"llvm.loop.mustprogress"}
!335 = !DILocation(line: 18, column: 10, scope: !305)
!336 = !DILocation(line: 18, column: 3, scope: !305)
!337 = distinct !DISubprogram(name: "memset", scope: !338, file: !338, line: 12, type: !339, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !31)
!338 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!339 = !DISubroutineType(types: !340)
!340 = !{!3, !3, !26, !311}
!341 = !DILocalVariable(name: "dst", arg: 1, scope: !337, file: !338, line: 12, type: !3)
!342 = !DILocation(line: 12, column: 20, scope: !337)
!343 = !DILocalVariable(name: "s", arg: 2, scope: !337, file: !338, line: 12, type: !26)
!344 = !DILocation(line: 12, column: 29, scope: !337)
!345 = !DILocalVariable(name: "count", arg: 3, scope: !337, file: !338, line: 12, type: !311)
!346 = !DILocation(line: 12, column: 39, scope: !337)
!347 = !DILocalVariable(name: "a", scope: !337, file: !338, line: 13, type: !4)
!348 = !DILocation(line: 13, column: 9, scope: !337)
!349 = !DILocation(line: 13, column: 13, scope: !337)
!350 = !DILocation(line: 14, column: 3, scope: !337)
!351 = !DILocation(line: 14, column: 15, scope: !337)
!352 = !DILocation(line: 14, column: 18, scope: !337)
!353 = !DILocation(line: 15, column: 12, scope: !337)
!354 = !DILocation(line: 15, column: 7, scope: !337)
!355 = !DILocation(line: 15, column: 10, scope: !337)
!356 = distinct !{!356, !350, !353, !334}
!357 = !DILocation(line: 16, column: 10, scope: !337)
!358 = !DILocation(line: 16, column: 3, scope: !337)

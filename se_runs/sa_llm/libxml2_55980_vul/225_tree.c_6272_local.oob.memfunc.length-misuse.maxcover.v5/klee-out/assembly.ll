; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/225_tree.c_6272_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/225_tree.c_6272_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNs = type { i8*, i8*, i8*, i32 }
%struct._xmlNode = type { %struct._xmlNs*, %struct._xmlDoc* }
%struct._xmlDoc = type { i8* }

@.str = private unnamed_addr constant [12 x i8] c"href_buffer\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/XML/1998/namespace\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"searching namespace\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/225_tree.c_6272_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlSearchNamespaceByHrefStub = private unnamed_addr constant [64 x i8] c"xmlNs *xmlSearchNamespaceByHrefStub(xmlNode *, const xmlChar *)\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"xml\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlNs* @xmlMalloc(i64 noundef %0) #0 !dbg !33 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !40, metadata !DIExpression()), !dbg !41
  %3 = load i64, i64* %2, align 8, !dbg !42
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !43
  %5 = bitcast i8* %4 to %struct._xmlNs*, !dbg !44
  ret %struct._xmlNs* %5, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlTreeErrMemory(i8* noundef %0) #0 !dbg !46 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !49, metadata !DIExpression()), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !52 {
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
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !83 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNode, align 8
  %3 = alloca [256 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %2, metadata !86, metadata !DIExpression()), !dbg !97
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !98, metadata !DIExpression()), !dbg !102
  %4 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !103
  store %struct._xmlNs* null, %struct._xmlNs** %4, align 8, !dbg !104
  %5 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 1, !dbg !105
  store %struct._xmlDoc* null, %struct._xmlDoc** %5, align 8, !dbg !106
  %6 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !107
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 256, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !108
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !109
  store i8 0, i8* %7, align 1, !dbg !110
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !111
  %9 = call i32 @strcmp(i8* noundef %8, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !112
  %10 = icmp eq i32 %9, 0, !dbg !113
  %11 = zext i1 %10 to i32, !dbg !113
  %12 = sext i32 %11 to i64, !dbg !112
  call void @klee_assume(i64 noundef %12), !dbg !114
  %13 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !115
  %14 = call %struct._xmlNs* @xmlSearchNamespaceByHrefStub(%struct._xmlNode* noundef %2, i8* noundef %13), !dbg !116
  %15 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !117
  %16 = load %struct._xmlNs*, %struct._xmlNs** %15, align 8, !dbg !117
  %17 = icmp ne %struct._xmlNs* %16, null, !dbg !119
  br i1 %17, label %18, label %44, !dbg !120

18:                                               ; preds = %0
  %19 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !121
  %20 = load %struct._xmlNs*, %struct._xmlNs** %19, align 8, !dbg !121
  %21 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %20, i32 0, i32 1, !dbg !124
  %22 = load i8*, i8** %21, align 8, !dbg !124
  %23 = icmp ne i8* %22, null, !dbg !125
  br i1 %23, label %24, label %29, !dbg !126

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !127
  %26 = load %struct._xmlNs*, %struct._xmlNs** %25, align 8, !dbg !127
  %27 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %26, i32 0, i32 1, !dbg !128
  %28 = load i8*, i8** %27, align 8, !dbg !128
  call void @free(i8* noundef %28) #9, !dbg !129
  br label %29, !dbg !129

29:                                               ; preds = %24, %18
  %30 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !130
  %31 = load %struct._xmlNs*, %struct._xmlNs** %30, align 8, !dbg !130
  %32 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %31, i32 0, i32 2, !dbg !132
  %33 = load i8*, i8** %32, align 8, !dbg !132
  %34 = icmp ne i8* %33, null, !dbg !133
  br i1 %34, label %35, label %40, !dbg !134

35:                                               ; preds = %29
  %36 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !135
  %37 = load %struct._xmlNs*, %struct._xmlNs** %36, align 8, !dbg !135
  %38 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %37, i32 0, i32 2, !dbg !136
  %39 = load i8*, i8** %38, align 8, !dbg !136
  call void @free(i8* noundef %39) #9, !dbg !137
  br label %40, !dbg !137

40:                                               ; preds = %35, %29
  %41 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %2, i32 0, i32 0, !dbg !138
  %42 = load %struct._xmlNs*, %struct._xmlNs** %41, align 8, !dbg !138
  %43 = bitcast %struct._xmlNs* %42 to i8*, !dbg !139
  call void @free(i8* noundef %43) #9, !dbg !140
  br label %44, !dbg !141

44:                                               ; preds = %40, %0
  ret i32 0, !dbg !142
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind readonly willreturn
declare i32 @strcmp(i8* noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlNs* @xmlSearchNamespaceByHrefStub(%struct._xmlNode* noundef %0, i8* noundef %1) #0 !dbg !143 {
  %3 = alloca %struct._xmlNs*, align 8
  %4 = alloca %struct._xmlNode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlDoc*, align 8
  %7 = alloca %struct._xmlNs*, align 8
  store %struct._xmlNode* %0, %struct._xmlNode** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNode** %4, metadata !147, metadata !DIExpression()), !dbg !148
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata %struct._xmlDoc** %6, metadata !151, metadata !DIExpression()), !dbg !152
  %8 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !153
  %9 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %8, i32 0, i32 1, !dbg !154
  %10 = load %struct._xmlDoc*, %struct._xmlDoc** %9, align 8, !dbg !154
  store %struct._xmlDoc* %10, %struct._xmlDoc** %6, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %7, metadata !155, metadata !DIExpression()), !dbg !156
  %11 = load i8*, i8** %5, align 8, !dbg !157
  %12 = icmp ne i8* %11, null, !dbg !159
  br i1 %12, label %13, label %45, !dbg !160

13:                                               ; preds = %2
  %14 = load i8*, i8** %5, align 8, !dbg !161
  %15 = call i32 @strcmp(i8* noundef %14, i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)) #10, !dbg !162
  %16 = icmp eq i32 %15, 0, !dbg !163
  br i1 %16, label %17, label %45, !dbg !164

17:                                               ; preds = %13
  %18 = call %struct._xmlNs* @xmlMalloc(i64 noundef 32), !dbg !165
  store %struct._xmlNs* %18, %struct._xmlNs** %7, align 8, !dbg !167
  %19 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !168
  %20 = icmp eq %struct._xmlNs* %19, null, !dbg !170
  br i1 %20, label %21, label %22, !dbg !171

21:                                               ; preds = %17
  call void @xmlTreeErrMemory(i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)), !dbg !172
  store %struct._xmlNs* null, %struct._xmlNs** %3, align 8, !dbg !174
  br label %46, !dbg !174

22:                                               ; preds = %17
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 72, i8* noundef getelementptr inbounds ([64 x i8], [64 x i8]* @__PRETTY_FUNCTION__.xmlSearchNamespaceByHrefStub, i64 0, i64 0)), !dbg !175
  %24 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !176
  %25 = bitcast %struct._xmlNs* %24 to i8*, !dbg !177
  %26 = call i8* @memset(i8* %25, i32 0, i64 32), !dbg !177
  %27 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !178
  %28 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %27, i32 0, i32 3, !dbg !179
  store i32 2, i32* %28, align 8, !dbg !180
  %29 = call i8* @xmlStrdup(i8* noundef getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0)), !dbg !181
  %30 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !182
  %31 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %30, i32 0, i32 1, !dbg !183
  store i8* %29, i8** %31, align 8, !dbg !184
  %32 = call i8* @xmlStrdup(i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)), !dbg !185
  %33 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !186
  %34 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %33, i32 0, i32 2, !dbg !187
  store i8* %32, i8** %34, align 8, !dbg !188
  %35 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !189
  %36 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %35, i32 0, i32 0, !dbg !190
  %37 = load %struct._xmlNs*, %struct._xmlNs** %36, align 8, !dbg !190
  %38 = bitcast %struct._xmlNs* %37 to i8*, !dbg !189
  %39 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !191
  %40 = getelementptr inbounds %struct._xmlNs, %struct._xmlNs* %39, i32 0, i32 0, !dbg !192
  store i8* %38, i8** %40, align 8, !dbg !193
  %41 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !194
  %42 = load %struct._xmlNode*, %struct._xmlNode** %4, align 8, !dbg !195
  %43 = getelementptr inbounds %struct._xmlNode, %struct._xmlNode* %42, i32 0, i32 0, !dbg !196
  store %struct._xmlNs* %41, %struct._xmlNs** %43, align 8, !dbg !197
  %44 = load %struct._xmlNs*, %struct._xmlNs** %7, align 8, !dbg !198
  store %struct._xmlNs* %44, %struct._xmlNs** %3, align 8, !dbg !199
  br label %46, !dbg !199

45:                                               ; preds = %13, %2
  store %struct._xmlNs* null, %struct._xmlNs** %3, align 8, !dbg !200
  br label %46, !dbg !200

46:                                               ; preds = %45, %22, %21
  %47 = load %struct._xmlNs*, %struct._xmlNs** %3, align 8, !dbg !201
  ret %struct._xmlNs* %47, !dbg !201
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !202 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !208, metadata !DIExpression()), !dbg !209
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !210, metadata !DIExpression()), !dbg !211
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !212, metadata !DIExpression()), !dbg !213
  call void @llvm.dbg.declare(metadata i8** %7, metadata !214, metadata !DIExpression()), !dbg !216
  %9 = load i8*, i8** %4, align 8, !dbg !217
  store i8* %9, i8** %7, align 8, !dbg !216
  call void @llvm.dbg.declare(metadata i8** %8, metadata !218, metadata !DIExpression()), !dbg !219
  %10 = load i8*, i8** %5, align 8, !dbg !220
  store i8* %10, i8** %8, align 8, !dbg !219
  br label %11, !dbg !221

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !222
  %13 = add i64 %12, -1, !dbg !222
  store i64 %13, i64* %6, align 8, !dbg !222
  %14 = icmp ugt i64 %12, 0, !dbg !223
  br i1 %14, label %15, label %21, !dbg !221

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !224
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !224
  store i8* %17, i8** %8, align 8, !dbg !224
  %18 = load i8, i8* %16, align 1, !dbg !225
  %19 = load i8*, i8** %7, align 8, !dbg !226
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !226
  store i8* %20, i8** %7, align 8, !dbg !226
  store i8 %18, i8* %19, align 1, !dbg !227
  br label %11, !dbg !221, !llvm.loop !228

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !230
  ret i8* %22, !dbg !231
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !232 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !236, metadata !DIExpression()), !dbg !237
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !238, metadata !DIExpression()), !dbg !239
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !240, metadata !DIExpression()), !dbg !241
  call void @llvm.dbg.declare(metadata i8** %7, metadata !242, metadata !DIExpression()), !dbg !243
  %8 = load i8*, i8** %4, align 8, !dbg !244
  store i8* %8, i8** %7, align 8, !dbg !243
  br label %9, !dbg !245

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !246
  %11 = add i64 %10, -1, !dbg !246
  store i64 %11, i64* %6, align 8, !dbg !246
  %12 = icmp ugt i64 %10, 0, !dbg !247
  br i1 %12, label %13, label %18, !dbg !245

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !248
  %15 = trunc i32 %14 to i8, !dbg !248
  %16 = load i8*, i8** %7, align 8, !dbg !249
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !249
  store i8* %17, i8** %7, align 8, !dbg !249
  store i8 %15, i8* %16, align 1, !dbg !250
  br label %9, !dbg !245, !llvm.loop !251

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !252
  ret i8* %19, !dbg !253
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32, !32}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/225_tree.c_6272_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "f427802d7ee036440103a0151e66019d")
!2 = !{!3, !8, !16, !10, !19}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 11, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 15, size: 256, elements: !6)
!6 = !{!7, !9, !13, !14}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 16, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "href", scope: !5, file: !1, line: 17, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !12)
!12 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !5, file: !1, line: 18, baseType: !10, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 19, baseType: !15, size: 32, offset: 192)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!21 = distinct !DICompileUnit(language: DW_LANG_C99, file: !22, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!22 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 37, type: !34, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!34 = !DISubroutineType(types: !35)
!35 = !{!3, !36}
!36 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !37, line: 46, baseType: !38)
!37 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!38 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!39 = !{}
!40 = !DILocalVariable(name: "size", arg: 1, scope: !33, file: !1, line: 37, type: !36)
!41 = !DILocation(line: 37, column: 25, scope: !33)
!42 = !DILocation(line: 38, column: 28, scope: !33)
!43 = !DILocation(line: 38, column: 21, scope: !33)
!44 = !DILocation(line: 38, column: 12, scope: !33)
!45 = !DILocation(line: 38, column: 5, scope: !33)
!46 = distinct !DISubprogram(name: "xmlTreeErrMemory", scope: !1, file: !1, line: 41, type: !47, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !16}
!49 = !DILocalVariable(name: "msg", arg: 1, scope: !46, file: !1, line: 41, type: !16)
!50 = !DILocation(line: 41, column: 35, scope: !46)
!51 = !DILocation(line: 43, column: 1, scope: !46)
!52 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 45, type: !53, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!53 = !DISubroutineType(types: !54)
!54 = !{!10, !19}
!55 = !DILocalVariable(name: "cur", arg: 1, scope: !52, file: !1, line: 45, type: !19)
!56 = !DILocation(line: 45, column: 35, scope: !52)
!57 = !DILocation(line: 46, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !52, file: !1, line: 46, column: 9)
!59 = !DILocation(line: 46, column: 13, scope: !58)
!60 = !DILocation(line: 46, column: 9, scope: !52)
!61 = !DILocation(line: 46, column: 22, scope: !58)
!62 = !DILocalVariable(name: "len", scope: !52, file: !1, line: 47, type: !36)
!63 = !DILocation(line: 47, column: 12, scope: !52)
!64 = !DILocation(line: 47, column: 39, scope: !52)
!65 = !DILocation(line: 47, column: 18, scope: !52)
!66 = !DILocation(line: 47, column: 44, scope: !52)
!67 = !DILocalVariable(name: "dup", scope: !52, file: !1, line: 48, type: !10)
!68 = !DILocation(line: 48, column: 14, scope: !52)
!69 = !DILocation(line: 48, column: 38, scope: !52)
!70 = !DILocation(line: 48, column: 31, scope: !52)
!71 = !DILocation(line: 49, column: 9, scope: !72)
!72 = distinct !DILexicalBlock(scope: !52, file: !1, line: 49, column: 9)
!73 = !DILocation(line: 49, column: 9, scope: !52)
!74 = !DILocation(line: 50, column: 16, scope: !75)
!75 = distinct !DILexicalBlock(scope: !72, file: !1, line: 49, column: 14)
!76 = !DILocation(line: 50, column: 21, scope: !75)
!77 = !DILocation(line: 50, column: 26, scope: !75)
!78 = !DILocation(line: 50, column: 9, scope: !75)
!79 = !DILocation(line: 51, column: 5, scope: !75)
!80 = !DILocation(line: 52, column: 12, scope: !52)
!81 = !DILocation(line: 52, column: 5, scope: !52)
!82 = !DILocation(line: 53, column: 1, scope: !52)
!83 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 86, type: !84, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !39)
!84 = !DISubroutineType(types: !85)
!85 = !{!15}
!86 = !DILocalVariable(name: "node", scope: !83, file: !1, line: 88, type: !87)
!87 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 12, baseType: !88)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 22, size: 128, elements: !89)
!89 = !{!90, !91}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "nsDef", scope: !88, file: !1, line: 23, baseType: !3, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !88, file: !1, line: 24, baseType: !92, size: 64, offset: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 13, baseType: !94)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 27, size: 64, elements: !95)
!95 = !{!96}
!96 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !94, file: !1, line: 28, baseType: !8, size: 64)
!97 = !DILocation(line: 88, column: 13, scope: !83)
!98 = !DILocalVariable(name: "href_buffer", scope: !83, file: !1, line: 89, type: !99)
!99 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2048, elements: !100)
!100 = !{!101}
!101 = !DISubrange(count: 256)
!102 = !DILocation(line: 89, column: 13, scope: !83)
!103 = !DILocation(line: 92, column: 10, scope: !83)
!104 = !DILocation(line: 92, column: 16, scope: !83)
!105 = !DILocation(line: 93, column: 10, scope: !83)
!106 = !DILocation(line: 93, column: 14, scope: !83)
!107 = !DILocation(line: 96, column: 24, scope: !83)
!108 = !DILocation(line: 96, column: 5, scope: !83)
!109 = !DILocation(line: 97, column: 5, scope: !83)
!110 = !DILocation(line: 97, column: 22, scope: !83)
!111 = !DILocation(line: 100, column: 38, scope: !83)
!112 = !DILocation(line: 100, column: 17, scope: !83)
!113 = !DILocation(line: 100, column: 91, scope: !83)
!114 = !DILocation(line: 100, column: 5, scope: !83)
!115 = !DILocation(line: 103, column: 41, scope: !83)
!116 = !DILocation(line: 103, column: 5, scope: !83)
!117 = !DILocation(line: 106, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !83, file: !1, line: 106, column: 9)
!119 = !DILocation(line: 106, column: 9, scope: !118)
!120 = !DILocation(line: 106, column: 9, scope: !83)
!121 = !DILocation(line: 107, column: 18, scope: !122)
!122 = distinct !DILexicalBlock(scope: !123, file: !1, line: 107, column: 13)
!123 = distinct !DILexicalBlock(scope: !118, file: !1, line: 106, column: 21)
!124 = !DILocation(line: 107, column: 25, scope: !122)
!125 = !DILocation(line: 107, column: 13, scope: !122)
!126 = !DILocation(line: 107, column: 13, scope: !123)
!127 = !DILocation(line: 107, column: 41, scope: !122)
!128 = !DILocation(line: 107, column: 48, scope: !122)
!129 = !DILocation(line: 107, column: 31, scope: !122)
!130 = !DILocation(line: 108, column: 18, scope: !131)
!131 = distinct !DILexicalBlock(scope: !123, file: !1, line: 108, column: 13)
!132 = !DILocation(line: 108, column: 25, scope: !131)
!133 = !DILocation(line: 108, column: 13, scope: !131)
!134 = !DILocation(line: 108, column: 13, scope: !123)
!135 = !DILocation(line: 108, column: 43, scope: !131)
!136 = !DILocation(line: 108, column: 50, scope: !131)
!137 = !DILocation(line: 108, column: 33, scope: !131)
!138 = !DILocation(line: 109, column: 19, scope: !123)
!139 = !DILocation(line: 109, column: 14, scope: !123)
!140 = !DILocation(line: 109, column: 9, scope: !123)
!141 = !DILocation(line: 110, column: 5, scope: !123)
!142 = !DILocation(line: 112, column: 5, scope: !83)
!143 = distinct !DISubprogram(name: "xmlSearchNamespaceByHrefStub", scope: !1, file: !1, line: 56, type: !144, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !39)
!144 = !DISubroutineType(types: !145)
!145 = !{!3, !146, !19}
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!147 = !DILocalVariable(name: "node", arg: 1, scope: !143, file: !1, line: 56, type: !146)
!148 = !DILocation(line: 56, column: 53, scope: !143)
!149 = !DILocalVariable(name: "href", arg: 2, scope: !143, file: !1, line: 56, type: !19)
!150 = !DILocation(line: 56, column: 74, scope: !143)
!151 = !DILocalVariable(name: "doc", scope: !143, file: !1, line: 57, type: !92)
!152 = !DILocation(line: 57, column: 13, scope: !143)
!153 = !DILocation(line: 57, column: 19, scope: !143)
!154 = !DILocation(line: 57, column: 25, scope: !143)
!155 = !DILocalVariable(name: "cur", scope: !143, file: !1, line: 58, type: !3)
!156 = !DILocation(line: 58, column: 12, scope: !143)
!157 = !DILocation(line: 61, column: 9, scope: !158)
!158 = distinct !DILexicalBlock(scope: !143, file: !1, line: 61, column: 9)
!159 = !DILocation(line: 61, column: 14, scope: !158)
!160 = !DILocation(line: 61, column: 22, scope: !158)
!161 = !DILocation(line: 61, column: 46, scope: !158)
!162 = !DILocation(line: 61, column: 25, scope: !158)
!163 = !DILocation(line: 61, column: 92, scope: !158)
!164 = !DILocation(line: 61, column: 9, scope: !143)
!165 = !DILocation(line: 62, column: 24, scope: !166)
!166 = distinct !DILexicalBlock(scope: !158, file: !1, line: 61, column: 98)
!167 = !DILocation(line: 62, column: 13, scope: !166)
!168 = !DILocation(line: 63, column: 13, scope: !169)
!169 = distinct !DILexicalBlock(scope: !166, file: !1, line: 63, column: 13)
!170 = !DILocation(line: 63, column: 17, scope: !169)
!171 = !DILocation(line: 63, column: 13, scope: !166)
!172 = !DILocation(line: 64, column: 13, scope: !173)
!173 = distinct !DILexicalBlock(scope: !169, file: !1, line: 63, column: 26)
!174 = !DILocation(line: 65, column: 13, scope: !173)
!175 = !DILocation(line: 72, column: 9, scope: !166)
!176 = !DILocation(line: 74, column: 16, scope: !166)
!177 = !DILocation(line: 74, column: 9, scope: !166)
!178 = !DILocation(line: 75, column: 9, scope: !166)
!179 = !DILocation(line: 75, column: 14, scope: !166)
!180 = !DILocation(line: 75, column: 19, scope: !166)
!181 = !DILocation(line: 76, column: 21, scope: !166)
!182 = !DILocation(line: 76, column: 9, scope: !166)
!183 = !DILocation(line: 76, column: 14, scope: !166)
!184 = !DILocation(line: 76, column: 19, scope: !166)
!185 = !DILocation(line: 77, column: 23, scope: !166)
!186 = !DILocation(line: 77, column: 9, scope: !166)
!187 = !DILocation(line: 77, column: 14, scope: !166)
!188 = !DILocation(line: 77, column: 21, scope: !166)
!189 = !DILocation(line: 78, column: 21, scope: !166)
!190 = !DILocation(line: 78, column: 27, scope: !166)
!191 = !DILocation(line: 78, column: 9, scope: !166)
!192 = !DILocation(line: 78, column: 14, scope: !166)
!193 = !DILocation(line: 78, column: 19, scope: !166)
!194 = !DILocation(line: 79, column: 23, scope: !166)
!195 = !DILocation(line: 79, column: 9, scope: !166)
!196 = !DILocation(line: 79, column: 15, scope: !166)
!197 = !DILocation(line: 79, column: 21, scope: !166)
!198 = !DILocation(line: 80, column: 16, scope: !166)
!199 = !DILocation(line: 80, column: 9, scope: !166)
!200 = !DILocation(line: 83, column: 5, scope: !143)
!201 = !DILocation(line: 84, column: 1, scope: !143)
!202 = distinct !DISubprogram(name: "memcpy", scope: !203, file: !203, line: 12, type: !204, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !21, retainedNodes: !39)
!203 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!204 = !DISubroutineType(types: !205)
!205 = !{!8, !8, !206, !36}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!208 = !DILocalVariable(name: "destaddr", arg: 1, scope: !202, file: !203, line: 12, type: !8)
!209 = !DILocation(line: 12, column: 20, scope: !202)
!210 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !202, file: !203, line: 12, type: !206)
!211 = !DILocation(line: 12, column: 42, scope: !202)
!212 = !DILocalVariable(name: "len", arg: 3, scope: !202, file: !203, line: 12, type: !36)
!213 = !DILocation(line: 12, column: 58, scope: !202)
!214 = !DILocalVariable(name: "dest", scope: !202, file: !203, line: 13, type: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!216 = !DILocation(line: 13, column: 9, scope: !202)
!217 = !DILocation(line: 13, column: 16, scope: !202)
!218 = !DILocalVariable(name: "src", scope: !202, file: !203, line: 14, type: !16)
!219 = !DILocation(line: 14, column: 15, scope: !202)
!220 = !DILocation(line: 14, column: 21, scope: !202)
!221 = !DILocation(line: 16, column: 3, scope: !202)
!222 = !DILocation(line: 16, column: 13, scope: !202)
!223 = !DILocation(line: 16, column: 16, scope: !202)
!224 = !DILocation(line: 17, column: 19, scope: !202)
!225 = !DILocation(line: 17, column: 15, scope: !202)
!226 = !DILocation(line: 17, column: 10, scope: !202)
!227 = !DILocation(line: 17, column: 13, scope: !202)
!228 = distinct !{!228, !221, !224, !229}
!229 = !{!"llvm.loop.mustprogress"}
!230 = !DILocation(line: 18, column: 10, scope: !202)
!231 = !DILocation(line: 18, column: 3, scope: !202)
!232 = distinct !DISubprogram(name: "memset", scope: !233, file: !233, line: 12, type: !234, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !39)
!233 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!234 = !DISubroutineType(types: !235)
!235 = !{!8, !8, !15, !36}
!236 = !DILocalVariable(name: "dst", arg: 1, scope: !232, file: !233, line: 12, type: !8)
!237 = !DILocation(line: 12, column: 20, scope: !232)
!238 = !DILocalVariable(name: "s", arg: 2, scope: !232, file: !233, line: 12, type: !15)
!239 = !DILocation(line: 12, column: 29, scope: !232)
!240 = !DILocalVariable(name: "count", arg: 3, scope: !232, file: !233, line: 12, type: !36)
!241 = !DILocation(line: 12, column: 39, scope: !232)
!242 = !DILocalVariable(name: "a", scope: !232, file: !233, line: 13, type: !215)
!243 = !DILocation(line: 13, column: 9, scope: !232)
!244 = !DILocation(line: 13, column: 13, scope: !232)
!245 = !DILocation(line: 14, column: 3, scope: !232)
!246 = !DILocation(line: 14, column: 15, scope: !232)
!247 = !DILocation(line: 14, column: 18, scope: !232)
!248 = !DILocation(line: 15, column: 12, scope: !232)
!249 = !DILocation(line: 15, column: 7, scope: !232)
!250 = !DILocation(line: 15, column: 10, scope: !232)
!251 = distinct !{!251, !245, !248, !229}
!252 = !DILocation(line: 16, column: 10, scope: !232)
!253 = !DILocation(line: 16, column: 3, scope: !232)

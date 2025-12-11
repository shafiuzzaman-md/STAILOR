; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/002_SAX2.c_1887_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/002_SAX2.c_1887_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { %struct._xmlAttr*, i32, %struct._xmlNode*, %struct._xmlDoc* }
%struct._xmlAttr = type { i32, %struct._xmlNode*, %struct._xmlDoc*, %struct._xmlNs*, %struct._xmlAttr* }
%struct._xmlNs = type {}
%struct._xmlNode = type {}
%struct._xmlDoc = type {}

@.str = private unnamed_addr constant [12 x i8] c"freeAttrsNr\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"(ctxt->freeAttrsNr > 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_62911_vul/002_SAX2.c_1887_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !42 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca %struct._xmlAttr*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %2, metadata !45, metadata !DIExpression()), !dbg !46
  %5 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !47
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !48
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %2, align 8, !dbg !46
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !49
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !49
  br i1 %8, label %10, label %9, !dbg !51

9:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !52
  br label %97, !dbg !52

10:                                               ; preds = %0
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !53
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 1, !dbg !54
  %13 = bitcast i32* %12 to i8*, !dbg !55
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0)), !dbg !56
  %14 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !57
  %15 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %14, i32 0, i32 1, !dbg !58
  %16 = load i32, i32* %15, align 8, !dbg !58
  %17 = icmp sge i32 %16, 0, !dbg !59
  %18 = zext i1 %17 to i32, !dbg !59
  %19 = sext i32 %18 to i64, !dbg !57
  call void @klee_assume(i64 noundef %19), !dbg !60
  call void @llvm.dbg.declare(metadata %struct._xmlAttr** %3, metadata !61, metadata !DIExpression()), !dbg !62
  %20 = call noalias i8* @malloc(i64 noundef 40) #7, !dbg !63
  %21 = bitcast i8* %20 to %struct._xmlAttr*, !dbg !64
  store %struct._xmlAttr* %21, %struct._xmlAttr** %3, align 8, !dbg !62
  %22 = load %struct._xmlAttr*, %struct._xmlAttr** %3, align 8, !dbg !65
  %23 = icmp ne %struct._xmlAttr* %22, null, !dbg !65
  br i1 %23, label %27, label %24, !dbg !67

24:                                               ; preds = %10
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !68
  %26 = bitcast %struct._xmlParserCtxt* %25 to i8*, !dbg !68
  call void @free(i8* noundef %26) #7, !dbg !70
  store i32 1, i32* %1, align 4, !dbg !71
  br label %97, !dbg !71

27:                                               ; preds = %10
  %28 = load %struct._xmlAttr*, %struct._xmlAttr** %3, align 8, !dbg !72
  %29 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %28, i32 0, i32 4, !dbg !73
  store %struct._xmlAttr* null, %struct._xmlAttr** %29, align 8, !dbg !74
  %30 = load %struct._xmlAttr*, %struct._xmlAttr** %3, align 8, !dbg !75
  %31 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !76
  %32 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %31, i32 0, i32 0, !dbg !77
  store %struct._xmlAttr* %30, %struct._xmlAttr** %32, align 8, !dbg !78
  %33 = call noalias i8* @malloc(i64 noundef 0) #7, !dbg !79
  %34 = bitcast i8* %33 to %struct._xmlNode*, !dbg !80
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !81
  %36 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %35, i32 0, i32 2, !dbg !82
  store %struct._xmlNode* %34, %struct._xmlNode** %36, align 8, !dbg !83
  %37 = call noalias i8* @malloc(i64 noundef 0) #7, !dbg !84
  %38 = bitcast i8* %37 to %struct._xmlDoc*, !dbg !85
  %39 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !86
  %40 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %39, i32 0, i32 3, !dbg !87
  store %struct._xmlDoc* %38, %struct._xmlDoc** %40, align 8, !dbg !88
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !89, metadata !DIExpression()), !dbg !90
  %41 = call noalias i8* @malloc(i64 noundef 0) #7, !dbg !91
  %42 = bitcast i8* %41 to %struct._xmlNs*, !dbg !92
  store %struct._xmlNs* %42, %struct._xmlNs** %4, align 8, !dbg !90
  %43 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !93
  %44 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %43, i32 0, i32 2, !dbg !95
  %45 = load %struct._xmlNode*, %struct._xmlNode** %44, align 8, !dbg !95
  %46 = icmp ne %struct._xmlNode* %45, null, !dbg !93
  br i1 %46, label %47, label %55, !dbg !96

47:                                               ; preds = %27
  %48 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !97
  %49 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %48, i32 0, i32 3, !dbg !98
  %50 = load %struct._xmlDoc*, %struct._xmlDoc** %49, align 8, !dbg !98
  %51 = icmp ne %struct._xmlDoc* %50, null, !dbg !97
  br i1 %51, label %52, label %55, !dbg !99

52:                                               ; preds = %47
  %53 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !100
  %54 = icmp ne %struct._xmlNs* %53, null, !dbg !100
  br i1 %54, label %70, label %55, !dbg !101

55:                                               ; preds = %52, %47, %27
  %56 = load %struct._xmlAttr*, %struct._xmlAttr** %3, align 8, !dbg !102
  %57 = bitcast %struct._xmlAttr* %56 to i8*, !dbg !102
  call void @free(i8* noundef %57) #7, !dbg !104
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !105
  %59 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %58, i32 0, i32 2, !dbg !106
  %60 = load %struct._xmlNode*, %struct._xmlNode** %59, align 8, !dbg !106
  %61 = bitcast %struct._xmlNode* %60 to i8*, !dbg !105
  call void @free(i8* noundef %61) #7, !dbg !107
  %62 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !108
  %63 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %62, i32 0, i32 3, !dbg !109
  %64 = load %struct._xmlDoc*, %struct._xmlDoc** %63, align 8, !dbg !109
  %65 = bitcast %struct._xmlDoc* %64 to i8*, !dbg !108
  call void @free(i8* noundef %65) #7, !dbg !110
  %66 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !111
  %67 = bitcast %struct._xmlNs* %66 to i8*, !dbg !111
  call void @free(i8* noundef %67) #7, !dbg !112
  %68 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !113
  %69 = bitcast %struct._xmlParserCtxt* %68 to i8*, !dbg !113
  call void @free(i8* noundef %69) #7, !dbg !114
  store i32 1, i32* %1, align 4, !dbg !115
  br label %97, !dbg !115

70:                                               ; preds = %52
  %71 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !116
  %72 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %71, i32 0, i32 1, !dbg !116
  %73 = load i32, i32* %72, align 8, !dbg !116
  %74 = icmp sgt i32 %73, 0, !dbg !116
  br i1 %74, label %75, label %77, !dbg !116

75:                                               ; preds = %70
  br i1 true, label %76, label %77, !dbg !116

76:                                               ; preds = %75
  br label %79, !dbg !116

77:                                               ; preds = %75, %70
  %78 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !116
  br label %79, !dbg !116

79:                                               ; preds = %77, %76
  %80 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.3, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !117
  %81 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !118
  %82 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !119
  call void @xmlSAX2AttributeInternal(%struct._xmlParserCtxt* noundef %81, %struct._xmlNs* noundef %82), !dbg !120
  %83 = load %struct._xmlAttr*, %struct._xmlAttr** %3, align 8, !dbg !121
  %84 = bitcast %struct._xmlAttr* %83 to i8*, !dbg !121
  call void @free(i8* noundef %84) #7, !dbg !122
  %85 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !123
  %86 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %85, i32 0, i32 2, !dbg !124
  %87 = load %struct._xmlNode*, %struct._xmlNode** %86, align 8, !dbg !124
  %88 = bitcast %struct._xmlNode* %87 to i8*, !dbg !123
  call void @free(i8* noundef %88) #7, !dbg !125
  %89 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !126
  %90 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %89, i32 0, i32 3, !dbg !127
  %91 = load %struct._xmlDoc*, %struct._xmlDoc** %90, align 8, !dbg !127
  %92 = bitcast %struct._xmlDoc* %91 to i8*, !dbg !126
  call void @free(i8* noundef %92) #7, !dbg !128
  %93 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !129
  %94 = bitcast %struct._xmlNs* %93 to i8*, !dbg !129
  call void @free(i8* noundef %94) #7, !dbg !130
  %95 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !131
  %96 = bitcast %struct._xmlParserCtxt* %95 to i8*, !dbg !131
  call void @free(i8* noundef %96) #7, !dbg !132
  store i32 0, i32* %1, align 4, !dbg !133
  br label %97, !dbg !133

97:                                               ; preds = %79, %55, %24, %9
  %98 = load i32, i32* %1, align 4, !dbg !134
  ret i32 %98, !dbg !134
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSAX2AttributeInternal(%struct._xmlParserCtxt* noundef %0, %struct._xmlNs* noundef %1) #0 !dbg !135 {
  %3 = alloca %struct._xmlParserCtxt*, align 8
  %4 = alloca %struct._xmlNs*, align 8
  %5 = alloca %struct._xmlAttr*, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %3, metadata !138, metadata !DIExpression()), !dbg !139
  store %struct._xmlNs* %1, %struct._xmlNs** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNs** %4, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata %struct._xmlAttr** %5, metadata !142, metadata !DIExpression()), !dbg !143
  %6 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !144
  %7 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %6, i32 0, i32 0, !dbg !146
  %8 = load %struct._xmlAttr*, %struct._xmlAttr** %7, align 8, !dbg !146
  %9 = icmp ne %struct._xmlAttr* %8, null, !dbg !147
  br i1 %9, label %10, label %41, !dbg !148

10:                                               ; preds = %2
  %11 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !149
  %12 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %11, i32 0, i32 0, !dbg !151
  %13 = load %struct._xmlAttr*, %struct._xmlAttr** %12, align 8, !dbg !151
  store %struct._xmlAttr* %13, %struct._xmlAttr** %5, align 8, !dbg !152
  %14 = load %struct._xmlAttr*, %struct._xmlAttr** %5, align 8, !dbg !153
  %15 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %14, i32 0, i32 4, !dbg !154
  %16 = load %struct._xmlAttr*, %struct._xmlAttr** %15, align 8, !dbg !154
  %17 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !155
  %18 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %17, i32 0, i32 0, !dbg !156
  store %struct._xmlAttr* %16, %struct._xmlAttr** %18, align 8, !dbg !157
  %19 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !158
  %20 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %19, i32 0, i32 1, !dbg !159
  %21 = load i32, i32* %20, align 8, !dbg !160
  %22 = add nsw i32 %21, -1, !dbg !160
  store i32 %22, i32* %20, align 8, !dbg !160
  %23 = load %struct._xmlAttr*, %struct._xmlAttr** %5, align 8, !dbg !161
  %24 = bitcast %struct._xmlAttr* %23 to i8*, !dbg !162
  %25 = call i8* @memset(i8* %24, i32 0, i64 40), !dbg !162
  %26 = load %struct._xmlAttr*, %struct._xmlAttr** %5, align 8, !dbg !163
  %27 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %26, i32 0, i32 0, !dbg !164
  store i32 1, i32* %27, align 8, !dbg !165
  %28 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !166
  %29 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %28, i32 0, i32 2, !dbg !167
  %30 = load %struct._xmlNode*, %struct._xmlNode** %29, align 8, !dbg !167
  %31 = load %struct._xmlAttr*, %struct._xmlAttr** %5, align 8, !dbg !168
  %32 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %31, i32 0, i32 1, !dbg !169
  store %struct._xmlNode* %30, %struct._xmlNode** %32, align 8, !dbg !170
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %3, align 8, !dbg !171
  %34 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %33, i32 0, i32 3, !dbg !172
  %35 = load %struct._xmlDoc*, %struct._xmlDoc** %34, align 8, !dbg !172
  %36 = load %struct._xmlAttr*, %struct._xmlAttr** %5, align 8, !dbg !173
  %37 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %36, i32 0, i32 2, !dbg !174
  store %struct._xmlDoc* %35, %struct._xmlDoc** %37, align 8, !dbg !175
  %38 = load %struct._xmlNs*, %struct._xmlNs** %4, align 8, !dbg !176
  %39 = load %struct._xmlAttr*, %struct._xmlAttr** %5, align 8, !dbg !177
  %40 = getelementptr inbounds %struct._xmlAttr, %struct._xmlAttr* %39, i32 0, i32 3, !dbg !178
  store %struct._xmlNs* %38, %struct._xmlNs** %40, align 8, !dbg !179
  br label %41, !dbg !180

41:                                               ; preds = %10, %2
  ret void, !dbg !181
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !182 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !189, metadata !DIExpression()), !dbg !190
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !191, metadata !DIExpression()), !dbg !192
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i8** %7, metadata !195, metadata !DIExpression()), !dbg !198
  %8 = load i8*, i8** %4, align 8, !dbg !199
  store i8* %8, i8** %7, align 8, !dbg !198
  br label %9, !dbg !200

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !201
  %11 = add i64 %10, -1, !dbg !201
  store i64 %11, i64* %6, align 8, !dbg !201
  %12 = icmp ugt i64 %10, 0, !dbg !202
  br i1 %12, label %13, label %18, !dbg !200

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !203
  %15 = trunc i32 %14 to i8, !dbg !203
  %16 = load i8*, i8** %7, align 8, !dbg !204
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !204
  store i8* %17, i8** %7, align 8, !dbg !204
  store i8 %15, i8* %16, align 1, !dbg !205
  br label %9, !dbg !200, !llvm.loop !206

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !208
  ret i8* %19, !dbg !209
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41, !41}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/002_SAX2.c_1887_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "420dd68b621f43f6ee0ae018e8b0cac8")
!2 = !{!3, !8, !15, !20, !24, !31}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 14, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 36, size: 256, elements: !6)
!6 = !{!7, !28, !29, !30}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrs", scope: !5, file: !1, line: 37, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttr", file: !1, line: 10, baseType: !10)
!10 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttr", file: !1, line: 16, size: 320, elements: !11)
!11 = !{!12, !14, !19, !23, !27}
!12 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !10, file: !1, line: 17, baseType: !13, size: 32)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !10, file: !1, line: 18, baseType: !15, size: 64, offset: 64)
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNode", file: !1, line: 11, baseType: !17)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", file: !1, line: 24, elements: !18)
!18 = !{}
!19 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !10, file: !1, line: 19, baseType: !20, size: 64, offset: 128)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDoc", file: !1, line: 12, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDoc", file: !1, line: 28, elements: !18)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !10, file: !1, line: 20, baseType: !24, size: 64, offset: 192)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNs", file: !1, line: 13, baseType: !26)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", file: !1, line: 32, elements: !18)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !10, file: !1, line: 21, baseType: !8, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "freeAttrsNr", scope: !5, file: !1, line: 38, baseType: !13, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !5, file: !1, line: 39, baseType: !15, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "myDoc", scope: !5, file: !1, line: 40, baseType: !20, size: 64, offset: 192)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!34 = !{i32 7, !"Dwarf Version", i32 5}
!35 = !{i32 2, !"Debug Info Version", i32 3}
!36 = !{i32 1, !"wchar_size", i32 4}
!37 = !{i32 7, !"PIC Level", i32 2}
!38 = !{i32 7, !"PIE Level", i32 2}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"Ubuntu clang version 14.0.6"}
!42 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !43, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!43 = !DISubroutineType(types: !44)
!44 = !{!13}
!45 = !DILocalVariable(name: "ctxt", scope: !42, file: !1, line: 48, type: !3)
!46 = !DILocation(line: 48, column: 20, scope: !42)
!47 = !DILocation(line: 48, column: 43, scope: !42)
!48 = !DILocation(line: 48, column: 27, scope: !42)
!49 = !DILocation(line: 49, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !42, file: !1, line: 49, column: 9)
!51 = !DILocation(line: 49, column: 9, scope: !42)
!52 = !DILocation(line: 49, column: 16, scope: !50)
!53 = !DILocation(line: 52, column: 25, scope: !42)
!54 = !DILocation(line: 52, column: 31, scope: !42)
!55 = !DILocation(line: 52, column: 24, scope: !42)
!56 = !DILocation(line: 52, column: 5, scope: !42)
!57 = !DILocation(line: 55, column: 17, scope: !42)
!58 = !DILocation(line: 55, column: 23, scope: !42)
!59 = !DILocation(line: 55, column: 35, scope: !42)
!60 = !DILocation(line: 55, column: 5, scope: !42)
!61 = !DILocalVariable(name: "attr", scope: !42, file: !1, line: 58, type: !8)
!62 = !DILocation(line: 58, column: 14, scope: !42)
!63 = !DILocation(line: 58, column: 31, scope: !42)
!64 = !DILocation(line: 58, column: 21, scope: !42)
!65 = !DILocation(line: 59, column: 10, scope: !66)
!66 = distinct !DILexicalBlock(scope: !42, file: !1, line: 59, column: 9)
!67 = !DILocation(line: 59, column: 9, scope: !42)
!68 = !DILocation(line: 60, column: 14, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 59, column: 16)
!70 = !DILocation(line: 60, column: 9, scope: !69)
!71 = !DILocation(line: 61, column: 9, scope: !69)
!72 = !DILocation(line: 65, column: 5, scope: !42)
!73 = !DILocation(line: 65, column: 11, scope: !42)
!74 = !DILocation(line: 65, column: 16, scope: !42)
!75 = !DILocation(line: 66, column: 23, scope: !42)
!76 = !DILocation(line: 66, column: 5, scope: !42)
!77 = !DILocation(line: 66, column: 11, scope: !42)
!78 = !DILocation(line: 66, column: 21, scope: !42)
!79 = !DILocation(line: 69, column: 28, scope: !42)
!80 = !DILocation(line: 69, column: 18, scope: !42)
!81 = !DILocation(line: 69, column: 5, scope: !42)
!82 = !DILocation(line: 69, column: 11, scope: !42)
!83 = !DILocation(line: 69, column: 16, scope: !42)
!84 = !DILocation(line: 70, column: 28, scope: !42)
!85 = !DILocation(line: 70, column: 19, scope: !42)
!86 = !DILocation(line: 70, column: 5, scope: !42)
!87 = !DILocation(line: 70, column: 11, scope: !42)
!88 = !DILocation(line: 70, column: 17, scope: !42)
!89 = !DILocalVariable(name: "namespace", scope: !42, file: !1, line: 71, type: !24)
!90 = !DILocation(line: 71, column: 12, scope: !42)
!91 = !DILocation(line: 71, column: 32, scope: !42)
!92 = !DILocation(line: 71, column: 24, scope: !42)
!93 = !DILocation(line: 73, column: 10, scope: !94)
!94 = distinct !DILexicalBlock(scope: !42, file: !1, line: 73, column: 9)
!95 = !DILocation(line: 73, column: 16, scope: !94)
!96 = !DILocation(line: 73, column: 21, scope: !94)
!97 = !DILocation(line: 73, column: 25, scope: !94)
!98 = !DILocation(line: 73, column: 31, scope: !94)
!99 = !DILocation(line: 73, column: 37, scope: !94)
!100 = !DILocation(line: 73, column: 41, scope: !94)
!101 = !DILocation(line: 73, column: 9, scope: !42)
!102 = !DILocation(line: 74, column: 14, scope: !103)
!103 = distinct !DILexicalBlock(scope: !94, file: !1, line: 73, column: 52)
!104 = !DILocation(line: 74, column: 9, scope: !103)
!105 = !DILocation(line: 75, column: 14, scope: !103)
!106 = !DILocation(line: 75, column: 20, scope: !103)
!107 = !DILocation(line: 75, column: 9, scope: !103)
!108 = !DILocation(line: 76, column: 14, scope: !103)
!109 = !DILocation(line: 76, column: 20, scope: !103)
!110 = !DILocation(line: 76, column: 9, scope: !103)
!111 = !DILocation(line: 77, column: 14, scope: !103)
!112 = !DILocation(line: 77, column: 9, scope: !103)
!113 = !DILocation(line: 78, column: 14, scope: !103)
!114 = !DILocation(line: 78, column: 9, scope: !103)
!115 = !DILocation(line: 79, column: 9, scope: !103)
!116 = !DILocation(line: 84, column: 5, scope: !42)
!117 = !DILocation(line: 87, column: 5, scope: !42)
!118 = !DILocation(line: 90, column: 30, scope: !42)
!119 = !DILocation(line: 90, column: 36, scope: !42)
!120 = !DILocation(line: 90, column: 5, scope: !42)
!121 = !DILocation(line: 93, column: 10, scope: !42)
!122 = !DILocation(line: 93, column: 5, scope: !42)
!123 = !DILocation(line: 94, column: 10, scope: !42)
!124 = !DILocation(line: 94, column: 16, scope: !42)
!125 = !DILocation(line: 94, column: 5, scope: !42)
!126 = !DILocation(line: 95, column: 10, scope: !42)
!127 = !DILocation(line: 95, column: 16, scope: !42)
!128 = !DILocation(line: 95, column: 5, scope: !42)
!129 = !DILocation(line: 96, column: 10, scope: !42)
!130 = !DILocation(line: 96, column: 5, scope: !42)
!131 = !DILocation(line: 97, column: 10, scope: !42)
!132 = !DILocation(line: 97, column: 5, scope: !42)
!133 = !DILocation(line: 99, column: 5, scope: !42)
!134 = !DILocation(line: 100, column: 1, scope: !42)
!135 = distinct !DISubprogram(name: "xmlSAX2AttributeInternal", scope: !1, file: !1, line: 103, type: !136, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !18)
!136 = !DISubroutineType(types: !137)
!137 = !{null, !3, !24}
!138 = !DILocalVariable(name: "ctxt", arg: 1, scope: !135, file: !1, line: 103, type: !3)
!139 = !DILocation(line: 103, column: 46, scope: !135)
!140 = !DILocalVariable(name: "namespace", arg: 2, scope: !135, file: !1, line: 103, type: !24)
!141 = !DILocation(line: 103, column: 59, scope: !135)
!142 = !DILocalVariable(name: "ret", scope: !135, file: !1, line: 104, type: !8)
!143 = !DILocation(line: 104, column: 14, scope: !135)
!144 = !DILocation(line: 107, column: 9, scope: !145)
!145 = distinct !DILexicalBlock(scope: !135, file: !1, line: 107, column: 9)
!146 = !DILocation(line: 107, column: 15, scope: !145)
!147 = !DILocation(line: 107, column: 25, scope: !145)
!148 = !DILocation(line: 107, column: 9, scope: !135)
!149 = !DILocation(line: 108, column: 15, scope: !150)
!150 = distinct !DILexicalBlock(scope: !145, file: !1, line: 107, column: 34)
!151 = !DILocation(line: 108, column: 21, scope: !150)
!152 = !DILocation(line: 108, column: 13, scope: !150)
!153 = !DILocation(line: 109, column: 27, scope: !150)
!154 = !DILocation(line: 109, column: 32, scope: !150)
!155 = !DILocation(line: 109, column: 9, scope: !150)
!156 = !DILocation(line: 109, column: 15, scope: !150)
!157 = !DILocation(line: 109, column: 25, scope: !150)
!158 = !DILocation(line: 110, column: 9, scope: !150)
!159 = !DILocation(line: 110, column: 15, scope: !150)
!160 = !DILocation(line: 110, column: 26, scope: !150)
!161 = !DILocation(line: 111, column: 16, scope: !150)
!162 = !DILocation(line: 111, column: 9, scope: !150)
!163 = !DILocation(line: 112, column: 9, scope: !150)
!164 = !DILocation(line: 112, column: 14, scope: !150)
!165 = !DILocation(line: 112, column: 19, scope: !150)
!166 = !DILocation(line: 113, column: 23, scope: !150)
!167 = !DILocation(line: 113, column: 29, scope: !150)
!168 = !DILocation(line: 113, column: 9, scope: !150)
!169 = !DILocation(line: 113, column: 14, scope: !150)
!170 = !DILocation(line: 113, column: 21, scope: !150)
!171 = !DILocation(line: 114, column: 20, scope: !150)
!172 = !DILocation(line: 114, column: 26, scope: !150)
!173 = !DILocation(line: 114, column: 9, scope: !150)
!174 = !DILocation(line: 114, column: 14, scope: !150)
!175 = !DILocation(line: 114, column: 18, scope: !150)
!176 = !DILocation(line: 115, column: 19, scope: !150)
!177 = !DILocation(line: 115, column: 9, scope: !150)
!178 = !DILocation(line: 115, column: 14, scope: !150)
!179 = !DILocation(line: 115, column: 17, scope: !150)
!180 = !DILocation(line: 116, column: 5, scope: !150)
!181 = !DILocation(line: 117, column: 1, scope: !135)
!182 = distinct !DISubprogram(name: "memset", scope: !183, file: !183, line: 12, type: !184, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !18)
!183 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!184 = !DISubroutineType(types: !185)
!185 = !{!31, !31, !13, !186}
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !187, line: 46, baseType: !188)
!187 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!188 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!189 = !DILocalVariable(name: "dst", arg: 1, scope: !182, file: !183, line: 12, type: !31)
!190 = !DILocation(line: 12, column: 20, scope: !182)
!191 = !DILocalVariable(name: "s", arg: 2, scope: !182, file: !183, line: 12, type: !13)
!192 = !DILocation(line: 12, column: 29, scope: !182)
!193 = !DILocalVariable(name: "count", arg: 3, scope: !182, file: !183, line: 12, type: !186)
!194 = !DILocation(line: 12, column: 39, scope: !182)
!195 = !DILocalVariable(name: "a", scope: !182, file: !183, line: 13, type: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!198 = !DILocation(line: 13, column: 9, scope: !182)
!199 = !DILocation(line: 13, column: 13, scope: !182)
!200 = !DILocation(line: 14, column: 3, scope: !182)
!201 = !DILocation(line: 14, column: 15, scope: !182)
!202 = !DILocation(line: 14, column: 18, scope: !182)
!203 = !DILocation(line: 15, column: 12, scope: !182)
!204 = !DILocation(line: 15, column: 7, scope: !182)
!205 = !DILocation(line: 15, column: 10, scope: !182)
!206 = distinct !{!206, !200, !203, !207}
!207 = !{!"llvm.loop.mustprogress"}
!208 = !DILocation(line: 16, column: 10, scope: !182)
!209 = !DILocation(line: 16, column: 3, scope: !182)

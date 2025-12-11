; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/296_xmlschemas.c_25155_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/296_xmlschemas.c_25155_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaValidCtxt = type { i32, %struct.xmlSchemaAttrInfo* }
%struct.xmlSchemaAttrInfo = type { i8*, [64 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"num_attrs\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"val_is_null\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"(memset_end <= array_end) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [110 x i8] c"se_runs/sa_llm/libxml2_62911_vul/296_xmlschemas.c_25155_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaFreeValue(i8* noundef %0) #0 !dbg !25 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !29, metadata !DIExpression()), !dbg !30
  %3 = load i8*, i8** %2, align 8, !dbg !31
  ret void, !dbg !32
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaFreeAttributeInfo(%struct.xmlSchemaValidCtxt* noundef %0) #0 !dbg !33 {
  %2 = alloca %struct.xmlSchemaValidCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.xmlSchemaAttrInfo*, align 8
  store %struct.xmlSchemaValidCtxt* %0, %struct.xmlSchemaValidCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaValidCtxt** %2, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i32* %3, metadata !45, metadata !DIExpression()), !dbg !46
  %5 = load %struct.xmlSchemaValidCtxt*, %struct.xmlSchemaValidCtxt** %2, align 8, !dbg !47
  %6 = icmp eq %struct.xmlSchemaValidCtxt* %5, null, !dbg !49
  br i1 %6, label %7, label %8, !dbg !50

7:                                                ; preds = %1
  br label %47, !dbg !51

8:                                                ; preds = %1
  %9 = load %struct.xmlSchemaValidCtxt*, %struct.xmlSchemaValidCtxt** %2, align 8, !dbg !52
  %10 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %9, i32 0, i32 1, !dbg !54
  %11 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %10, align 8, !dbg !54
  %12 = icmp ne %struct.xmlSchemaAttrInfo* %11, null, !dbg !55
  br i1 %12, label %13, label %47, !dbg !56

13:                                               ; preds = %8
  store i32 0, i32* %3, align 4, !dbg !57
  br label %14, !dbg !60

14:                                               ; preds = %41, %13
  %15 = load i32, i32* %3, align 4, !dbg !61
  %16 = load %struct.xmlSchemaValidCtxt*, %struct.xmlSchemaValidCtxt** %2, align 8, !dbg !63
  %17 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %16, i32 0, i32 0, !dbg !64
  %18 = load i32, i32* %17, align 8, !dbg !64
  %19 = icmp slt i32 %15, %18, !dbg !65
  br i1 %19, label %20, label %44, !dbg !66

20:                                               ; preds = %14
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaAttrInfo** %4, metadata !67, metadata !DIExpression()), !dbg !69
  %21 = load %struct.xmlSchemaValidCtxt*, %struct.xmlSchemaValidCtxt** %2, align 8, !dbg !70
  %22 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %21, i32 0, i32 1, !dbg !71
  %23 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %22, align 8, !dbg !71
  %24 = load i32, i32* %3, align 4, !dbg !72
  %25 = sext i32 %24 to i64, !dbg !70
  %26 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %23, i64 %25, !dbg !70
  store %struct.xmlSchemaAttrInfo* %26, %struct.xmlSchemaAttrInfo** %4, align 8, !dbg !69
  %27 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %4, align 8, !dbg !73
  %28 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %27, i32 0, i32 0, !dbg !75
  %29 = load i8*, i8** %28, align 8, !dbg !75
  %30 = icmp ne i8* %29, null, !dbg !76
  br i1 %30, label %31, label %37, !dbg !77

31:                                               ; preds = %20
  %32 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %4, align 8, !dbg !78
  %33 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %32, i32 0, i32 0, !dbg !80
  %34 = load i8*, i8** %33, align 8, !dbg !80
  call void @xmlSchemaFreeValue(i8* noundef %34), !dbg !81
  %35 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %4, align 8, !dbg !82
  %36 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %35, i32 0, i32 0, !dbg !83
  store i8* null, i8** %36, align 8, !dbg !84
  br label %37, !dbg !85

37:                                               ; preds = %31, %20
  %38 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %4, align 8, !dbg !86
  %39 = bitcast %struct.xmlSchemaAttrInfo* %38 to i8*, !dbg !87
  %40 = call i8* @memset(i8* %39, i32 0, i64 72), !dbg !87
  br label %41, !dbg !88

41:                                               ; preds = %37
  %42 = load i32, i32* %3, align 4, !dbg !89
  %43 = add nsw i32 %42, 1, !dbg !89
  store i32 %43, i32* %3, align 4, !dbg !89
  br label %14, !dbg !90, !llvm.loop !91

44:                                               ; preds = %14
  %45 = load %struct.xmlSchemaValidCtxt*, %struct.xmlSchemaValidCtxt** %2, align 8, !dbg !94
  %46 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %45, i32 0, i32 0, !dbg !95
  store i32 0, i32* %46, align 8, !dbg !96
  br label %47, !dbg !97

47:                                               ; preds = %7, %44, %8
  ret void, !dbg !98
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlSchemaValidCtxt, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.xmlSchemaAttrInfo*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaValidCtxt* %2, metadata !102, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %3, metadata !104, metadata !DIExpression()), !dbg !105
  %9 = bitcast i32* %3 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !107
  %10 = load i32, i32* %3, align 4, !dbg !108
  %11 = icmp sge i32 %10, 0, !dbg !109
  %12 = zext i1 %11 to i32, !dbg !109
  %13 = sext i32 %12 to i64, !dbg !108
  call void @klee_assume(i64 noundef %13), !dbg !110
  %14 = load i32, i32* %3, align 4, !dbg !111
  %15 = icmp sle i32 %14, 100, !dbg !112
  %16 = zext i1 %15 to i32, !dbg !112
  %17 = sext i32 %16 to i64, !dbg !111
  call void @klee_assume(i64 noundef %17), !dbg !113
  %18 = load i32, i32* %3, align 4, !dbg !114
  %19 = sext i32 %18 to i64, !dbg !114
  %20 = mul i64 %19, 72, !dbg !115
  %21 = call noalias i8* @malloc(i64 noundef %20) #7, !dbg !116
  %22 = bitcast i8* %21 to %struct.xmlSchemaAttrInfo*, !dbg !117
  %23 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !118
  store %struct.xmlSchemaAttrInfo* %22, %struct.xmlSchemaAttrInfo** %23, align 8, !dbg !119
  %24 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !120
  %25 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %24, align 8, !dbg !120
  %26 = icmp eq %struct.xmlSchemaAttrInfo* %25, null, !dbg !122
  br i1 %26, label %27, label %28, !dbg !123

27:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !124
  br label %104, !dbg !124

28:                                               ; preds = %0
  %29 = load i32, i32* %3, align 4, !dbg !126
  %30 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 0, !dbg !127
  store i32 %29, i32* %30, align 8, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %4, metadata !129, metadata !DIExpression()), !dbg !131
  store i32 0, i32* %4, align 4, !dbg !131
  br label %31, !dbg !132

31:                                               ; preds = %64, %28
  %32 = load i32, i32* %4, align 4, !dbg !133
  %33 = load i32, i32* %3, align 4, !dbg !135
  %34 = icmp slt i32 %32, %33, !dbg !136
  br i1 %34, label %35, label %67, !dbg !137

35:                                               ; preds = %31
  call void @llvm.dbg.declare(metadata i32* %5, metadata !138, metadata !DIExpression()), !dbg !140
  %36 = bitcast i32* %5 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  %37 = load i32, i32* %5, align 4, !dbg !143
  %38 = icmp eq i32 %37, 0, !dbg !144
  br i1 %38, label %42, label %39, !dbg !145

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4, !dbg !146
  %41 = icmp eq i32 %40, 1, !dbg !147
  br label %42, !dbg !145

42:                                               ; preds = %39, %35
  %43 = phi i1 [ true, %35 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32, !dbg !145
  %45 = sext i32 %44 to i64, !dbg !143
  call void @klee_assume(i64 noundef %45), !dbg !148
  %46 = load i32, i32* %5, align 4, !dbg !149
  %47 = icmp ne i32 %46, 0, !dbg !149
  br i1 %47, label %48, label %55, !dbg !151

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !152
  %50 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %49, align 8, !dbg !152
  %51 = load i32, i32* %4, align 4, !dbg !154
  %52 = sext i32 %51 to i64, !dbg !155
  %53 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %50, i64 %52, !dbg !155
  %54 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %53, i32 0, i32 0, !dbg !156
  store i8* null, i8** %54, align 8, !dbg !157
  br label %63, !dbg !158

55:                                               ; preds = %42
  %56 = call noalias i8* @malloc(i64 noundef 1) #7, !dbg !159
  %57 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !161
  %58 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %57, align 8, !dbg !161
  %59 = load i32, i32* %4, align 4, !dbg !162
  %60 = sext i32 %59 to i64, !dbg !163
  %61 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %58, i64 %60, !dbg !163
  %62 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %61, i32 0, i32 0, !dbg !164
  store i8* %56, i8** %62, align 8, !dbg !165
  br label %63

63:                                               ; preds = %55, %48
  br label %64, !dbg !166

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4, !dbg !167
  %66 = add nsw i32 %65, 1, !dbg !167
  store i32 %66, i32* %4, align 4, !dbg !167
  br label %31, !dbg !168, !llvm.loop !169

67:                                               ; preds = %31
  call void @xmlSchemaFreeAttributeInfo(%struct.xmlSchemaValidCtxt* noundef %2), !dbg !171
  %68 = load i32, i32* %3, align 4, !dbg !172
  %69 = icmp sgt i32 %68, 0, !dbg !174
  br i1 %69, label %70, label %100, !dbg !175

70:                                               ; preds = %67
  %71 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !176
  %72 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %71, align 8, !dbg !176
  %73 = icmp ne %struct.xmlSchemaAttrInfo* %72, null, !dbg !177
  br i1 %73, label %74, label %100, !dbg !178

74:                                               ; preds = %70
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaAttrInfo** %6, metadata !179, metadata !DIExpression()), !dbg !181
  %75 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !182
  %76 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %75, align 8, !dbg !182
  %77 = load i32, i32* %3, align 4, !dbg !183
  %78 = sub nsw i32 %77, 1, !dbg !184
  %79 = sext i32 %78 to i64, !dbg !185
  %80 = getelementptr inbounds %struct.xmlSchemaAttrInfo, %struct.xmlSchemaAttrInfo* %76, i64 %79, !dbg !185
  store %struct.xmlSchemaAttrInfo* %80, %struct.xmlSchemaAttrInfo** %6, align 8, !dbg !181
  call void @llvm.dbg.declare(metadata i8** %7, metadata !186, metadata !DIExpression()), !dbg !187
  %81 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %6, align 8, !dbg !188
  %82 = bitcast %struct.xmlSchemaAttrInfo* %81 to i8*, !dbg !189
  %83 = getelementptr inbounds i8, i8* %82, i64 72, !dbg !190
  store i8* %83, i8** %7, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i8** %8, metadata !191, metadata !DIExpression()), !dbg !192
  %84 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !193
  %85 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %84, align 8, !dbg !193
  %86 = bitcast %struct.xmlSchemaAttrInfo* %85 to i8*, !dbg !194
  %87 = load i32, i32* %3, align 4, !dbg !195
  %88 = sext i32 %87 to i64, !dbg !195
  %89 = mul i64 %88, 72, !dbg !196
  %90 = getelementptr inbounds i8, i8* %86, i64 %89, !dbg !197
  store i8* %90, i8** %8, align 8, !dbg !192
  %91 = load i8*, i8** %7, align 8, !dbg !198
  %92 = load i8*, i8** %8, align 8, !dbg !198
  %93 = icmp ule i8* %91, %92, !dbg !198
  br i1 %93, label %94, label %96, !dbg !198

94:                                               ; preds = %74
  br i1 true, label %95, label %96, !dbg !198

95:                                               ; preds = %94
  br label %98, !dbg !198

96:                                               ; preds = %94, %74
  %97 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !198
  br label %98, !dbg !198

98:                                               ; preds = %96, %95
  %99 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([110 x i8], [110 x i8]* @.str.4, i64 0, i64 0), i32 noundef 95, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !199
  br label %100, !dbg !200

100:                                              ; preds = %98, %70, %67
  %101 = getelementptr inbounds %struct.xmlSchemaValidCtxt, %struct.xmlSchemaValidCtxt* %2, i32 0, i32 1, !dbg !201
  %102 = load %struct.xmlSchemaAttrInfo*, %struct.xmlSchemaAttrInfo** %101, align 8, !dbg !201
  %103 = bitcast %struct.xmlSchemaAttrInfo* %102 to i8*, !dbg !202
  call void @free(i8* noundef %103) #7, !dbg !203
  store i32 0, i32* %1, align 4, !dbg !204
  br label %104, !dbg !204

104:                                              ; preds = %100, %27
  %105 = load i32, i32* %1, align 4, !dbg !205
  ret i32 %105, !dbg !205
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !206 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !213, metadata !DIExpression()), !dbg !214
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !215, metadata !DIExpression()), !dbg !216
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !217, metadata !DIExpression()), !dbg !218
  call void @llvm.dbg.declare(metadata i8** %7, metadata !219, metadata !DIExpression()), !dbg !220
  %8 = load i8*, i8** %4, align 8, !dbg !221
  store i8* %8, i8** %7, align 8, !dbg !220
  br label %9, !dbg !222

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !223
  %11 = add i64 %10, -1, !dbg !223
  store i64 %11, i64* %6, align 8, !dbg !223
  %12 = icmp ugt i64 %10, 0, !dbg !224
  br i1 %12, label %13, label %18, !dbg !222

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !225
  %15 = trunc i32 %14 to i8, !dbg !225
  %16 = load i8*, i8** %7, align 8, !dbg !226
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !226
  store i8* %17, i8** %7, align 8, !dbg !226
  store i8 %15, i8* %16, align 1, !dbg !227
  br label %9, !dbg !222, !llvm.loop !228

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !229
  ret i8* %19, !dbg !230
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24, !24}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/296_xmlschemas.c_25155_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "4567d37604b8734720bcb9432f73cb9c")
!2 = !{!3, !4, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaAttrInfo", file: !1, line: 20, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaAttrInfo", file: !1, line: 16, size: 576, elements: !7)
!7 = !{!8, !9}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !6, file: !1, line: 17, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "placeholder", scope: !6, file: !1, line: 19, baseType: !10, size: 512, offset: 64)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 512, elements: !12)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !{!13}
!13 = !DISubrange(count: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!17 = !{i32 7, !"Dwarf Version", i32 5}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{i32 7, !"PIC Level", i32 2}
!21 = !{i32 7, !"PIE Level", i32 2}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"Ubuntu clang version 14.0.6"}
!25 = distinct !DISubprogram(name: "xmlSchemaFreeValue", scope: !1, file: !1, line: 10, type: !26, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !3}
!28 = !{}
!29 = !DILocalVariable(name: "val", arg: 1, scope: !25, file: !1, line: 10, type: !3)
!30 = !DILocation(line: 10, column: 31, scope: !25)
!31 = !DILocation(line: 12, column: 11, scope: !25)
!32 = !DILocation(line: 13, column: 1, scope: !25)
!33 = distinct !DISubprogram(name: "xmlSchemaFreeAttributeInfo", scope: !1, file: !1, line: 28, type: !34, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36}
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaValidCtxt", file: !1, line: 25, baseType: !38)
!38 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xmlSchemaValidCtxt", file: !1, line: 22, size: 128, elements: !39)
!39 = !{!40, !42}
!40 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrInfos", scope: !38, file: !1, line: 23, baseType: !41, size: 32)
!41 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "attrInfos", scope: !38, file: !1, line: 24, baseType: !4, size: 64, offset: 64)
!43 = !DILocalVariable(name: "vctxt", arg: 1, scope: !33, file: !1, line: 28, type: !36)
!44 = !DILocation(line: 28, column: 53, scope: !33)
!45 = !DILocalVariable(name: "i", scope: !33, file: !1, line: 29, type: !41)
!46 = !DILocation(line: 29, column: 9, scope: !33)
!47 = !DILocation(line: 30, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !33, file: !1, line: 30, column: 9)
!49 = !DILocation(line: 30, column: 15, scope: !48)
!50 = !DILocation(line: 30, column: 9, scope: !33)
!51 = !DILocation(line: 30, column: 24, scope: !48)
!52 = !DILocation(line: 32, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !33, file: !1, line: 32, column: 9)
!54 = !DILocation(line: 32, column: 16, scope: !53)
!55 = !DILocation(line: 32, column: 26, scope: !53)
!56 = !DILocation(line: 32, column: 9, scope: !33)
!57 = !DILocation(line: 33, column: 16, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 33, column: 9)
!59 = distinct !DILexicalBlock(scope: !53, file: !1, line: 32, column: 35)
!60 = !DILocation(line: 33, column: 14, scope: !58)
!61 = !DILocation(line: 33, column: 21, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !1, line: 33, column: 9)
!63 = !DILocation(line: 33, column: 25, scope: !62)
!64 = !DILocation(line: 33, column: 32, scope: !62)
!65 = !DILocation(line: 33, column: 23, scope: !62)
!66 = !DILocation(line: 33, column: 9, scope: !58)
!67 = !DILocalVariable(name: "attr", scope: !68, file: !1, line: 34, type: !4)
!68 = distinct !DILexicalBlock(scope: !62, file: !1, line: 33, column: 50)
!69 = !DILocation(line: 34, column: 32, scope: !68)
!70 = !DILocation(line: 34, column: 41, scope: !68)
!71 = !DILocation(line: 34, column: 48, scope: !68)
!72 = !DILocation(line: 34, column: 58, scope: !68)
!73 = !DILocation(line: 35, column: 17, scope: !74)
!74 = distinct !DILexicalBlock(scope: !68, file: !1, line: 35, column: 17)
!75 = !DILocation(line: 35, column: 23, scope: !74)
!76 = !DILocation(line: 35, column: 27, scope: !74)
!77 = !DILocation(line: 35, column: 17, scope: !68)
!78 = !DILocation(line: 36, column: 36, scope: !79)
!79 = distinct !DILexicalBlock(scope: !74, file: !1, line: 35, column: 36)
!80 = !DILocation(line: 36, column: 42, scope: !79)
!81 = !DILocation(line: 36, column: 17, scope: !79)
!82 = !DILocation(line: 37, column: 17, scope: !79)
!83 = !DILocation(line: 37, column: 23, scope: !79)
!84 = !DILocation(line: 37, column: 27, scope: !79)
!85 = !DILocation(line: 38, column: 13, scope: !79)
!86 = !DILocation(line: 40, column: 20, scope: !68)
!87 = !DILocation(line: 40, column: 13, scope: !68)
!88 = !DILocation(line: 41, column: 9, scope: !68)
!89 = !DILocation(line: 33, column: 46, scope: !62)
!90 = !DILocation(line: 33, column: 9, scope: !62)
!91 = distinct !{!91, !66, !92, !93}
!92 = !DILocation(line: 41, column: 9, scope: !58)
!93 = !{!"llvm.loop.mustprogress"}
!94 = !DILocation(line: 42, column: 9, scope: !59)
!95 = !DILocation(line: 42, column: 16, scope: !59)
!96 = !DILocation(line: 42, column: 28, scope: !59)
!97 = !DILocation(line: 43, column: 5, scope: !59)
!98 = !DILocation(line: 44, column: 1, scope: !33)
!99 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !100, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!100 = !DISubroutineType(types: !101)
!101 = !{!41}
!102 = !DILocalVariable(name: "vctxt", scope: !99, file: !1, line: 47, type: !37)
!103 = !DILocation(line: 47, column: 24, scope: !99)
!104 = !DILocalVariable(name: "num_attrs", scope: !99, file: !1, line: 48, type: !41)
!105 = !DILocation(line: 48, column: 9, scope: !99)
!106 = !DILocation(line: 51, column: 24, scope: !99)
!107 = !DILocation(line: 51, column: 5, scope: !99)
!108 = !DILocation(line: 54, column: 17, scope: !99)
!109 = !DILocation(line: 54, column: 27, scope: !99)
!110 = !DILocation(line: 54, column: 5, scope: !99)
!111 = !DILocation(line: 55, column: 17, scope: !99)
!112 = !DILocation(line: 55, column: 27, scope: !99)
!113 = !DILocation(line: 55, column: 5, scope: !99)
!114 = !DILocation(line: 58, column: 50, scope: !99)
!115 = !DILocation(line: 58, column: 60, scope: !99)
!116 = !DILocation(line: 58, column: 43, scope: !99)
!117 = !DILocation(line: 58, column: 23, scope: !99)
!118 = !DILocation(line: 58, column: 11, scope: !99)
!119 = !DILocation(line: 58, column: 21, scope: !99)
!120 = !DILocation(line: 59, column: 15, scope: !121)
!121 = distinct !DILexicalBlock(scope: !99, file: !1, line: 59, column: 9)
!122 = !DILocation(line: 59, column: 25, scope: !121)
!123 = !DILocation(line: 59, column: 9, scope: !99)
!124 = !DILocation(line: 60, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !121, file: !1, line: 59, column: 34)
!126 = !DILocation(line: 63, column: 25, scope: !99)
!127 = !DILocation(line: 63, column: 11, scope: !99)
!128 = !DILocation(line: 63, column: 23, scope: !99)
!129 = !DILocalVariable(name: "i", scope: !130, file: !1, line: 66, type: !41)
!130 = distinct !DILexicalBlock(scope: !99, file: !1, line: 66, column: 5)
!131 = !DILocation(line: 66, column: 14, scope: !130)
!132 = !DILocation(line: 66, column: 10, scope: !130)
!133 = !DILocation(line: 66, column: 21, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 66, column: 5)
!135 = !DILocation(line: 66, column: 25, scope: !134)
!136 = !DILocation(line: 66, column: 23, scope: !134)
!137 = !DILocation(line: 66, column: 5, scope: !130)
!138 = !DILocalVariable(name: "val_is_null", scope: !139, file: !1, line: 67, type: !41)
!139 = distinct !DILexicalBlock(scope: !134, file: !1, line: 66, column: 41)
!140 = !DILocation(line: 67, column: 13, scope: !139)
!141 = !DILocation(line: 68, column: 28, scope: !139)
!142 = !DILocation(line: 68, column: 9, scope: !139)
!143 = !DILocation(line: 69, column: 21, scope: !139)
!144 = !DILocation(line: 69, column: 33, scope: !139)
!145 = !DILocation(line: 69, column: 38, scope: !139)
!146 = !DILocation(line: 69, column: 41, scope: !139)
!147 = !DILocation(line: 69, column: 53, scope: !139)
!148 = !DILocation(line: 69, column: 9, scope: !139)
!149 = !DILocation(line: 71, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !139, file: !1, line: 71, column: 13)
!151 = !DILocation(line: 71, column: 13, scope: !139)
!152 = !DILocation(line: 72, column: 19, scope: !153)
!153 = distinct !DILexicalBlock(scope: !150, file: !1, line: 71, column: 26)
!154 = !DILocation(line: 72, column: 29, scope: !153)
!155 = !DILocation(line: 72, column: 13, scope: !153)
!156 = !DILocation(line: 72, column: 32, scope: !153)
!157 = !DILocation(line: 72, column: 36, scope: !153)
!158 = !DILocation(line: 73, column: 9, scope: !153)
!159 = !DILocation(line: 75, column: 38, scope: !160)
!160 = distinct !DILexicalBlock(scope: !150, file: !1, line: 73, column: 16)
!161 = !DILocation(line: 75, column: 19, scope: !160)
!162 = !DILocation(line: 75, column: 29, scope: !160)
!163 = !DILocation(line: 75, column: 13, scope: !160)
!164 = !DILocation(line: 75, column: 32, scope: !160)
!165 = !DILocation(line: 75, column: 36, scope: !160)
!166 = !DILocation(line: 77, column: 5, scope: !139)
!167 = !DILocation(line: 66, column: 37, scope: !134)
!168 = !DILocation(line: 66, column: 5, scope: !134)
!169 = distinct !{!169, !137, !170, !93}
!170 = !DILocation(line: 77, column: 5, scope: !130)
!171 = !DILocation(line: 80, column: 5, scope: !99)
!172 = !DILocation(line: 86, column: 9, scope: !173)
!173 = distinct !DILexicalBlock(scope: !99, file: !1, line: 86, column: 9)
!174 = !DILocation(line: 86, column: 19, scope: !173)
!175 = !DILocation(line: 86, column: 23, scope: !173)
!176 = !DILocation(line: 86, column: 32, scope: !173)
!177 = !DILocation(line: 86, column: 42, scope: !173)
!178 = !DILocation(line: 86, column: 9, scope: !99)
!179 = !DILocalVariable(name: "last_attr", scope: !180, file: !1, line: 88, type: !4)
!180 = distinct !DILexicalBlock(scope: !173, file: !1, line: 86, column: 51)
!181 = !DILocation(line: 88, column: 28, scope: !180)
!182 = !DILocation(line: 88, column: 47, scope: !180)
!183 = !DILocation(line: 88, column: 57, scope: !180)
!184 = !DILocation(line: 88, column: 67, scope: !180)
!185 = !DILocation(line: 88, column: 41, scope: !180)
!186 = !DILocalVariable(name: "memset_end", scope: !180, file: !1, line: 89, type: !14)
!187 = !DILocation(line: 89, column: 15, scope: !180)
!188 = !DILocation(line: 89, column: 35, scope: !180)
!189 = !DILocation(line: 89, column: 28, scope: !180)
!190 = !DILocation(line: 89, column: 45, scope: !180)
!191 = !DILocalVariable(name: "array_end", scope: !180, file: !1, line: 90, type: !14)
!192 = !DILocation(line: 90, column: 15, scope: !180)
!193 = !DILocation(line: 90, column: 40, scope: !180)
!194 = !DILocation(line: 90, column: 27, scope: !180)
!195 = !DILocation(line: 90, column: 53, scope: !180)
!196 = !DILocation(line: 90, column: 63, scope: !180)
!197 = !DILocation(line: 90, column: 50, scope: !180)
!198 = !DILocation(line: 92, column: 9, scope: !180)
!199 = !DILocation(line: 95, column: 9, scope: !180)
!200 = !DILocation(line: 96, column: 5, scope: !180)
!201 = !DILocation(line: 99, column: 16, scope: !99)
!202 = !DILocation(line: 99, column: 10, scope: !99)
!203 = !DILocation(line: 99, column: 5, scope: !99)
!204 = !DILocation(line: 101, column: 5, scope: !99)
!205 = !DILocation(line: 102, column: 1, scope: !99)
!206 = distinct !DISubprogram(name: "memset", scope: !207, file: !207, line: 12, type: !208, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !28)
!207 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!208 = !DISubroutineType(types: !209)
!209 = !{!3, !3, !41, !210}
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !211, line: 46, baseType: !212)
!211 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!212 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!213 = !DILocalVariable(name: "dst", arg: 1, scope: !206, file: !207, line: 12, type: !3)
!214 = !DILocation(line: 12, column: 20, scope: !206)
!215 = !DILocalVariable(name: "s", arg: 2, scope: !206, file: !207, line: 12, type: !41)
!216 = !DILocation(line: 12, column: 29, scope: !206)
!217 = !DILocalVariable(name: "count", arg: 3, scope: !206, file: !207, line: 12, type: !210)
!218 = !DILocation(line: 12, column: 39, scope: !206)
!219 = !DILocalVariable(name: "a", scope: !206, file: !207, line: 13, type: !14)
!220 = !DILocation(line: 13, column: 9, scope: !206)
!221 = !DILocation(line: 13, column: 13, scope: !206)
!222 = !DILocation(line: 14, column: 3, scope: !206)
!223 = !DILocation(line: 14, column: 15, scope: !206)
!224 = !DILocation(line: 14, column: 18, scope: !206)
!225 = !DILocation(line: 15, column: 12, scope: !206)
!226 = !DILocation(line: 15, column: 7, scope: !206)
!227 = !DILocation(line: 15, column: 10, scope: !206)
!228 = distinct !{!228, !222, !225, !93}
!229 = !DILocation(line: 16, column: 10, scope: !206)
!230 = !DILocation(line: 16, column: 3, scope: !206)

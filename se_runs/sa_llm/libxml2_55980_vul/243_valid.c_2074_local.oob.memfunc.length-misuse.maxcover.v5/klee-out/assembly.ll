; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/243_valid.c_2074_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/243_valid.c_2074_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlValidCtxt = type { i8*, i8*, i8*, i32 }
%struct._xmlEnumeration = type { i8*, i8* }
%struct._xmlAttribute = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"xmlMalloc_memory\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ctxt\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"(sizeof(xmlAttribute) <= malloc_usable_size(ret)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/243_valid.c_2074_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %0, i8* noundef %1) #0 !dbg !34 {
  %3 = alloca %struct._xmlValidCtxt*, align 8
  %4 = alloca i8*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %3, metadata !49, metadata !DIExpression()), !dbg !50
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !51, metadata !DIExpression()), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFreeEnumeration(%struct._xmlEnumeration* noundef %0) #0 !dbg !54 {
  %2 = alloca %struct._xmlEnumeration*, align 8
  store %struct._xmlEnumeration* %0, %struct._xmlEnumeration** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlEnumeration** %2, metadata !63, metadata !DIExpression()), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !66 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i8** %3, metadata !73, metadata !DIExpression()), !dbg !74
  %4 = load i64, i64* %2, align 8, !dbg !75
  %5 = call noalias i8* @malloc(i64 noundef %4) #7, !dbg !76
  store i8* %5, i8** %3, align 8, !dbg !74
  %6 = load i8*, i8** %3, align 8, !dbg !77
  %7 = icmp ne i8* %6, null, !dbg !77
  br i1 %7, label %8, label %11, !dbg !79

8:                                                ; preds = %1
  %9 = load i8*, i8** %3, align 8, !dbg !80
  %10 = load i64, i64* %2, align 8, !dbg !82
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef %10, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)), !dbg !83
  br label %11, !dbg !84

11:                                               ; preds = %8, %1
  %12 = load i8*, i8** %3, align 8, !dbg !85
  ret i8* %12, !dbg !86
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !87 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !90, metadata !DIExpression()), !dbg !91
  %3 = load i8*, i8** %2, align 8, !dbg !92
  call void @free(i8* noundef %3) #7, !dbg !93
  ret void, !dbg !94
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !95 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlValidCtxt, align 8
  %3 = alloca %struct._xmlEnumeration*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlAttribute*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt* %2, metadata !98, metadata !DIExpression()), !dbg !99
  call void @llvm.dbg.declare(metadata %struct._xmlEnumeration** %3, metadata !100, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %4, metadata !102, metadata !DIExpression()), !dbg !103
  %6 = bitcast %struct._xmlValidCtxt* %2 to i8*, !dbg !104
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 32, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !105
  %7 = bitcast %struct._xmlEnumeration** %3 to i8*, !dbg !106
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !107
  %8 = bitcast i32* %4 to i8*, !dbg !108
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !109
  %9 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !110
  %10 = icmp ne %struct._xmlEnumeration* %9, null, !dbg !112
  br i1 %10, label %11, label %17, !dbg !113

11:                                               ; preds = %0
  %12 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !114
  %13 = ptrtoint %struct._xmlEnumeration* %12 to i64, !dbg !116
  %14 = icmp uge i64 %13, 4096, !dbg !117
  %15 = zext i1 %14 to i32, !dbg !117
  %16 = sext i32 %15 to i64, !dbg !116
  call void @klee_assume(i64 noundef %16), !dbg !118
  br label %17, !dbg !119

17:                                               ; preds = %11, %0
  call void @llvm.dbg.declare(metadata %struct._xmlAttribute** %5, metadata !120, metadata !DIExpression()), !dbg !121
  %18 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !122
  %19 = load i32, i32* %4, align 4, !dbg !123
  %20 = call %struct._xmlAttribute* @xmlNewAttributeDecl(%struct._xmlValidCtxt* noundef %2, %struct._xmlEnumeration* noundef %18, i32 noundef %19), !dbg !124
  store %struct._xmlAttribute* %20, %struct._xmlAttribute** %5, align 8, !dbg !121
  %21 = load %struct._xmlAttribute*, %struct._xmlAttribute** %5, align 8, !dbg !125
  %22 = icmp ne %struct._xmlAttribute* %21, null, !dbg !127
  br i1 %22, label %23, label %34, !dbg !128

23:                                               ; preds = %17
  %24 = load %struct._xmlAttribute*, %struct._xmlAttribute** %5, align 8, !dbg !129
  %25 = call i32 (%struct._xmlAttribute*, ...) bitcast (i32 (...)* @malloc_usable_size to i32 (%struct._xmlAttribute*, ...)*)(%struct._xmlAttribute* noundef %24), !dbg !129
  %26 = sext i32 %25 to i64, !dbg !129
  %27 = icmp ule i64 104, %26, !dbg !129
  br i1 %27, label %28, label %30, !dbg !129

28:                                               ; preds = %23
  br i1 true, label %29, label %30, !dbg !129

29:                                               ; preds = %28
  br label %32, !dbg !129

30:                                               ; preds = %28, %23
  %31 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([73 x i8], [73 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 noundef 85, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !129
  br label %32, !dbg !129

32:                                               ; preds = %30, %29
  %33 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.6, i64 0, i64 0), i32 noundef 87, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !131
  br label %34, !dbg !132

34:                                               ; preds = %32, %17
  %35 = load %struct._xmlAttribute*, %struct._xmlAttribute** %5, align 8, !dbg !133
  %36 = icmp ne %struct._xmlAttribute* %35, null, !dbg !133
  br i1 %36, label %37, label %40, !dbg !135

37:                                               ; preds = %34
  %38 = load %struct._xmlAttribute*, %struct._xmlAttribute** %5, align 8, !dbg !136
  %39 = bitcast %struct._xmlAttribute* %38 to i8*, !dbg !136
  call void @xmlFree(i8* noundef %39), !dbg !138
  br label %40, !dbg !139

40:                                               ; preds = %37, %34
  %41 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !140
  %42 = icmp ne %struct._xmlEnumeration* %41, null, !dbg !140
  br i1 %42, label %43, label %45, !dbg !142

43:                                               ; preds = %40
  %44 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %3, align 8, !dbg !143
  call void @xmlFreeEnumeration(%struct._xmlEnumeration* noundef %44), !dbg !145
  br label %45, !dbg !146

45:                                               ; preds = %43, %40
  ret i32 0, !dbg !147
}

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlAttribute* @xmlNewAttributeDecl(%struct._xmlValidCtxt* noundef %0, %struct._xmlEnumeration* noundef %1, i32 noundef %2) #0 !dbg !148 {
  %4 = alloca %struct._xmlAttribute*, align 8
  %5 = alloca %struct._xmlValidCtxt*, align 8
  %6 = alloca %struct._xmlEnumeration*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._xmlAttribute*, align 8
  store %struct._xmlValidCtxt* %0, %struct._xmlValidCtxt** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlValidCtxt** %5, metadata !151, metadata !DIExpression()), !dbg !152
  store %struct._xmlEnumeration* %1, %struct._xmlEnumeration** %6, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlEnumeration** %6, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata %struct._xmlAttribute** %8, metadata !157, metadata !DIExpression()), !dbg !158
  %9 = call i8* @xmlMalloc(i64 noundef 104), !dbg !159
  %10 = bitcast i8* %9 to %struct._xmlAttribute*, !dbg !160
  store %struct._xmlAttribute* %10, %struct._xmlAttribute** %8, align 8, !dbg !158
  %11 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !161
  %12 = icmp eq %struct._xmlAttribute* %11, null, !dbg !163
  br i1 %12, label %13, label %16, !dbg !164

13:                                               ; preds = %3
  %14 = load %struct._xmlValidCtxt*, %struct._xmlValidCtxt** %5, align 8, !dbg !165
  call void @xmlVErrMemory(%struct._xmlValidCtxt* noundef %14, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0)), !dbg !167
  %15 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %6, align 8, !dbg !168
  call void @xmlFreeEnumeration(%struct._xmlEnumeration* noundef %15), !dbg !169
  store %struct._xmlAttribute* null, %struct._xmlAttribute** %4, align 8, !dbg !170
  br label %52, !dbg !170

16:                                               ; preds = %3
  %17 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !171
  %18 = bitcast %struct._xmlAttribute* %17 to i8*, !dbg !172
  %19 = call i8* @memset(i8* %18, i32 0, i64 104), !dbg !172
  %20 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !173
  %21 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %20, i32 0, i32 0, !dbg !174
  store i32 1, i32* %21, align 8, !dbg !175
  %22 = load i32, i32* %7, align 4, !dbg !176
  %23 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !177
  %24 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %23, i32 0, i32 1, !dbg !178
  store i32 %22, i32* %24, align 4, !dbg !179
  %25 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !180
  %26 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %25, i32 0, i32 2, !dbg !181
  store i8* null, i8** %26, align 8, !dbg !182
  %27 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !183
  %28 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %27, i32 0, i32 3, !dbg !184
  store i8* null, i8** %28, align 8, !dbg !185
  %29 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !186
  %30 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %29, i32 0, i32 4, !dbg !187
  store i8* null, i8** %30, align 8, !dbg !188
  %31 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !189
  %32 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %31, i32 0, i32 5, !dbg !190
  store i8* null, i8** %32, align 8, !dbg !191
  %33 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !192
  %34 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %33, i32 0, i32 6, !dbg !193
  store i8* null, i8** %34, align 8, !dbg !194
  %35 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !195
  %36 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %35, i32 0, i32 7, !dbg !196
  store i8* null, i8** %36, align 8, !dbg !197
  %37 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !198
  %38 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %37, i32 0, i32 8, !dbg !199
  store i8* null, i8** %38, align 8, !dbg !200
  %39 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !201
  %40 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %39, i32 0, i32 9, !dbg !202
  store i8* null, i8** %40, align 8, !dbg !203
  %41 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !204
  %42 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %41, i32 0, i32 10, !dbg !205
  store i8* null, i8** %42, align 8, !dbg !206
  %43 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !207
  %44 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %43, i32 0, i32 11, !dbg !208
  store i8* null, i8** %44, align 8, !dbg !209
  %45 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !210
  %46 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %45, i32 0, i32 12, !dbg !211
  store i8* null, i8** %46, align 8, !dbg !212
  %47 = load %struct._xmlEnumeration*, %struct._xmlEnumeration** %6, align 8, !dbg !213
  %48 = bitcast %struct._xmlEnumeration* %47 to i8*, !dbg !213
  %49 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !214
  %50 = getelementptr inbounds %struct._xmlAttribute, %struct._xmlAttribute* %49, i32 0, i32 13, !dbg !215
  store i8* %48, i8** %50, align 8, !dbg !216
  %51 = load %struct._xmlAttribute*, %struct._xmlAttribute** %8, align 8, !dbg !217
  store %struct._xmlAttribute* %51, %struct._xmlAttribute** %4, align 8, !dbg !218
  br label %52, !dbg !218

52:                                               ; preds = %16, %13
  %53 = load %struct._xmlAttribute*, %struct._xmlAttribute** %4, align 8, !dbg !219
  ret %struct._xmlAttribute* %53, !dbg !219
}

declare i32 @malloc_usable_size(...) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !220 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !224, metadata !DIExpression()), !dbg !225
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !226, metadata !DIExpression()), !dbg !227
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !228, metadata !DIExpression()), !dbg !229
  call void @llvm.dbg.declare(metadata i8** %7, metadata !230, metadata !DIExpression()), !dbg !232
  %8 = load i8*, i8** %4, align 8, !dbg !233
  store i8* %8, i8** %7, align 8, !dbg !232
  br label %9, !dbg !234

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !235
  %11 = add i64 %10, -1, !dbg !235
  store i64 %11, i64* %6, align 8, !dbg !235
  %12 = icmp ugt i64 %10, 0, !dbg !236
  br i1 %12, label %13, label %18, !dbg !234

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !237
  %15 = trunc i32 %14 to i8, !dbg !237
  %16 = load i8*, i8** %7, align 8, !dbg !238
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !238
  store i8* %17, i8** %7, align 8, !dbg !238
  store i8 %15, i8* %16, align 1, !dbg !239
  br label %9, !dbg !234, !llvm.loop !240

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !242
  ret i8* %19, !dbg !243
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/243_valid.c_2074_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "48c2ea53e33e726f2eaf42b58aea0c30")
!2 = !{!3, !4, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlAttribute", file: !1, line: 10, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlAttribute", file: !1, line: 11, size: 832, elements: !8)
!8 = !{!9, !11, !12, !13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !7, file: !1, line: 12, baseType: !10, size: 32)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "atype", scope: !7, file: !1, line: 13, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "doc", scope: !7, file: !1, line: 14, baseType: !3, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !7, file: !1, line: 15, baseType: !3, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "prefix", scope: !7, file: !1, line: 16, baseType: !3, size: 64, offset: 192)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 17, baseType: !3, size: 64, offset: 256)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !7, file: !1, line: 18, baseType: !3, size: 64, offset: 320)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "last", scope: !7, file: !1, line: 19, baseType: !3, size: 64, offset: 384)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !7, file: !1, line: 20, baseType: !3, size: 64, offset: 448)
!19 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !7, file: !1, line: 21, baseType: !3, size: 64, offset: 512)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !7, file: !1, line: 22, baseType: !3, size: 64, offset: 576)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !7, file: !1, line: 23, baseType: !3, size: 64, offset: 640)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "defaultValue", scope: !7, file: !1, line: 24, baseType: !3, size: 64, offset: 704)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "tree", scope: !7, file: !1, line: 25, baseType: !3, size: 64, offset: 768)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 43, type: !35, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !45}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlValidCtxt", file: !1, line: 34, baseType: !39)
!39 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlValidCtxt", file: !1, line: 35, size: 256, elements: !40)
!40 = !{!41, !42, !43, !44}
!41 = !DIDerivedType(tag: DW_TAG_member, name: "userData", scope: !39, file: !1, line: 36, baseType: !3, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_member, name: "error", scope: !39, file: !1, line: 37, baseType: !3, size: 64, offset: 64)
!43 = !DIDerivedType(tag: DW_TAG_member, name: "warning", scope: !39, file: !1, line: 38, baseType: !3, size: 64, offset: 128)
!44 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !39, file: !1, line: 39, baseType: !10, size: 32, offset: 192)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!48 = !{}
!49 = !DILocalVariable(name: "ctxt", arg: 1, scope: !34, file: !1, line: 43, type: !37)
!50 = !DILocation(line: 43, column: 34, scope: !34)
!51 = !DILocalVariable(name: "msg", arg: 2, scope: !34, file: !1, line: 43, type: !45)
!52 = !DILocation(line: 43, column: 52, scope: !34)
!53 = !DILocation(line: 43, column: 59, scope: !34)
!54 = distinct !DISubprogram(name: "xmlFreeEnumeration", scope: !1, file: !1, line: 44, type: !55, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlEnumeration", file: !1, line: 28, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlEnumeration", file: !1, line: 29, size: 128, elements: !60)
!60 = !{!61, !62}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !59, file: !1, line: 30, baseType: !3, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !59, file: !1, line: 31, baseType: !3, size: 64, offset: 64)
!63 = !DILocalVariable(name: "tree", arg: 1, scope: !54, file: !1, line: 44, type: !57)
!64 = !DILocation(line: 44, column: 41, scope: !54)
!65 = !DILocation(line: 44, column: 49, scope: !54)
!66 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 47, type: !67, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!67 = !DISubroutineType(types: !68)
!68 = !{!3, !69}
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 46, baseType: !4)
!70 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!71 = !DILocalVariable(name: "size", arg: 1, scope: !66, file: !1, line: 47, type: !69)
!72 = !DILocation(line: 47, column: 24, scope: !66)
!73 = !DILocalVariable(name: "ptr", scope: !66, file: !1, line: 48, type: !3)
!74 = !DILocation(line: 48, column: 11, scope: !66)
!75 = !DILocation(line: 48, column: 24, scope: !66)
!76 = !DILocation(line: 48, column: 17, scope: !66)
!77 = !DILocation(line: 49, column: 9, scope: !78)
!78 = distinct !DILexicalBlock(scope: !66, file: !1, line: 49, column: 9)
!79 = !DILocation(line: 49, column: 9, scope: !66)
!80 = !DILocation(line: 50, column: 28, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 49, column: 14)
!82 = !DILocation(line: 50, column: 33, scope: !81)
!83 = !DILocation(line: 50, column: 9, scope: !81)
!84 = !DILocation(line: 51, column: 5, scope: !81)
!85 = !DILocation(line: 52, column: 12, scope: !66)
!86 = !DILocation(line: 52, column: 5, scope: !66)
!87 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 56, type: !88, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !3}
!90 = !DILocalVariable(name: "ptr", arg: 1, scope: !87, file: !1, line: 56, type: !3)
!91 = !DILocation(line: 56, column: 20, scope: !87)
!92 = !DILocation(line: 57, column: 10, scope: !87)
!93 = !DILocation(line: 57, column: 5, scope: !87)
!94 = !DILocation(line: 58, column: 1, scope: !87)
!95 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !96, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!96 = !DISubroutineType(types: !97)
!97 = !{!10}
!98 = !DILocalVariable(name: "ctxt", scope: !95, file: !1, line: 66, type: !38)
!99 = !DILocation(line: 66, column: 18, scope: !95)
!100 = !DILocalVariable(name: "tree", scope: !95, file: !1, line: 67, type: !57)
!101 = !DILocation(line: 67, column: 21, scope: !95)
!102 = !DILocalVariable(name: "type", scope: !95, file: !1, line: 68, type: !10)
!103 = !DILocation(line: 68, column: 9, scope: !95)
!104 = !DILocation(line: 70, column: 24, scope: !95)
!105 = !DILocation(line: 70, column: 5, scope: !95)
!106 = !DILocation(line: 71, column: 24, scope: !95)
!107 = !DILocation(line: 71, column: 5, scope: !95)
!108 = !DILocation(line: 72, column: 24, scope: !95)
!109 = !DILocation(line: 72, column: 5, scope: !95)
!110 = !DILocation(line: 75, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !95, file: !1, line: 75, column: 9)
!112 = !DILocation(line: 75, column: 14, scope: !111)
!113 = !DILocation(line: 75, column: 9, scope: !95)
!114 = !DILocation(line: 76, column: 36, scope: !115)
!115 = distinct !DILexicalBlock(scope: !111, file: !1, line: 75, column: 23)
!116 = !DILocation(line: 76, column: 21, scope: !115)
!117 = !DILocation(line: 76, column: 41, scope: !115)
!118 = !DILocation(line: 76, column: 9, scope: !115)
!119 = !DILocation(line: 77, column: 5, scope: !115)
!120 = !DILocalVariable(name: "ret", scope: !95, file: !1, line: 80, type: !5)
!121 = !DILocation(line: 80, column: 19, scope: !95)
!122 = !DILocation(line: 80, column: 52, scope: !95)
!123 = !DILocation(line: 80, column: 58, scope: !95)
!124 = !DILocation(line: 80, column: 25, scope: !95)
!125 = !DILocation(line: 83, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !95, file: !1, line: 83, column: 9)
!127 = !DILocation(line: 83, column: 13, scope: !126)
!128 = !DILocation(line: 83, column: 9, scope: !95)
!129 = !DILocation(line: 85, column: 9, scope: !130)
!130 = distinct !DILexicalBlock(scope: !126, file: !1, line: 83, column: 22)
!131 = !DILocation(line: 87, column: 9, scope: !130)
!132 = !DILocation(line: 88, column: 5, scope: !130)
!133 = !DILocation(line: 91, column: 9, scope: !134)
!134 = distinct !DILexicalBlock(scope: !95, file: !1, line: 91, column: 9)
!135 = !DILocation(line: 91, column: 9, scope: !95)
!136 = !DILocation(line: 92, column: 17, scope: !137)
!137 = distinct !DILexicalBlock(scope: !134, file: !1, line: 91, column: 14)
!138 = !DILocation(line: 92, column: 9, scope: !137)
!139 = !DILocation(line: 93, column: 5, scope: !137)
!140 = !DILocation(line: 94, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !95, file: !1, line: 94, column: 9)
!142 = !DILocation(line: 94, column: 9, scope: !95)
!143 = !DILocation(line: 95, column: 28, scope: !144)
!144 = distinct !DILexicalBlock(scope: !141, file: !1, line: 94, column: 15)
!145 = !DILocation(line: 95, column: 9, scope: !144)
!146 = !DILocation(line: 96, column: 5, scope: !144)
!147 = !DILocation(line: 98, column: 5, scope: !95)
!148 = distinct !DISubprogram(name: "xmlNewAttributeDecl", scope: !1, file: !1, line: 102, type: !149, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !48)
!149 = !DISubroutineType(types: !150)
!150 = !{!5, !37, !57, !10}
!151 = !DILocalVariable(name: "ctxt", arg: 1, scope: !148, file: !1, line: 102, type: !37)
!152 = !DILocation(line: 102, column: 49, scope: !148)
!153 = !DILocalVariable(name: "tree", arg: 2, scope: !148, file: !1, line: 102, type: !57)
!154 = !DILocation(line: 102, column: 71, scope: !148)
!155 = !DILocalVariable(name: "type", arg: 3, scope: !148, file: !1, line: 102, type: !10)
!156 = !DILocation(line: 102, column: 81, scope: !148)
!157 = !DILocalVariable(name: "ret", scope: !148, file: !1, line: 103, type: !5)
!158 = !DILocation(line: 103, column: 19, scope: !148)
!159 = !DILocation(line: 103, column: 41, scope: !148)
!160 = !DILocation(line: 103, column: 25, scope: !148)
!161 = !DILocation(line: 104, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !148, file: !1, line: 104, column: 9)
!163 = !DILocation(line: 104, column: 13, scope: !162)
!164 = !DILocation(line: 104, column: 9, scope: !148)
!165 = !DILocation(line: 105, column: 23, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 104, column: 22)
!167 = !DILocation(line: 105, column: 9, scope: !166)
!168 = !DILocation(line: 106, column: 28, scope: !166)
!169 = !DILocation(line: 106, column: 9, scope: !166)
!170 = !DILocation(line: 107, column: 9, scope: !166)
!171 = !DILocation(line: 110, column: 12, scope: !148)
!172 = !DILocation(line: 110, column: 5, scope: !148)
!173 = !DILocation(line: 111, column: 5, scope: !148)
!174 = !DILocation(line: 111, column: 10, scope: !148)
!175 = !DILocation(line: 111, column: 15, scope: !148)
!176 = !DILocation(line: 112, column: 18, scope: !148)
!177 = !DILocation(line: 112, column: 5, scope: !148)
!178 = !DILocation(line: 112, column: 10, scope: !148)
!179 = !DILocation(line: 112, column: 16, scope: !148)
!180 = !DILocation(line: 114, column: 5, scope: !148)
!181 = !DILocation(line: 114, column: 10, scope: !148)
!182 = !DILocation(line: 114, column: 14, scope: !148)
!183 = !DILocation(line: 115, column: 5, scope: !148)
!184 = !DILocation(line: 115, column: 10, scope: !148)
!185 = !DILocation(line: 115, column: 15, scope: !148)
!186 = !DILocation(line: 116, column: 5, scope: !148)
!187 = !DILocation(line: 116, column: 10, scope: !148)
!188 = !DILocation(line: 116, column: 17, scope: !148)
!189 = !DILocation(line: 117, column: 5, scope: !148)
!190 = !DILocation(line: 117, column: 10, scope: !148)
!191 = !DILocation(line: 117, column: 15, scope: !148)
!192 = !DILocation(line: 118, column: 5, scope: !148)
!193 = !DILocation(line: 118, column: 10, scope: !148)
!194 = !DILocation(line: 118, column: 19, scope: !148)
!195 = !DILocation(line: 119, column: 5, scope: !148)
!196 = !DILocation(line: 119, column: 10, scope: !148)
!197 = !DILocation(line: 119, column: 15, scope: !148)
!198 = !DILocation(line: 120, column: 5, scope: !148)
!199 = !DILocation(line: 120, column: 10, scope: !148)
!200 = !DILocation(line: 120, column: 17, scope: !148)
!201 = !DILocation(line: 121, column: 5, scope: !148)
!202 = !DILocation(line: 121, column: 10, scope: !148)
!203 = !DILocation(line: 121, column: 15, scope: !148)
!204 = !DILocation(line: 122, column: 5, scope: !148)
!205 = !DILocation(line: 122, column: 10, scope: !148)
!206 = !DILocation(line: 122, column: 15, scope: !148)
!207 = !DILocation(line: 123, column: 5, scope: !148)
!208 = !DILocation(line: 123, column: 10, scope: !148)
!209 = !DILocation(line: 123, column: 13, scope: !148)
!210 = !DILocation(line: 124, column: 5, scope: !148)
!211 = !DILocation(line: 124, column: 10, scope: !148)
!212 = !DILocation(line: 124, column: 23, scope: !148)
!213 = !DILocation(line: 125, column: 17, scope: !148)
!214 = !DILocation(line: 125, column: 5, scope: !148)
!215 = !DILocation(line: 125, column: 10, scope: !148)
!216 = !DILocation(line: 125, column: 15, scope: !148)
!217 = !DILocation(line: 126, column: 12, scope: !148)
!218 = !DILocation(line: 126, column: 5, scope: !148)
!219 = !DILocation(line: 127, column: 1, scope: !148)
!220 = distinct !DISubprogram(name: "memset", scope: !221, file: !221, line: 12, type: !222, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !48)
!221 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!222 = !DISubroutineType(types: !223)
!223 = !{!3, !3, !10, !69}
!224 = !DILocalVariable(name: "dst", arg: 1, scope: !220, file: !221, line: 12, type: !3)
!225 = !DILocation(line: 12, column: 20, scope: !220)
!226 = !DILocalVariable(name: "s", arg: 2, scope: !220, file: !221, line: 12, type: !10)
!227 = !DILocation(line: 12, column: 29, scope: !220)
!228 = !DILocalVariable(name: "count", arg: 3, scope: !220, file: !221, line: 12, type: !69)
!229 = !DILocation(line: 12, column: 39, scope: !220)
!230 = !DILocalVariable(name: "a", scope: !220, file: !221, line: 13, type: !231)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!232 = !DILocation(line: 13, column: 9, scope: !220)
!233 = !DILocation(line: 13, column: 13, scope: !220)
!234 = !DILocation(line: 14, column: 3, scope: !220)
!235 = !DILocation(line: 14, column: 15, scope: !220)
!236 = !DILocation(line: 14, column: 18, scope: !220)
!237 = !DILocation(line: 15, column: 12, scope: !220)
!238 = !DILocation(line: 15, column: 7, scope: !220)
!239 = !DILocation(line: 15, column: 10, scope: !220)
!240 = distinct !{!240, !234, !237, !241}
!241 = !{!"llvm.loop.mustprogress"}
!242 = !DILocation(line: 16, column: 10, scope: !220)
!243 = !DILocation(line: 16, column: 3, scope: !220)

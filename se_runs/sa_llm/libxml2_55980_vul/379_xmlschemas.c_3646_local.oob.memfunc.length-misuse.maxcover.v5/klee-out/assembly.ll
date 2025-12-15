; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/379_xmlschemas.c_3646_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/379_xmlschemas.c_3646_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlSchemaBucket = type { i8*, i32, i8*, i8* }

@.str = private unnamed_addr constant [25 x i8] c"allocating schema bucket\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"is_null\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"targetNamespace\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"(size > 0 && size <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_55980_vul/379_xmlschemas.c_3646_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlSchemaPErrMemory(i8* noundef %0, i8* noundef %1, i8* noundef %2) #0 !dbg !32 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !40, metadata !DIExpression()), !dbg !41
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !42, metadata !DIExpression()), !dbg !43
  ret void, !dbg !44
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlSchemaItemListCreate() #0 !dbg !45 {
  ret i8* inttoptr (i64 1 to i8*), !dbg !48
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !49 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !52, metadata !DIExpression()), !dbg !53
  %3 = load i8*, i8** %2, align 8, !dbg !54
  call void @free(i8* noundef %3) #7, !dbg !55
  ret void, !dbg !56
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !57 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !63, metadata !DIExpression()), !dbg !64
  %3 = load i64, i64* %2, align 8, !dbg !65
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !66
  ret i8* %4, !dbg !67
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlSchemaBucket* @xmlSchemaBucketCreate(i8* noundef %0, i32 noundef %1) #0 !dbg !68 {
  %3 = alloca %struct._xmlSchemaBucket*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct._xmlSchemaBucket*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !73, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i64* %6, metadata !75, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaBucket** %7, metadata !77, metadata !DIExpression()), !dbg !78
  %8 = load i32, i32* %5, align 4, !dbg !79
  %9 = icmp eq i32 %8, 0, !dbg !81
  br i1 %9, label %10, label %11, !dbg !82

10:                                               ; preds = %2
  store i64 32, i64* %6, align 8, !dbg !83
  br label %12, !dbg !84

11:                                               ; preds = %2
  store i64 32, i64* %6, align 8, !dbg !85
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i64, i64* %6, align 8, !dbg !86
  %14 = call i8* @xmlMalloc(i64 noundef %13), !dbg !87
  %15 = bitcast i8* %14 to %struct._xmlSchemaBucket*, !dbg !88
  store %struct._xmlSchemaBucket* %15, %struct._xmlSchemaBucket** %7, align 8, !dbg !89
  %16 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !90
  %17 = icmp eq %struct._xmlSchemaBucket* %16, null, !dbg !92
  br i1 %17, label %18, label %19, !dbg !93

18:                                               ; preds = %12
  call void @xmlSchemaPErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8* noundef null), !dbg !94
  store %struct._xmlSchemaBucket* null, %struct._xmlSchemaBucket** %3, align 8, !dbg !96
  br label %52, !dbg !96

19:                                               ; preds = %12
  %20 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !97
  %21 = bitcast %struct._xmlSchemaBucket* %20 to i8*, !dbg !98
  %22 = load i64, i64* %6, align 8, !dbg !99
  %23 = call i8* @memset(i8* %21, i32 0, i64 %22), !dbg !98
  %24 = load i8*, i8** %4, align 8, !dbg !100
  %25 = icmp ne i8* %24, null, !dbg !100
  br i1 %25, label %26, label %29, !dbg !100

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8, !dbg !101
  %28 = call noalias i8* @strdup(i8* noundef %27) #7, !dbg !102
  br label %30, !dbg !100

29:                                               ; preds = %19
  br label %30, !dbg !100

30:                                               ; preds = %29, %26
  %31 = phi i8* [ %28, %26 ], [ null, %29 ], !dbg !100
  %32 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !103
  %33 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %32, i32 0, i32 0, !dbg !104
  store i8* %31, i8** %33, align 8, !dbg !105
  %34 = load i32, i32* %5, align 4, !dbg !106
  %35 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !107
  %36 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %35, i32 0, i32 1, !dbg !108
  store i32 %34, i32* %36, align 8, !dbg !109
  %37 = call i8* @xmlSchemaItemListCreate(), !dbg !110
  %38 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !111
  %39 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %38, i32 0, i32 2, !dbg !112
  store i8* %37, i8** %39, align 8, !dbg !113
  %40 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !114
  %41 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %40, i32 0, i32 2, !dbg !116
  %42 = load i8*, i8** %41, align 8, !dbg !116
  %43 = icmp eq i8* %42, null, !dbg !117
  br i1 %43, label %44, label %47, !dbg !118

44:                                               ; preds = %30
  %45 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !119
  %46 = bitcast %struct._xmlSchemaBucket* %45 to i8*, !dbg !119
  call void @xmlFree(i8* noundef %46), !dbg !121
  store %struct._xmlSchemaBucket* null, %struct._xmlSchemaBucket** %3, align 8, !dbg !122
  br label %52, !dbg !122

47:                                               ; preds = %30
  %48 = call i8* @xmlSchemaItemListCreate(), !dbg !123
  %49 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !124
  %50 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %49, i32 0, i32 3, !dbg !125
  store i8* %48, i8** %50, align 8, !dbg !126
  %51 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %7, align 8, !dbg !127
  store %struct._xmlSchemaBucket* %51, %struct._xmlSchemaBucket** %3, align 8, !dbg !128
  br label %52, !dbg !128

52:                                               ; preds = %47, %44, %18
  %53 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %3, align 8, !dbg !129
  ret %struct._xmlSchemaBucket* %53, !dbg !129
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nounwind
declare noalias i8* @strdup(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !130 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct._xmlSchemaBucket*, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !134, metadata !DIExpression()), !dbg !135
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !136, metadata !DIExpression()), !dbg !140
  %8 = bitcast i32* %2 to i8*, !dbg !141
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !142
  %9 = load i32, i32* %2, align 4, !dbg !143
  %10 = icmp eq i32 %9, 0, !dbg !144
  br i1 %10, label %14, label %11, !dbg !145

11:                                               ; preds = %0
  %12 = load i32, i32* %2, align 4, !dbg !146
  %13 = icmp eq i32 %12, 1, !dbg !147
  br label %14, !dbg !145

14:                                               ; preds = %11, %0
  %15 = phi i1 [ true, %0 ], [ %13, %11 ]
  %16 = zext i1 %15 to i32, !dbg !145
  %17 = sext i32 %16 to i64, !dbg !143
  call void @klee_assume(i64 noundef %17), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %4, metadata !149, metadata !DIExpression()), !dbg !150
  %18 = bitcast i32* %4 to i8*, !dbg !151
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !152
  %19 = load i32, i32* %4, align 4, !dbg !153
  %20 = icmp eq i32 %19, 0, !dbg !154
  br i1 %20, label %24, label %21, !dbg !155

21:                                               ; preds = %14
  %22 = load i32, i32* %4, align 4, !dbg !156
  %23 = icmp eq i32 %22, 1, !dbg !157
  br label %24, !dbg !155

24:                                               ; preds = %21, %14
  %25 = phi i1 [ true, %14 ], [ %23, %21 ]
  %26 = zext i1 %25 to i32, !dbg !155
  %27 = sext i32 %26 to i64, !dbg !153
  call void @klee_assume(i64 noundef %27), !dbg !158
  call void @llvm.dbg.declare(metadata i8** %5, metadata !159, metadata !DIExpression()), !dbg !160
  store i8* null, i8** %5, align 8, !dbg !160
  %28 = load i32, i32* %4, align 4, !dbg !161
  %29 = icmp ne i32 %28, 0, !dbg !161
  br i1 %29, label %34, label %30, !dbg !163

30:                                               ; preds = %24
  %31 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !164
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 256, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0)), !dbg !166
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !167
  store i8 0, i8* %32, align 1, !dbg !168
  %33 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !169
  store i8* %33, i8** %5, align 8, !dbg !170
  br label %34, !dbg !171

34:                                               ; preds = %30, %24
  call void @llvm.dbg.declare(metadata %struct._xmlSchemaBucket** %6, metadata !172, metadata !DIExpression()), !dbg !173
  %35 = load i8*, i8** %5, align 8, !dbg !174
  %36 = load i32, i32* %2, align 4, !dbg !175
  %37 = call %struct._xmlSchemaBucket* @xmlSchemaBucketCreate(i8* noundef %35, i32 noundef %36), !dbg !176
  store %struct._xmlSchemaBucket* %37, %struct._xmlSchemaBucket** %6, align 8, !dbg !173
  call void @llvm.dbg.declare(metadata i64* %7, metadata !177, metadata !DIExpression()), !dbg !178
  %38 = load i32, i32* %2, align 4, !dbg !179
  %39 = icmp eq i32 %38, 0, !dbg !180
  %40 = zext i1 %39 to i64, !dbg !181
  %41 = select i1 %39, i64 32, i64 32, !dbg !181
  store i64 %41, i64* %7, align 8, !dbg !178
  %42 = load i64, i64* %7, align 8, !dbg !182
  %43 = icmp ugt i64 %42, 0, !dbg !182
  br i1 %43, label %44, label %49, !dbg !182

44:                                               ; preds = %34
  %45 = load i64, i64* %7, align 8, !dbg !182
  %46 = icmp ule i64 %45, 1024, !dbg !182
  br i1 %46, label %47, label %49, !dbg !182

47:                                               ; preds = %44
  br i1 true, label %48, label %49, !dbg !182

48:                                               ; preds = %47
  br label %51, !dbg !182

49:                                               ; preds = %47, %44, %34
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 104, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !182
  br label %51, !dbg !182

51:                                               ; preds = %49, %48
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.6, i64 0, i64 0), i32 noundef 107, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !183
  %53 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !184
  %54 = icmp ne %struct._xmlSchemaBucket* %53, null, !dbg !184
  br i1 %54, label %55, label %67, !dbg !186

55:                                               ; preds = %51
  %56 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !187
  %57 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %56, i32 0, i32 0, !dbg !190
  %58 = load i8*, i8** %57, align 8, !dbg !190
  %59 = icmp ne i8* %58, null, !dbg !187
  br i1 %59, label %60, label %64, !dbg !191

60:                                               ; preds = %55
  %61 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !192
  %62 = getelementptr inbounds %struct._xmlSchemaBucket, %struct._xmlSchemaBucket* %61, i32 0, i32 0, !dbg !193
  %63 = load i8*, i8** %62, align 8, !dbg !193
  call void @free(i8* noundef %63) #7, !dbg !194
  br label %64, !dbg !194

64:                                               ; preds = %60, %55
  %65 = load %struct._xmlSchemaBucket*, %struct._xmlSchemaBucket** %6, align 8, !dbg !195
  %66 = bitcast %struct._xmlSchemaBucket* %65 to i8*, !dbg !195
  call void @free(i8* noundef %66) #7, !dbg !196
  br label %67, !dbg !197

67:                                               ; preds = %64, %51
  ret i32 0, !dbg !198
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !199 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !203, metadata !DIExpression()), !dbg !204
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !205, metadata !DIExpression()), !dbg !206
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !207, metadata !DIExpression()), !dbg !208
  call void @llvm.dbg.declare(metadata i8** %7, metadata !209, metadata !DIExpression()), !dbg !210
  %8 = load i8*, i8** %4, align 8, !dbg !211
  store i8* %8, i8** %7, align 8, !dbg !210
  br label %9, !dbg !212

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !213
  %11 = add i64 %10, -1, !dbg !213
  store i64 %11, i64* %6, align 8, !dbg !213
  %12 = icmp ugt i64 %10, 0, !dbg !214
  br i1 %12, label %13, label %18, !dbg !212

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !215
  %15 = trunc i32 %14 to i8, !dbg !215
  %16 = load i8*, i8** %7, align 8, !dbg !216
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !216
  store i8* %17, i8** %7, align 8, !dbg !216
  store i8 %15, i8* %16, align 1, !dbg !217
  br label %9, !dbg !212, !llvm.loop !218

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !220
  ret i8* %19, !dbg !221
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !22}
!llvm.module.flags = !{!24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31, !31}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !8, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/379_xmlschemas.c_3646_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b00520acd6029680d0eb93f70ff39dfb")
!2 = !{!3}
!3 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !1, line: 13, baseType: !4, size: 32, elements: !5)
!4 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!5 = !{!6, !7}
!6 = !DIEnumerator(name: "XML_SCHEMA_INCLUDE", value: 0)
!7 = !DIEnumerator(name: "XML_SCHEMA_IMPORT", value: 1)
!8 = !{!9, !10}
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaBucketPtr", file: !1, line: 11, baseType: !11)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaBucket", file: !1, line: 10, baseType: !13)
!13 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlSchemaBucket", file: !1, line: 18, size: 256, elements: !14)
!14 = !{!15, !18, !20, !21}
!15 = !DIDerivedType(tag: DW_TAG_member, name: "targetNamespace", scope: !13, file: !1, line: 19, baseType: !16, size: 64)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !13, file: !1, line: 20, baseType: !19, size: 32, offset: 64)
!19 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaBucketType", file: !1, line: 16, baseType: !3)
!20 = !DIDerivedType(tag: DW_TAG_member, name: "globals", scope: !13, file: !1, line: 21, baseType: !9, size: 64, offset: 128)
!21 = !DIDerivedType(tag: DW_TAG_member, name: "locals", scope: !13, file: !1, line: 22, baseType: !9, size: 64, offset: 192)
!22 = distinct !DICompileUnit(language: DW_LANG_C99, file: !23, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!23 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!24 = !{i32 7, !"Dwarf Version", i32 5}
!25 = !{i32 2, !"Debug Info Version", i32 3}
!26 = !{i32 1, !"wchar_size", i32 4}
!27 = !{i32 7, !"PIC Level", i32 2}
!28 = !{i32 7, !"PIE Level", i32 2}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"Ubuntu clang version 14.0.6"}
!32 = distinct !DISubprogram(name: "xmlSchemaPErrMemory", scope: !1, file: !1, line: 26, type: !33, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !9, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!37 = !{}
!38 = !DILocalVariable(name: "ctxt", arg: 1, scope: !32, file: !1, line: 26, type: !9)
!39 = !DILocation(line: 26, column: 32, scope: !32)
!40 = !DILocalVariable(name: "msg", arg: 2, scope: !32, file: !1, line: 26, type: !35)
!41 = !DILocation(line: 26, column: 50, scope: !32)
!42 = !DILocalVariable(name: "extra", arg: 3, scope: !32, file: !1, line: 26, type: !35)
!43 = !DILocation(line: 26, column: 67, scope: !32)
!44 = !DILocation(line: 28, column: 1, scope: !32)
!45 = distinct !DISubprogram(name: "xmlSchemaItemListCreate", scope: !1, file: !1, line: 30, type: !46, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!46 = !DISubroutineType(types: !47)
!47 = !{!9}
!48 = !DILocation(line: 32, column: 5, scope: !45)
!49 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 35, type: !50, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !9}
!52 = !DILocalVariable(name: "ptr", arg: 1, scope: !49, file: !1, line: 35, type: !9)
!53 = !DILocation(line: 35, column: 20, scope: !49)
!54 = !DILocation(line: 36, column: 10, scope: !49)
!55 = !DILocation(line: 36, column: 5, scope: !49)
!56 = !DILocation(line: 37, column: 1, scope: !49)
!57 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 39, type: !58, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!58 = !DISubroutineType(types: !59)
!59 = !{!9, !60}
!60 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !61, line: 46, baseType: !62)
!61 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!62 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!63 = !DILocalVariable(name: "size", arg: 1, scope: !57, file: !1, line: 39, type: !60)
!64 = !DILocation(line: 39, column: 24, scope: !57)
!65 = !DILocation(line: 40, column: 19, scope: !57)
!66 = !DILocation(line: 40, column: 12, scope: !57)
!67 = !DILocation(line: 40, column: 5, scope: !57)
!68 = distinct !DISubprogram(name: "xmlSchemaBucketCreate", scope: !1, file: !1, line: 44, type: !69, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!69 = !DISubroutineType(types: !70)
!70 = !{!10, !35, !19}
!71 = !DILocalVariable(name: "targetNamespace", arg: 1, scope: !68, file: !1, line: 44, type: !35)
!72 = !DILocation(line: 44, column: 54, scope: !68)
!73 = !DILocalVariable(name: "type", arg: 2, scope: !68, file: !1, line: 45, type: !19)
!74 = !DILocation(line: 45, column: 62, scope: !68)
!75 = !DILocalVariable(name: "size", scope: !68, file: !1, line: 46, type: !60)
!76 = !DILocation(line: 46, column: 12, scope: !68)
!77 = !DILocalVariable(name: "ret", scope: !68, file: !1, line: 47, type: !10)
!78 = !DILocation(line: 47, column: 24, scope: !68)
!79 = !DILocation(line: 49, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !68, file: !1, line: 49, column: 9)
!81 = !DILocation(line: 49, column: 14, scope: !80)
!82 = !DILocation(line: 49, column: 9, scope: !68)
!83 = !DILocation(line: 50, column: 14, scope: !80)
!84 = !DILocation(line: 50, column: 9, scope: !80)
!85 = !DILocation(line: 52, column: 14, scope: !80)
!86 = !DILocation(line: 54, column: 42, scope: !68)
!87 = !DILocation(line: 54, column: 32, scope: !68)
!88 = !DILocation(line: 54, column: 11, scope: !68)
!89 = !DILocation(line: 54, column: 9, scope: !68)
!90 = !DILocation(line: 55, column: 9, scope: !91)
!91 = distinct !DILexicalBlock(scope: !68, file: !1, line: 55, column: 9)
!92 = !DILocation(line: 55, column: 13, scope: !91)
!93 = !DILocation(line: 55, column: 9, scope: !68)
!94 = !DILocation(line: 56, column: 9, scope: !95)
!95 = distinct !DILexicalBlock(scope: !91, file: !1, line: 55, column: 22)
!96 = !DILocation(line: 57, column: 9, scope: !95)
!97 = !DILocation(line: 61, column: 12, scope: !68)
!98 = !DILocation(line: 61, column: 5, scope: !68)
!99 = !DILocation(line: 61, column: 20, scope: !68)
!100 = !DILocation(line: 63, column: 28, scope: !68)
!101 = !DILocation(line: 63, column: 53, scope: !68)
!102 = !DILocation(line: 63, column: 46, scope: !68)
!103 = !DILocation(line: 63, column: 5, scope: !68)
!104 = !DILocation(line: 63, column: 10, scope: !68)
!105 = !DILocation(line: 63, column: 26, scope: !68)
!106 = !DILocation(line: 64, column: 17, scope: !68)
!107 = !DILocation(line: 64, column: 5, scope: !68)
!108 = !DILocation(line: 64, column: 10, scope: !68)
!109 = !DILocation(line: 64, column: 15, scope: !68)
!110 = !DILocation(line: 65, column: 20, scope: !68)
!111 = !DILocation(line: 65, column: 5, scope: !68)
!112 = !DILocation(line: 65, column: 10, scope: !68)
!113 = !DILocation(line: 65, column: 18, scope: !68)
!114 = !DILocation(line: 66, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !68, file: !1, line: 66, column: 9)
!116 = !DILocation(line: 66, column: 14, scope: !115)
!117 = !DILocation(line: 66, column: 22, scope: !115)
!118 = !DILocation(line: 66, column: 9, scope: !68)
!119 = !DILocation(line: 67, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !115, file: !1, line: 66, column: 31)
!121 = !DILocation(line: 67, column: 9, scope: !120)
!122 = !DILocation(line: 68, column: 9, scope: !120)
!123 = !DILocation(line: 70, column: 19, scope: !68)
!124 = !DILocation(line: 70, column: 5, scope: !68)
!125 = !DILocation(line: 70, column: 10, scope: !68)
!126 = !DILocation(line: 70, column: 17, scope: !68)
!127 = !DILocation(line: 72, column: 12, scope: !68)
!128 = !DILocation(line: 72, column: 5, scope: !68)
!129 = !DILocation(line: 73, column: 1, scope: !68)
!130 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !131, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!131 = !DISubroutineType(types: !132)
!132 = !{!133}
!133 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!134 = !DILocalVariable(name: "type", scope: !130, file: !1, line: 77, type: !19)
!135 = !DILocation(line: 77, column: 25, scope: !130)
!136 = !DILocalVariable(name: "targetNamespace", scope: !130, file: !1, line: 78, type: !137)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 2048, elements: !138)
!138 = !{!139}
!139 = !DISubrange(count: 256)
!140 = !DILocation(line: 78, column: 10, scope: !130)
!141 = !DILocation(line: 81, column: 24, scope: !130)
!142 = !DILocation(line: 81, column: 5, scope: !130)
!143 = !DILocation(line: 82, column: 17, scope: !130)
!144 = !DILocation(line: 82, column: 22, scope: !130)
!145 = !DILocation(line: 82, column: 44, scope: !130)
!146 = !DILocation(line: 82, column: 47, scope: !130)
!147 = !DILocation(line: 82, column: 52, scope: !130)
!148 = !DILocation(line: 82, column: 5, scope: !130)
!149 = !DILocalVariable(name: "is_null", scope: !130, file: !1, line: 85, type: !133)
!150 = !DILocation(line: 85, column: 9, scope: !130)
!151 = !DILocation(line: 86, column: 24, scope: !130)
!152 = !DILocation(line: 86, column: 5, scope: !130)
!153 = !DILocation(line: 87, column: 17, scope: !130)
!154 = !DILocation(line: 87, column: 25, scope: !130)
!155 = !DILocation(line: 87, column: 30, scope: !130)
!156 = !DILocation(line: 87, column: 33, scope: !130)
!157 = !DILocation(line: 87, column: 41, scope: !130)
!158 = !DILocation(line: 87, column: 5, scope: !130)
!159 = !DILocalVariable(name: "ns_ptr", scope: !130, file: !1, line: 89, type: !35)
!160 = !DILocation(line: 89, column: 17, scope: !130)
!161 = !DILocation(line: 90, column: 10, scope: !162)
!162 = distinct !DILexicalBlock(scope: !130, file: !1, line: 90, column: 9)
!163 = !DILocation(line: 90, column: 9, scope: !130)
!164 = !DILocation(line: 91, column: 28, scope: !165)
!165 = distinct !DILexicalBlock(scope: !162, file: !1, line: 90, column: 19)
!166 = !DILocation(line: 91, column: 9, scope: !165)
!167 = !DILocation(line: 92, column: 9, scope: !165)
!168 = !DILocation(line: 92, column: 30, scope: !165)
!169 = !DILocation(line: 93, column: 18, scope: !165)
!170 = !DILocation(line: 93, column: 16, scope: !165)
!171 = !DILocation(line: 94, column: 5, scope: !165)
!172 = !DILocalVariable(name: "result", scope: !130, file: !1, line: 97, type: !10)
!173 = !DILocation(line: 97, column: 24, scope: !130)
!174 = !DILocation(line: 97, column: 55, scope: !130)
!175 = !DILocation(line: 97, column: 63, scope: !130)
!176 = !DILocation(line: 97, column: 33, scope: !130)
!177 = !DILocalVariable(name: "size", scope: !130, file: !1, line: 103, type: !60)
!178 = !DILocation(line: 103, column: 12, scope: !130)
!179 = !DILocation(line: 103, column: 20, scope: !130)
!180 = !DILocation(line: 103, column: 25, scope: !130)
!181 = !DILocation(line: 103, column: 19, scope: !130)
!182 = !DILocation(line: 104, column: 5, scope: !130)
!183 = !DILocation(line: 107, column: 5, scope: !130)
!184 = !DILocation(line: 110, column: 9, scope: !185)
!185 = distinct !DILexicalBlock(scope: !130, file: !1, line: 110, column: 9)
!186 = !DILocation(line: 110, column: 9, scope: !130)
!187 = !DILocation(line: 111, column: 13, scope: !188)
!188 = distinct !DILexicalBlock(scope: !189, file: !1, line: 111, column: 13)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 110, column: 17)
!190 = !DILocation(line: 111, column: 21, scope: !188)
!191 = !DILocation(line: 111, column: 13, scope: !189)
!192 = !DILocation(line: 111, column: 50, scope: !188)
!193 = !DILocation(line: 111, column: 58, scope: !188)
!194 = !DILocation(line: 111, column: 38, scope: !188)
!195 = !DILocation(line: 112, column: 14, scope: !189)
!196 = !DILocation(line: 112, column: 9, scope: !189)
!197 = !DILocation(line: 113, column: 5, scope: !189)
!198 = !DILocation(line: 115, column: 5, scope: !130)
!199 = distinct !DISubprogram(name: "memset", scope: !200, file: !200, line: 12, type: !201, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !22, retainedNodes: !37)
!200 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!201 = !DISubroutineType(types: !202)
!202 = !{!9, !9, !133, !60}
!203 = !DILocalVariable(name: "dst", arg: 1, scope: !199, file: !200, line: 12, type: !9)
!204 = !DILocation(line: 12, column: 20, scope: !199)
!205 = !DILocalVariable(name: "s", arg: 2, scope: !199, file: !200, line: 12, type: !133)
!206 = !DILocation(line: 12, column: 29, scope: !199)
!207 = !DILocalVariable(name: "count", arg: 3, scope: !199, file: !200, line: 12, type: !60)
!208 = !DILocation(line: 12, column: 39, scope: !199)
!209 = !DILocalVariable(name: "a", scope: !199, file: !200, line: 13, type: !16)
!210 = !DILocation(line: 13, column: 9, scope: !199)
!211 = !DILocation(line: 13, column: 13, scope: !199)
!212 = !DILocation(line: 14, column: 3, scope: !199)
!213 = !DILocation(line: 14, column: 15, scope: !199)
!214 = !DILocation(line: 14, column: 18, scope: !199)
!215 = !DILocation(line: 15, column: 12, scope: !199)
!216 = !DILocation(line: 15, column: 7, scope: !199)
!217 = !DILocation(line: 15, column: 10, scope: !199)
!218 = distinct !{!218, !212, !215, !219}
!219 = !{!"llvm.loop.mustprogress"}
!220 = !DILocation(line: 16, column: 10, scope: !199)
!221 = !DILocation(line: 16, column: 3, scope: !199)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/273_valid.c_1509_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/273_valid.c_1509_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlElement = type { i32, i32, i8* }
%struct._xmlElementDecl = type { i32, i8* }

@.str = private unnamed_addr constant [14 x i8] c"malloc failed\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"elem_etype\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"name_is_null\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/273_valid.c_1509_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlVErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !27 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !33, metadata !DIExpression()), !dbg !34
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !35, metadata !DIExpression()), !dbg !36
  ret void, !dbg !37
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !38 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !44, metadata !DIExpression()), !dbg !45
  %3 = load i64, i64* %2, align 8, !dbg !46
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !47
  ret i8* %4, !dbg !48
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrdup(i8* noundef %0) #0 !dbg !49 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !52, metadata !DIExpression()), !dbg !53
  %6 = load i8*, i8** %3, align 8, !dbg !54
  %7 = icmp eq i8* %6, null, !dbg !56
  br i1 %7, label %8, label %9, !dbg !57

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !58
  br label %24, !dbg !58

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !59, metadata !DIExpression()), !dbg !60
  %10 = load i8*, i8** %3, align 8, !dbg !61
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !62
  %12 = add i64 %11, 1, !dbg !63
  store i64 %12, i64* %4, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i8** %5, metadata !64, metadata !DIExpression()), !dbg !65
  %13 = load i64, i64* %4, align 8, !dbg !66
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !67
  store i8* %14, i8** %5, align 8, !dbg !65
  %15 = load i8*, i8** %5, align 8, !dbg !68
  %16 = icmp ne i8* %15, null, !dbg !68
  br i1 %16, label %17, label %22, !dbg !70

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !71
  %19 = load i8*, i8** %3, align 8, !dbg !72
  %20 = load i64, i64* %4, align 8, !dbg !73
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !74
  br label %22, !dbg !74

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !75
  store i8* %23, i8** %2, align 8, !dbg !76
  br label %24, !dbg !76

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !77
  ret i8* %25, !dbg !77
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlElement* @xmlAddElementDecl(%struct._xmlElementDecl* noundef %0) #0 !dbg !78 {
  %2 = alloca %struct._xmlElement*, align 8
  %3 = alloca %struct._xmlElementDecl*, align 8
  %4 = alloca %struct._xmlElement*, align 8
  store %struct._xmlElementDecl* %0, %struct._xmlElementDecl** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlElementDecl** %3, metadata !88, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %4, metadata !90, metadata !DIExpression()), !dbg !91
  %5 = call i8* @xmlMalloc(i64 noundef 16), !dbg !92
  %6 = bitcast i8* %5 to %struct._xmlElement*, !dbg !93
  store %struct._xmlElement* %6, %struct._xmlElement** %4, align 8, !dbg !94
  %7 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !95
  %8 = icmp eq %struct._xmlElement* %7, null, !dbg !97
  br i1 %8, label %9, label %10, !dbg !98

9:                                                ; preds = %1
  call void @xmlVErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !99
  store %struct._xmlElement* null, %struct._xmlElement** %2, align 8, !dbg !101
  br label %37, !dbg !101

10:                                               ; preds = %1
  %11 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !102
  %12 = bitcast %struct._xmlElement* %11 to i8*, !dbg !103
  %13 = call i8* @memset(i8* %12, i32 0, i64 16), !dbg !103
  %14 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !104
  %15 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %14, i32 0, i32 0, !dbg !105
  store i32 1, i32* %15, align 8, !dbg !106
  %16 = load %struct._xmlElementDecl*, %struct._xmlElementDecl** %3, align 8, !dbg !107
  %17 = getelementptr inbounds %struct._xmlElementDecl, %struct._xmlElementDecl* %16, i32 0, i32 0, !dbg !108
  %18 = load i32, i32* %17, align 8, !dbg !108
  %19 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !109
  %20 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %19, i32 0, i32 1, !dbg !110
  store i32 %18, i32* %20, align 4, !dbg !111
  %21 = load %struct._xmlElementDecl*, %struct._xmlElementDecl** %3, align 8, !dbg !112
  %22 = getelementptr inbounds %struct._xmlElementDecl, %struct._xmlElementDecl* %21, i32 0, i32 1, !dbg !114
  %23 = load i8*, i8** %22, align 8, !dbg !114
  %24 = icmp ne i8* %23, null, !dbg !115
  br i1 %24, label %25, label %32, !dbg !116

25:                                               ; preds = %10
  %26 = load %struct._xmlElementDecl*, %struct._xmlElementDecl** %3, align 8, !dbg !117
  %27 = getelementptr inbounds %struct._xmlElementDecl, %struct._xmlElementDecl* %26, i32 0, i32 1, !dbg !118
  %28 = load i8*, i8** %27, align 8, !dbg !118
  %29 = call i8* @xmlStrdup(i8* noundef %28), !dbg !119
  %30 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !120
  %31 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %30, i32 0, i32 2, !dbg !121
  store i8* %29, i8** %31, align 8, !dbg !122
  br label %35, !dbg !120

32:                                               ; preds = %10
  %33 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !123
  %34 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %33, i32 0, i32 2, !dbg !124
  store i8* null, i8** %34, align 8, !dbg !125
  br label %35

35:                                               ; preds = %32, %25
  %36 = load %struct._xmlElement*, %struct._xmlElement** %4, align 8, !dbg !126
  store %struct._xmlElement* %36, %struct._xmlElement** %2, align 8, !dbg !127
  br label %37, !dbg !127

37:                                               ; preds = %35, %9
  %38 = load %struct._xmlElement*, %struct._xmlElement** %2, align 8, !dbg !128
  ret %struct._xmlElement* %38, !dbg !128
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !129 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlElementDecl, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlElement*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlElementDecl* %2, metadata !132, metadata !DIExpression()), !dbg !133
  %6 = getelementptr inbounds %struct._xmlElementDecl, %struct._xmlElementDecl* %2, i32 0, i32 0, !dbg !134
  %7 = bitcast i32* %6 to i8*, !dbg !135
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !136
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !137, metadata !DIExpression()), !dbg !141
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !142
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %4, metadata !144, metadata !DIExpression()), !dbg !145
  %9 = bitcast i32* %4 to i8*, !dbg !146
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0)), !dbg !147
  %10 = load i32, i32* %4, align 4, !dbg !148
  %11 = icmp eq i32 %10, 0, !dbg !149
  br i1 %11, label %15, label %12, !dbg !150

12:                                               ; preds = %0
  %13 = load i32, i32* %4, align 4, !dbg !151
  %14 = icmp eq i32 %13, 1, !dbg !152
  br label %15, !dbg !150

15:                                               ; preds = %12, %0
  %16 = phi i1 [ true, %0 ], [ %14, %12 ]
  %17 = zext i1 %16 to i32, !dbg !150
  %18 = sext i32 %17 to i64, !dbg !148
  call void @klee_assume(i64 noundef %18), !dbg !153
  %19 = load i32, i32* %4, align 4, !dbg !154
  %20 = icmp ne i32 %19, 0, !dbg !154
  br i1 %20, label %21, label %23, !dbg !156

21:                                               ; preds = %15
  %22 = getelementptr inbounds %struct._xmlElementDecl, %struct._xmlElementDecl* %2, i32 0, i32 1, !dbg !157
  store i8* null, i8** %22, align 8, !dbg !159
  br label %27, !dbg !160

23:                                               ; preds = %15
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !161
  %25 = getelementptr inbounds %struct._xmlElementDecl, %struct._xmlElementDecl* %2, i32 0, i32 1, !dbg !163
  store i8* %24, i8** %25, align 8, !dbg !164
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !165
  store i8 0, i8* %26, align 1, !dbg !166
  br label %27

27:                                               ; preds = %23, %21
  call void @llvm.dbg.declare(metadata %struct._xmlElement** %5, metadata !167, metadata !DIExpression()), !dbg !168
  %28 = call %struct._xmlElement* @xmlAddElementDecl(%struct._xmlElementDecl* noundef %2), !dbg !169
  store %struct._xmlElement* %28, %struct._xmlElement** %5, align 8, !dbg !168
  %29 = load %struct._xmlElement*, %struct._xmlElement** %5, align 8, !dbg !170
  %30 = icmp ne %struct._xmlElement* %29, null, !dbg !172
  br i1 %30, label %31, label %38, !dbg !173

31:                                               ; preds = %27
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !174
  %33 = load %struct._xmlElement*, %struct._xmlElement** %5, align 8, !dbg !176
  %34 = getelementptr inbounds %struct._xmlElement, %struct._xmlElement* %33, i32 0, i32 2, !dbg !177
  %35 = load i8*, i8** %34, align 8, !dbg !177
  call void @free(i8* noundef %35) #9, !dbg !178
  %36 = load %struct._xmlElement*, %struct._xmlElement** %5, align 8, !dbg !179
  %37 = bitcast %struct._xmlElement* %36 to i8*, !dbg !179
  call void @free(i8* noundef %37) #9, !dbg !180
  br label %38, !dbg !181

38:                                               ; preds = %31, %27
  ret i32 0, !dbg !182
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #7

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !183 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !189, metadata !DIExpression()), !dbg !190
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !191, metadata !DIExpression()), !dbg !192
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i8** %7, metadata !195, metadata !DIExpression()), !dbg !196
  %9 = load i8*, i8** %4, align 8, !dbg !197
  store i8* %9, i8** %7, align 8, !dbg !196
  call void @llvm.dbg.declare(metadata i8** %8, metadata !198, metadata !DIExpression()), !dbg !199
  %10 = load i8*, i8** %5, align 8, !dbg !200
  store i8* %10, i8** %8, align 8, !dbg !199
  br label %11, !dbg !201

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !202
  %13 = add i64 %12, -1, !dbg !202
  store i64 %13, i64* %6, align 8, !dbg !202
  %14 = icmp ugt i64 %12, 0, !dbg !203
  br i1 %14, label %15, label %21, !dbg !201

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !204
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !204
  store i8* %17, i8** %8, align 8, !dbg !204
  %18 = load i8, i8* %16, align 1, !dbg !205
  %19 = load i8*, i8** %7, align 8, !dbg !206
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !206
  store i8* %20, i8** %7, align 8, !dbg !206
  store i8 %18, i8* %19, align 1, !dbg !207
  br label %11, !dbg !201, !llvm.loop !208

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !210
  ret i8* %22, !dbg !211
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !212 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !216, metadata !DIExpression()), !dbg !217
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !218, metadata !DIExpression()), !dbg !219
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !220, metadata !DIExpression()), !dbg !221
  call void @llvm.dbg.declare(metadata i8** %7, metadata !222, metadata !DIExpression()), !dbg !223
  %8 = load i8*, i8** %4, align 8, !dbg !224
  store i8* %8, i8** %7, align 8, !dbg !223
  br label %9, !dbg !225

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !226
  %11 = add i64 %10, -1, !dbg !226
  store i64 %11, i64* %6, align 8, !dbg !226
  %12 = icmp ugt i64 %10, 0, !dbg !227
  br i1 %12, label %13, label %18, !dbg !225

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !228
  %15 = trunc i32 %14 to i8, !dbg !228
  %16 = load i8*, i8** %7, align 8, !dbg !229
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !229
  store i8* %17, i8** %7, align 8, !dbg !229
  store i8 %15, i8* %16, align 1, !dbg !230
  br label %9, !dbg !225, !llvm.loop !231

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !232
  ret i8* %19, !dbg !233
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/273_valid.c_1509_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "c49a54143d35c95cd620cb9b621795e5")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementPtr", file: !1, line: 11, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElement", file: !1, line: 10, baseType: !9)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElement", file: !1, line: 15, size: 128, elements: !10)
!10 = !{!11, !13, !14}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !9, file: !1, line: 16, baseType: !12, size: 32)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !9, file: !1, line: 17, baseType: !12, size: 32, offset: 32)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !9, file: !1, line: 18, baseType: !4, size: 64, offset: 64)
!15 = distinct !DICompileUnit(language: DW_LANG_C99, file: !16, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!16 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlVErrMemory", scope: !1, file: !1, line: 27, type: !28, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !3, !30}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!32 = !{}
!33 = !DILocalVariable(name: "ctxt", arg: 1, scope: !27, file: !1, line: 27, type: !3)
!34 = !DILocation(line: 27, column: 26, scope: !27)
!35 = !DILocalVariable(name: "msg", arg: 2, scope: !27, file: !1, line: 27, type: !30)
!36 = !DILocation(line: 27, column: 44, scope: !27)
!37 = !DILocation(line: 29, column: 1, scope: !27)
!38 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!39 = !DISubroutineType(types: !40)
!40 = !{!3, !41}
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !42, line: 46, baseType: !43)
!42 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!43 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!44 = !DILocalVariable(name: "size", arg: 1, scope: !38, file: !1, line: 31, type: !41)
!45 = !DILocation(line: 31, column: 24, scope: !38)
!46 = !DILocation(line: 32, column: 19, scope: !38)
!47 = !DILocation(line: 32, column: 12, scope: !38)
!48 = !DILocation(line: 32, column: 5, scope: !38)
!49 = distinct !DISubprogram(name: "xmlStrdup", scope: !1, file: !1, line: 35, type: !50, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!50 = !DISubroutineType(types: !51)
!51 = !{!4, !30}
!52 = !DILocalVariable(name: "cur", arg: 1, scope: !49, file: !1, line: 35, type: !30)
!53 = !DILocation(line: 35, column: 29, scope: !49)
!54 = !DILocation(line: 36, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !49, file: !1, line: 36, column: 9)
!56 = !DILocation(line: 36, column: 13, scope: !55)
!57 = !DILocation(line: 36, column: 9, scope: !49)
!58 = !DILocation(line: 36, column: 22, scope: !55)
!59 = !DILocalVariable(name: "len", scope: !49, file: !1, line: 37, type: !41)
!60 = !DILocation(line: 37, column: 12, scope: !49)
!61 = !DILocation(line: 37, column: 25, scope: !49)
!62 = !DILocation(line: 37, column: 18, scope: !49)
!63 = !DILocation(line: 37, column: 30, scope: !49)
!64 = !DILocalVariable(name: "res", scope: !49, file: !1, line: 38, type: !4)
!65 = !DILocation(line: 38, column: 11, scope: !49)
!66 = !DILocation(line: 38, column: 31, scope: !49)
!67 = !DILocation(line: 38, column: 24, scope: !49)
!68 = !DILocation(line: 39, column: 9, scope: !69)
!69 = distinct !DILexicalBlock(scope: !49, file: !1, line: 39, column: 9)
!70 = !DILocation(line: 39, column: 9, scope: !49)
!71 = !DILocation(line: 39, column: 21, scope: !69)
!72 = !DILocation(line: 39, column: 26, scope: !69)
!73 = !DILocation(line: 39, column: 31, scope: !69)
!74 = !DILocation(line: 39, column: 14, scope: !69)
!75 = !DILocation(line: 40, column: 12, scope: !49)
!76 = !DILocation(line: 40, column: 5, scope: !49)
!77 = !DILocation(line: 41, column: 1, scope: !49)
!78 = distinct !DISubprogram(name: "xmlAddElementDecl", scope: !1, file: !1, line: 44, type: !79, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!79 = !DISubroutineType(types: !80)
!80 = !{!6, !81}
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementDeclPtr", file: !1, line: 13, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlElementDecl", file: !1, line: 12, baseType: !84)
!84 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlElementDecl", file: !1, line: 21, size: 128, elements: !85)
!85 = !{!86, !87}
!86 = !DIDerivedType(tag: DW_TAG_member, name: "etype", scope: !84, file: !1, line: 22, baseType: !12, size: 32)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !84, file: !1, line: 23, baseType: !4, size: 64, offset: 64)
!88 = !DILocalVariable(name: "elem", arg: 1, scope: !78, file: !1, line: 44, type: !81)
!89 = !DILocation(line: 44, column: 51, scope: !78)
!90 = !DILocalVariable(name: "cur", scope: !78, file: !1, line: 45, type: !6)
!91 = !DILocation(line: 45, column: 19, scope: !78)
!92 = !DILocation(line: 47, column: 27, scope: !78)
!93 = !DILocation(line: 47, column: 11, scope: !78)
!94 = !DILocation(line: 47, column: 9, scope: !78)
!95 = !DILocation(line: 48, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !78, file: !1, line: 48, column: 9)
!97 = !DILocation(line: 48, column: 13, scope: !96)
!98 = !DILocation(line: 48, column: 9, scope: !78)
!99 = !DILocation(line: 49, column: 9, scope: !100)
!100 = distinct !DILexicalBlock(scope: !96, file: !1, line: 48, column: 22)
!101 = !DILocation(line: 50, column: 9, scope: !100)
!102 = !DILocation(line: 54, column: 12, scope: !78)
!103 = !DILocation(line: 54, column: 5, scope: !78)
!104 = !DILocation(line: 56, column: 5, scope: !78)
!105 = !DILocation(line: 56, column: 10, scope: !78)
!106 = !DILocation(line: 56, column: 15, scope: !78)
!107 = !DILocation(line: 57, column: 18, scope: !78)
!108 = !DILocation(line: 57, column: 24, scope: !78)
!109 = !DILocation(line: 57, column: 5, scope: !78)
!110 = !DILocation(line: 57, column: 10, scope: !78)
!111 = !DILocation(line: 57, column: 16, scope: !78)
!112 = !DILocation(line: 58, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !78, file: !1, line: 58, column: 9)
!114 = !DILocation(line: 58, column: 15, scope: !113)
!115 = !DILocation(line: 58, column: 20, scope: !113)
!116 = !DILocation(line: 58, column: 9, scope: !78)
!117 = !DILocation(line: 59, column: 31, scope: !113)
!118 = !DILocation(line: 59, column: 37, scope: !113)
!119 = !DILocation(line: 59, column: 21, scope: !113)
!120 = !DILocation(line: 59, column: 9, scope: !113)
!121 = !DILocation(line: 59, column: 14, scope: !113)
!122 = !DILocation(line: 59, column: 19, scope: !113)
!123 = !DILocation(line: 61, column: 9, scope: !113)
!124 = !DILocation(line: 61, column: 14, scope: !113)
!125 = !DILocation(line: 61, column: 19, scope: !113)
!126 = !DILocation(line: 63, column: 12, scope: !78)
!127 = !DILocation(line: 63, column: 5, scope: !78)
!128 = !DILocation(line: 64, column: 1, scope: !78)
!129 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !130, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !32)
!130 = !DISubroutineType(types: !131)
!131 = !{!12}
!132 = !DILocalVariable(name: "elem", scope: !129, file: !1, line: 68, type: !83)
!133 = !DILocation(line: 68, column: 20, scope: !129)
!134 = !DILocation(line: 71, column: 30, scope: !129)
!135 = !DILocation(line: 71, column: 24, scope: !129)
!136 = !DILocation(line: 71, column: 5, scope: !129)
!137 = !DILocalVariable(name: "name_buf", scope: !129, file: !1, line: 74, type: !138)
!138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !5, size: 2048, elements: !139)
!139 = !{!140}
!140 = !DISubrange(count: 256)
!141 = !DILocation(line: 74, column: 10, scope: !129)
!142 = !DILocation(line: 75, column: 24, scope: !129)
!143 = !DILocation(line: 75, column: 5, scope: !129)
!144 = !DILocalVariable(name: "name_is_null", scope: !129, file: !1, line: 78, type: !12)
!145 = !DILocation(line: 78, column: 9, scope: !129)
!146 = !DILocation(line: 79, column: 24, scope: !129)
!147 = !DILocation(line: 79, column: 5, scope: !129)
!148 = !DILocation(line: 80, column: 17, scope: !129)
!149 = !DILocation(line: 80, column: 30, scope: !129)
!150 = !DILocation(line: 80, column: 35, scope: !129)
!151 = !DILocation(line: 80, column: 38, scope: !129)
!152 = !DILocation(line: 80, column: 51, scope: !129)
!153 = !DILocation(line: 80, column: 5, scope: !129)
!154 = !DILocation(line: 82, column: 9, scope: !155)
!155 = distinct !DILexicalBlock(scope: !129, file: !1, line: 82, column: 9)
!156 = !DILocation(line: 82, column: 9, scope: !129)
!157 = !DILocation(line: 83, column: 14, scope: !158)
!158 = distinct !DILexicalBlock(scope: !155, file: !1, line: 82, column: 23)
!159 = !DILocation(line: 83, column: 19, scope: !158)
!160 = !DILocation(line: 84, column: 5, scope: !158)
!161 = !DILocation(line: 85, column: 21, scope: !162)
!162 = distinct !DILexicalBlock(scope: !155, file: !1, line: 84, column: 12)
!163 = !DILocation(line: 85, column: 14, scope: !162)
!164 = !DILocation(line: 85, column: 19, scope: !162)
!165 = !DILocation(line: 87, column: 9, scope: !162)
!166 = !DILocation(line: 87, column: 23, scope: !162)
!167 = !DILocalVariable(name: "result", scope: !129, file: !1, line: 91, type: !6)
!168 = !DILocation(line: 91, column: 19, scope: !129)
!169 = !DILocation(line: 91, column: 28, scope: !129)
!170 = !DILocation(line: 96, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !129, file: !1, line: 96, column: 9)
!172 = !DILocation(line: 96, column: 16, scope: !171)
!173 = !DILocation(line: 96, column: 9, scope: !129)
!174 = !DILocation(line: 105, column: 9, scope: !175)
!175 = distinct !DILexicalBlock(scope: !171, file: !1, line: 96, column: 25)
!176 = !DILocation(line: 108, column: 14, scope: !175)
!177 = !DILocation(line: 108, column: 22, scope: !175)
!178 = !DILocation(line: 108, column: 9, scope: !175)
!179 = !DILocation(line: 109, column: 14, scope: !175)
!180 = !DILocation(line: 109, column: 9, scope: !175)
!181 = !DILocation(line: 110, column: 5, scope: !175)
!182 = !DILocation(line: 112, column: 5, scope: !129)
!183 = distinct !DISubprogram(name: "memcpy", scope: !184, file: !184, line: 12, type: !185, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !15, retainedNodes: !32)
!184 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!185 = !DISubroutineType(types: !186)
!186 = !{!3, !3, !187, !41}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!189 = !DILocalVariable(name: "destaddr", arg: 1, scope: !183, file: !184, line: 12, type: !3)
!190 = !DILocation(line: 12, column: 20, scope: !183)
!191 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !183, file: !184, line: 12, type: !187)
!192 = !DILocation(line: 12, column: 42, scope: !183)
!193 = !DILocalVariable(name: "len", arg: 3, scope: !183, file: !184, line: 12, type: !41)
!194 = !DILocation(line: 12, column: 58, scope: !183)
!195 = !DILocalVariable(name: "dest", scope: !183, file: !184, line: 13, type: !4)
!196 = !DILocation(line: 13, column: 9, scope: !183)
!197 = !DILocation(line: 13, column: 16, scope: !183)
!198 = !DILocalVariable(name: "src", scope: !183, file: !184, line: 14, type: !30)
!199 = !DILocation(line: 14, column: 15, scope: !183)
!200 = !DILocation(line: 14, column: 21, scope: !183)
!201 = !DILocation(line: 16, column: 3, scope: !183)
!202 = !DILocation(line: 16, column: 13, scope: !183)
!203 = !DILocation(line: 16, column: 16, scope: !183)
!204 = !DILocation(line: 17, column: 19, scope: !183)
!205 = !DILocation(line: 17, column: 15, scope: !183)
!206 = !DILocation(line: 17, column: 10, scope: !183)
!207 = !DILocation(line: 17, column: 13, scope: !183)
!208 = distinct !{!208, !201, !204, !209}
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 18, column: 10, scope: !183)
!211 = !DILocation(line: 18, column: 3, scope: !183)
!212 = distinct !DISubprogram(name: "memset", scope: !213, file: !213, line: 12, type: !214, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !32)
!213 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!214 = !DISubroutineType(types: !215)
!215 = !{!3, !3, !12, !41}
!216 = !DILocalVariable(name: "dst", arg: 1, scope: !212, file: !213, line: 12, type: !3)
!217 = !DILocation(line: 12, column: 20, scope: !212)
!218 = !DILocalVariable(name: "s", arg: 2, scope: !212, file: !213, line: 12, type: !12)
!219 = !DILocation(line: 12, column: 29, scope: !212)
!220 = !DILocalVariable(name: "count", arg: 3, scope: !212, file: !213, line: 12, type: !41)
!221 = !DILocation(line: 12, column: 39, scope: !212)
!222 = !DILocalVariable(name: "a", scope: !212, file: !213, line: 13, type: !4)
!223 = !DILocation(line: 13, column: 9, scope: !212)
!224 = !DILocation(line: 13, column: 13, scope: !212)
!225 = !DILocation(line: 14, column: 3, scope: !212)
!226 = !DILocation(line: 14, column: 15, scope: !212)
!227 = !DILocation(line: 14, column: 18, scope: !212)
!228 = !DILocation(line: 15, column: 12, scope: !212)
!229 = !DILocation(line: 15, column: 7, scope: !212)
!230 = !DILocation(line: 15, column: 10, scope: !212)
!231 = distinct !{!231, !225, !228, !209}
!232 = !DILocation(line: 16, column: 10, scope: !212)
!233 = !DILocation(line: 16, column: 3, scope: !212)

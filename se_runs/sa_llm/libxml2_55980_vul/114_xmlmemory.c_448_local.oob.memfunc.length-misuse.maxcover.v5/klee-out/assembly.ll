; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/114_xmlmemory.c_448_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/114_xmlmemory.c_448_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlMemHdr = type { i32, i32, i64, %struct._xmlMemHdr*, %struct._xmlMemHdr*, i8*, i32 }

@xmlMemStopAtBlock = dso_local global i32 0, align 4, !dbg !0
@xmlMemMutex = dso_local global i8* null, align 8, !dbg !25
@debugMemSize = dso_local global i64 0, align 8, !dbg !27
@debugMemBlocks = dso_local global i32 0, align 4, !dbg !29
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"(p->mh_size <= p->mh_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_55980_vul/114_xmlmemory.c_448_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlMemFree = private unnamed_addr constant [24 x i8] c"void xmlMemFree(void *)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"mh_tag\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"mh_number\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"mh_size\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @Mem_Tag_Err(%struct._xmlMemHdr* noundef %0) #0 !dbg !44 {
  %2 = alloca %struct._xmlMemHdr*, align 8
  store %struct._xmlMemHdr* %0, %struct._xmlMemHdr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlMemHdr** %2, metadata !48, metadata !DIExpression()), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlMallocBreakpoint() #0 !dbg !51 {
  ret void, !dbg !54
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlMutexLock(i8* noundef %0) #0 !dbg !55 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !58, metadata !DIExpression()), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @debugmem_list_delete(%struct._xmlMemHdr* noundef %0) #0 !dbg !61 {
  %2 = alloca %struct._xmlMemHdr*, align 8
  store %struct._xmlMemHdr* %0, %struct._xmlMemHdr** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlMemHdr** %2, metadata !62, metadata !DIExpression()), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlMemFree(i8* noundef %0) #0 !dbg !65 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct._xmlMemHdr*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !66, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.declare(metadata %struct._xmlMemHdr** %3, metadata !68, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i8** %4, metadata !70, metadata !DIExpression()), !dbg !71
  %5 = load i8*, i8** %2, align 8, !dbg !72
  %6 = icmp eq i8* %5, null, !dbg !74
  br i1 %6, label %7, label %8, !dbg !75

7:                                                ; preds = %1
  br label %55, !dbg !76

8:                                                ; preds = %1
  %9 = load i8*, i8** %2, align 8, !dbg !77
  %10 = getelementptr inbounds i8, i8* %9, i64 -48, !dbg !77
  %11 = bitcast i8* %10 to %struct._xmlMemHdr*, !dbg !77
  store %struct._xmlMemHdr* %11, %struct._xmlMemHdr** %3, align 8, !dbg !78
  %12 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !79
  %13 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %12, i32 0, i32 0, !dbg !81
  %14 = load i32, i32* %13, align 8, !dbg !81
  %15 = icmp ne i32 %14, 23205, !dbg !82
  br i1 %15, label %16, label %18, !dbg !83

16:                                               ; preds = %8
  %17 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !84
  call void @Mem_Tag_Err(%struct._xmlMemHdr* noundef %17), !dbg !86
  br label %55, !dbg !87

18:                                               ; preds = %8
  %19 = load i32, i32* @xmlMemStopAtBlock, align 4, !dbg !88
  %20 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !90
  %21 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %20, i32 0, i32 1, !dbg !91
  %22 = load i32, i32* %21, align 4, !dbg !91
  %23 = icmp eq i32 %19, %22, !dbg !92
  br i1 %23, label %24, label %25, !dbg !93

24:                                               ; preds = %18
  call void @xmlMallocBreakpoint(), !dbg !94
  br label %25, !dbg !94

25:                                               ; preds = %24, %18
  %26 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !95
  %27 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %26, i32 0, i32 0, !dbg !96
  store i32 -23206, i32* %27, align 8, !dbg !97
  %28 = load i8*, i8** %2, align 8, !dbg !98
  store i8* %28, i8** %4, align 8, !dbg !99
  %29 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !100
  %30 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %29, i32 0, i32 2, !dbg !100
  %31 = load i64, i64* %30, align 8, !dbg !100
  %32 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !100
  %33 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %32, i32 0, i32 2, !dbg !100
  %34 = load i64, i64* %33, align 8, !dbg !100
  %35 = icmp ule i64 %31, %34, !dbg !100
  br i1 %35, label %36, label %38, !dbg !100

36:                                               ; preds = %25
  br i1 true, label %37, label %38, !dbg !100

37:                                               ; preds = %36
  br label %40, !dbg !100

38:                                               ; preds = %36, %25
  %39 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 58, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.xmlMemFree, i64 0, i64 0)), !dbg !100
  br label %40, !dbg !100

40:                                               ; preds = %38, %37
  %41 = load i8*, i8** %4, align 8, !dbg !101
  %42 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !102
  %43 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %42, i32 0, i32 2, !dbg !103
  %44 = load i64, i64* %43, align 8, !dbg !103
  %45 = call i8* @memset(i8* %41, i32 255, i64 %44), !dbg !104
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([24 x i8], [24 x i8]* @__PRETTY_FUNCTION__.xmlMemFree, i64 0, i64 0)), !dbg !105
  %47 = load i8*, i8** @xmlMemMutex, align 8, !dbg !106
  call void @xmlMutexLock(i8* noundef %47), !dbg !107
  %48 = load %struct._xmlMemHdr*, %struct._xmlMemHdr** %3, align 8, !dbg !108
  %49 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %48, i32 0, i32 2, !dbg !109
  %50 = load i64, i64* %49, align 8, !dbg !109
  %51 = load i64, i64* @debugMemSize, align 8, !dbg !110
  %52 = sub i64 %51, %50, !dbg !110
  store i64 %52, i64* @debugMemSize, align 8, !dbg !110
  %53 = load i32, i32* @debugMemBlocks, align 4, !dbg !111
  %54 = add nsw i32 %53, -1, !dbg !111
  store i32 %54, i32* @debugMemBlocks, align 4, !dbg !111
  br label %55, !dbg !112

55:                                               ; preds = %40, %16, %7
  ret void, !dbg !112
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #2

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !113 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlMemHdr, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlMemHdr* %2, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i8** %3, metadata !118, metadata !DIExpression()), !dbg !119
  call void @llvm.dbg.declare(metadata i64* %4, metadata !120, metadata !DIExpression()), !dbg !121
  %6 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 0, !dbg !122
  %7 = bitcast i32* %6 to i8*, !dbg !123
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0)), !dbg !124
  %8 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 1, !dbg !125
  %9 = bitcast i32* %8 to i8*, !dbg !126
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0)), !dbg !127
  %10 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 2, !dbg !128
  %11 = bitcast i64* %10 to i8*, !dbg !129
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0)), !dbg !130
  %12 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 0, !dbg !131
  %13 = load i32, i32* %12, align 8, !dbg !131
  %14 = icmp eq i32 %13, 23205, !dbg !132
  %15 = zext i1 %14 to i32, !dbg !132
  %16 = sext i32 %15 to i64, !dbg !133
  call void @klee_assume(i64 noundef %16), !dbg !134
  %17 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 2, !dbg !135
  %18 = load i64, i64* %17, align 8, !dbg !135
  %19 = icmp ugt i64 %18, 0, !dbg !136
  %20 = zext i1 %19 to i32, !dbg !136
  %21 = sext i32 %20 to i64, !dbg !137
  call void @klee_assume(i64 noundef %21), !dbg !138
  %22 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 2, !dbg !139
  %23 = load i64, i64* %22, align 8, !dbg !139
  %24 = icmp ult i64 %23, 1024, !dbg !140
  %25 = zext i1 %24 to i32, !dbg !140
  %26 = sext i32 %25 to i64, !dbg !141
  call void @klee_assume(i64 noundef %26), !dbg !142
  %27 = getelementptr inbounds %struct._xmlMemHdr, %struct._xmlMemHdr* %2, i32 0, i32 2, !dbg !143
  %28 = load i64, i64* %27, align 8, !dbg !143
  %29 = add i64 48, %28, !dbg !144
  store i64 %29, i64* %4, align 8, !dbg !145
  %30 = load i64, i64* %4, align 8, !dbg !146
  %31 = call noalias i8* @malloc(i64 noundef %30) #8, !dbg !147
  store i8* %31, i8** %3, align 8, !dbg !148
  %32 = load i8*, i8** %3, align 8, !dbg !149
  %33 = icmp ne i8* %32, null, !dbg !149
  br i1 %33, label %35, label %34, !dbg !151

34:                                               ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !152
  br label %43, !dbg !152

35:                                               ; preds = %0
  %36 = load i8*, i8** %3, align 8, !dbg !153
  %37 = bitcast %struct._xmlMemHdr* %2 to i8*, !dbg !154
  %38 = call i8* @memcpy(i8* %36, i8* %37, i64 48), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %5, metadata !155, metadata !DIExpression()), !dbg !156
  %39 = load i8*, i8** %3, align 8, !dbg !157
  %40 = getelementptr inbounds i8, i8* %39, i64 48, !dbg !158
  store i8* %40, i8** %5, align 8, !dbg !156
  %41 = load i8*, i8** %5, align 8, !dbg !159
  call void @xmlMemFree(i8* noundef %41), !dbg !160
  %42 = load i8*, i8** %3, align 8, !dbg !161
  call void @free(i8* noundef %42) #8, !dbg !162
  store i32 0, i32* %1, align 4, !dbg !163
  br label %43, !dbg !163

43:                                               ; preds = %35, %34
  %44 = load i32, i32* %1, align 4, !dbg !164
  ret i32 %44, !dbg !164
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !165 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !171, metadata !DIExpression()), !dbg !172
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !173, metadata !DIExpression()), !dbg !174
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !175, metadata !DIExpression()), !dbg !176
  call void @llvm.dbg.declare(metadata i8** %7, metadata !177, metadata !DIExpression()), !dbg !178
  %9 = load i8*, i8** %4, align 8, !dbg !179
  store i8* %9, i8** %7, align 8, !dbg !178
  call void @llvm.dbg.declare(metadata i8** %8, metadata !180, metadata !DIExpression()), !dbg !181
  %10 = load i8*, i8** %5, align 8, !dbg !182
  store i8* %10, i8** %8, align 8, !dbg !181
  br label %11, !dbg !183

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !184
  %13 = add i64 %12, -1, !dbg !184
  store i64 %13, i64* %6, align 8, !dbg !184
  %14 = icmp ugt i64 %12, 0, !dbg !185
  br i1 %14, label %15, label %21, !dbg !183

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !186
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !186
  store i8* %17, i8** %8, align 8, !dbg !186
  %18 = load i8, i8* %16, align 1, !dbg !187
  %19 = load i8*, i8** %7, align 8, !dbg !188
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !188
  store i8* %20, i8** %7, align 8, !dbg !188
  store i8 %18, i8* %19, align 1, !dbg !189
  br label %11, !dbg !183, !llvm.loop !190

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !192
  ret i8* %22, !dbg !193
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !194 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !198, metadata !DIExpression()), !dbg !199
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !200, metadata !DIExpression()), !dbg !201
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !202, metadata !DIExpression()), !dbg !203
  call void @llvm.dbg.declare(metadata i8** %7, metadata !204, metadata !DIExpression()), !dbg !205
  %8 = load i8*, i8** %4, align 8, !dbg !206
  store i8* %8, i8** %7, align 8, !dbg !205
  br label %9, !dbg !207

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !208
  %11 = add i64 %10, -1, !dbg !208
  store i64 %11, i64* %6, align 8, !dbg !208
  %12 = icmp ugt i64 %10, 0, !dbg !209
  br i1 %12, label %13, label %18, !dbg !207

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !210
  %15 = trunc i32 %14 to i8, !dbg !210
  %16 = load i8*, i8** %7, align 8, !dbg !211
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !211
  store i8* %17, i8** %7, align 8, !dbg !211
  store i8 %15, i8* %16, align 1, !dbg !212
  br label %9, !dbg !207, !llvm.loop !213

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !214
  ret i8* %19, !dbg !215
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43, !43, !43}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlMemStopAtBlock", scope: !2, file: !3, line: 24, type: !31, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !24, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/114_xmlmemory.c_448_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9e50744882ac9c68ab41337a778c78f5")
!4 = !{!5, !6, !23}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlMemHdr", file: !3, line: 13, size: 384, elements: !8)
!8 = !{!9, !11, !12, !16, !17, !18, !22}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "mh_tag", scope: !7, file: !3, line: 14, baseType: !10, size: 32)
!10 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "mh_number", scope: !7, file: !3, line: 15, baseType: !10, size: 32, offset: 32)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "mh_size", scope: !7, file: !3, line: 16, baseType: !13, size: 64, offset: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !14, line: 46, baseType: !15)
!14 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!15 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "mh_next", scope: !7, file: !3, line: 17, baseType: !6, size: 64, offset: 128)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "mh_prev", scope: !7, file: !3, line: 18, baseType: !6, size: 64, offset: 192)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "mh_file", scope: !7, file: !3, line: 19, baseType: !19, size: 64, offset: 256)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "mh_line", scope: !7, file: !3, line: 20, baseType: !10, size: 32, offset: 320)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!24 = !{!0, !25, !27, !29}
!25 = !DIGlobalVariableExpression(var: !26, expr: !DIExpression())
!26 = distinct !DIGlobalVariable(name: "xmlMemMutex", scope: !2, file: !3, line: 25, type: !5, isLocal: false, isDefinition: true)
!27 = !DIGlobalVariableExpression(var: !28, expr: !DIExpression())
!28 = distinct !DIGlobalVariable(name: "debugMemSize", scope: !2, file: !3, line: 26, type: !13, isLocal: false, isDefinition: true)
!29 = !DIGlobalVariableExpression(var: !30, expr: !DIExpression())
!30 = distinct !DIGlobalVariable(name: "debugMemBlocks", scope: !2, file: !3, line: 27, type: !31, isLocal: false, isDefinition: true)
!31 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!32 = distinct !DICompileUnit(language: DW_LANG_C99, file: !33, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!33 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!34 = distinct !DICompileUnit(language: DW_LANG_C99, file: !35, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!35 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!36 = !{i32 7, !"Dwarf Version", i32 5}
!37 = !{i32 2, !"Debug Info Version", i32 3}
!38 = !{i32 1, !"wchar_size", i32 4}
!39 = !{i32 7, !"PIC Level", i32 2}
!40 = !{i32 7, !"PIE Level", i32 2}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"Ubuntu clang version 14.0.6"}
!44 = distinct !DISubprogram(name: "Mem_Tag_Err", scope: !3, file: !3, line: 30, type: !45, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !6}
!47 = !{}
!48 = !DILocalVariable(name: "p", arg: 1, scope: !44, file: !3, line: 30, type: !6)
!49 = !DILocation(line: 30, column: 37, scope: !44)
!50 = !DILocation(line: 30, column: 42, scope: !44)
!51 = distinct !DISubprogram(name: "xmlMallocBreakpoint", scope: !3, file: !3, line: 31, type: !52, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!52 = !DISubroutineType(types: !53)
!53 = !{null}
!54 = !DILocation(line: 31, column: 34, scope: !51)
!55 = distinct !DISubprogram(name: "xmlMutexLock", scope: !3, file: !3, line: 32, type: !56, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !5}
!58 = !DILocalVariable(name: "mutex", arg: 1, scope: !55, file: !3, line: 32, type: !5)
!59 = !DILocation(line: 32, column: 25, scope: !55)
!60 = !DILocation(line: 32, column: 34, scope: !55)
!61 = distinct !DISubprogram(name: "debugmem_list_delete", scope: !3, file: !3, line: 33, type: !45, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!62 = !DILocalVariable(name: "p", arg: 1, scope: !61, file: !3, line: 33, type: !6)
!63 = !DILocation(line: 33, column: 46, scope: !61)
!64 = !DILocation(line: 33, column: 51, scope: !61)
!65 = distinct !DISubprogram(name: "xmlMemFree", scope: !3, file: !3, line: 36, type: !56, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!66 = !DILocalVariable(name: "ptr", arg: 1, scope: !65, file: !3, line: 36, type: !5)
!67 = !DILocation(line: 36, column: 23, scope: !65)
!68 = !DILocalVariable(name: "p", scope: !65, file: !3, line: 37, type: !6)
!69 = !DILocation(line: 37, column: 24, scope: !65)
!70 = !DILocalVariable(name: "target", scope: !65, file: !3, line: 38, type: !23)
!71 = !DILocation(line: 38, column: 11, scope: !65)
!72 = !DILocation(line: 40, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !65, file: !3, line: 40, column: 9)
!74 = !DILocation(line: 40, column: 13, scope: !73)
!75 = !DILocation(line: 40, column: 9, scope: !65)
!76 = !DILocation(line: 41, column: 9, scope: !73)
!77 = !DILocation(line: 43, column: 9, scope: !65)
!78 = !DILocation(line: 43, column: 7, scope: !65)
!79 = !DILocation(line: 44, column: 9, scope: !80)
!80 = distinct !DILexicalBlock(scope: !65, file: !3, line: 44, column: 9)
!81 = !DILocation(line: 44, column: 12, scope: !80)
!82 = !DILocation(line: 44, column: 19, scope: !80)
!83 = !DILocation(line: 44, column: 9, scope: !65)
!84 = !DILocation(line: 45, column: 21, scope: !85)
!85 = distinct !DILexicalBlock(scope: !80, file: !3, line: 44, column: 30)
!86 = !DILocation(line: 45, column: 9, scope: !85)
!87 = !DILocation(line: 46, column: 9, scope: !85)
!88 = !DILocation(line: 49, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !65, file: !3, line: 49, column: 9)
!90 = !DILocation(line: 49, column: 30, scope: !89)
!91 = !DILocation(line: 49, column: 33, scope: !89)
!92 = !DILocation(line: 49, column: 27, scope: !89)
!93 = !DILocation(line: 49, column: 9, scope: !65)
!94 = !DILocation(line: 50, column: 9, scope: !89)
!95 = !DILocation(line: 52, column: 5, scope: !65)
!96 = !DILocation(line: 52, column: 8, scope: !65)
!97 = !DILocation(line: 52, column: 15, scope: !65)
!98 = !DILocation(line: 55, column: 21, scope: !65)
!99 = !DILocation(line: 55, column: 12, scope: !65)
!100 = !DILocation(line: 58, column: 5, scope: !65)
!101 = !DILocation(line: 61, column: 12, scope: !65)
!102 = !DILocation(line: 61, column: 24, scope: !65)
!103 = !DILocation(line: 61, column: 27, scope: !65)
!104 = !DILocation(line: 61, column: 5, scope: !65)
!105 = !DILocation(line: 64, column: 5, scope: !65)
!106 = !DILocation(line: 66, column: 18, scope: !65)
!107 = !DILocation(line: 66, column: 5, scope: !65)
!108 = !DILocation(line: 67, column: 21, scope: !65)
!109 = !DILocation(line: 67, column: 24, scope: !65)
!110 = !DILocation(line: 67, column: 18, scope: !65)
!111 = !DILocation(line: 68, column: 19, scope: !65)
!112 = !DILocation(line: 69, column: 1, scope: !65)
!113 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 71, type: !114, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !47)
!114 = !DISubroutineType(types: !115)
!115 = !{!31}
!116 = !DILocalVariable(name: "header", scope: !113, file: !3, line: 73, type: !7)
!117 = !DILocation(line: 73, column: 23, scope: !113)
!118 = !DILocalVariable(name: "client_ptr", scope: !113, file: !3, line: 74, type: !23)
!119 = !DILocation(line: 74, column: 11, scope: !113)
!120 = !DILocalVariable(name: "alloc_size", scope: !113, file: !3, line: 75, type: !13)
!121 = !DILocation(line: 75, column: 12, scope: !113)
!122 = !DILocation(line: 78, column: 32, scope: !113)
!123 = !DILocation(line: 78, column: 24, scope: !113)
!124 = !DILocation(line: 78, column: 5, scope: !113)
!125 = !DILocation(line: 79, column: 32, scope: !113)
!126 = !DILocation(line: 79, column: 24, scope: !113)
!127 = !DILocation(line: 79, column: 5, scope: !113)
!128 = !DILocation(line: 80, column: 32, scope: !113)
!129 = !DILocation(line: 80, column: 24, scope: !113)
!130 = !DILocation(line: 80, column: 5, scope: !113)
!131 = !DILocation(line: 83, column: 24, scope: !113)
!132 = !DILocation(line: 83, column: 31, scope: !113)
!133 = !DILocation(line: 83, column: 17, scope: !113)
!134 = !DILocation(line: 83, column: 5, scope: !113)
!135 = !DILocation(line: 84, column: 24, scope: !113)
!136 = !DILocation(line: 84, column: 32, scope: !113)
!137 = !DILocation(line: 84, column: 17, scope: !113)
!138 = !DILocation(line: 84, column: 5, scope: !113)
!139 = !DILocation(line: 85, column: 24, scope: !113)
!140 = !DILocation(line: 85, column: 32, scope: !113)
!141 = !DILocation(line: 85, column: 17, scope: !113)
!142 = !DILocation(line: 85, column: 5, scope: !113)
!143 = !DILocation(line: 88, column: 53, scope: !113)
!144 = !DILocation(line: 88, column: 44, scope: !113)
!145 = !DILocation(line: 88, column: 16, scope: !113)
!146 = !DILocation(line: 89, column: 25, scope: !113)
!147 = !DILocation(line: 89, column: 18, scope: !113)
!148 = !DILocation(line: 89, column: 16, scope: !113)
!149 = !DILocation(line: 90, column: 10, scope: !150)
!150 = distinct !DILexicalBlock(scope: !113, file: !3, line: 90, column: 9)
!151 = !DILocation(line: 90, column: 9, scope: !113)
!152 = !DILocation(line: 90, column: 22, scope: !150)
!153 = !DILocation(line: 93, column: 12, scope: !113)
!154 = !DILocation(line: 93, column: 5, scope: !113)
!155 = !DILocalVariable(name: "ptr_to_free", scope: !113, file: !3, line: 96, type: !23)
!156 = !DILocation(line: 96, column: 11, scope: !113)
!157 = !DILocation(line: 96, column: 25, scope: !113)
!158 = !DILocation(line: 96, column: 36, scope: !113)
!159 = !DILocation(line: 99, column: 16, scope: !113)
!160 = !DILocation(line: 99, column: 5, scope: !113)
!161 = !DILocation(line: 101, column: 10, scope: !113)
!162 = !DILocation(line: 101, column: 5, scope: !113)
!163 = !DILocation(line: 102, column: 5, scope: !113)
!164 = !DILocation(line: 103, column: 1, scope: !113)
!165 = distinct !DISubprogram(name: "memcpy", scope: !166, file: !166, line: 12, type: !167, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !32, retainedNodes: !47)
!166 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!167 = !DISubroutineType(types: !168)
!168 = !{!5, !5, !169, !13}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DILocalVariable(name: "destaddr", arg: 1, scope: !165, file: !166, line: 12, type: !5)
!172 = !DILocation(line: 12, column: 20, scope: !165)
!173 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !165, file: !166, line: 12, type: !169)
!174 = !DILocation(line: 12, column: 42, scope: !165)
!175 = !DILocalVariable(name: "len", arg: 3, scope: !165, file: !166, line: 12, type: !13)
!176 = !DILocation(line: 12, column: 58, scope: !165)
!177 = !DILocalVariable(name: "dest", scope: !165, file: !166, line: 13, type: !23)
!178 = !DILocation(line: 13, column: 9, scope: !165)
!179 = !DILocation(line: 13, column: 16, scope: !165)
!180 = !DILocalVariable(name: "src", scope: !165, file: !166, line: 14, type: !19)
!181 = !DILocation(line: 14, column: 15, scope: !165)
!182 = !DILocation(line: 14, column: 21, scope: !165)
!183 = !DILocation(line: 16, column: 3, scope: !165)
!184 = !DILocation(line: 16, column: 13, scope: !165)
!185 = !DILocation(line: 16, column: 16, scope: !165)
!186 = !DILocation(line: 17, column: 19, scope: !165)
!187 = !DILocation(line: 17, column: 15, scope: !165)
!188 = !DILocation(line: 17, column: 10, scope: !165)
!189 = !DILocation(line: 17, column: 13, scope: !165)
!190 = distinct !{!190, !183, !186, !191}
!191 = !{!"llvm.loop.mustprogress"}
!192 = !DILocation(line: 18, column: 10, scope: !165)
!193 = !DILocation(line: 18, column: 3, scope: !165)
!194 = distinct !DISubprogram(name: "memset", scope: !195, file: !195, line: 12, type: !196, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !34, retainedNodes: !47)
!195 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!196 = !DISubroutineType(types: !197)
!197 = !{!5, !5, !31, !13}
!198 = !DILocalVariable(name: "dst", arg: 1, scope: !194, file: !195, line: 12, type: !5)
!199 = !DILocation(line: 12, column: 20, scope: !194)
!200 = !DILocalVariable(name: "s", arg: 2, scope: !194, file: !195, line: 12, type: !31)
!201 = !DILocation(line: 12, column: 29, scope: !194)
!202 = !DILocalVariable(name: "count", arg: 3, scope: !194, file: !195, line: 12, type: !13)
!203 = !DILocation(line: 12, column: 39, scope: !194)
!204 = !DILocalVariable(name: "a", scope: !194, file: !195, line: 13, type: !23)
!205 = !DILocation(line: 13, column: 9, scope: !194)
!206 = !DILocation(line: 13, column: 13, scope: !194)
!207 = !DILocation(line: 14, column: 3, scope: !194)
!208 = !DILocation(line: 14, column: 15, scope: !194)
!209 = !DILocation(line: 14, column: 18, scope: !194)
!210 = !DILocation(line: 15, column: 12, scope: !194)
!211 = !DILocation(line: 15, column: 7, scope: !194)
!212 = !DILocation(line: 15, column: 10, scope: !194)
!213 = distinct !{!213, !207, !210, !191}
!214 = !DILocation(line: 16, column: 10, scope: !194)
!215 = !DILocation(line: 16, column: 3, scope: !194)

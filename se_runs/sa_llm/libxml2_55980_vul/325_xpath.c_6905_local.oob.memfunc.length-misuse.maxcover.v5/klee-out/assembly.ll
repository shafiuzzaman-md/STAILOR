; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/325_xpath.c_6905_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/325_xpath.c_6905_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNodeSet = type { i32, i8* }

@.str = private unnamed_addr constant [11 x i8] c"ns1_nodeNr\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ns2_nodeNr\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"comparing nodesets\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [106 x i8] c"(ns1->nodeNr > 0 && ns1->nodeNr <= ((18446744073709551615UL) / sizeof(xmlChar *))) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_55980_vul/325_xpath.c_6905_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlXPathCmpNodes = private unnamed_addr constant [49 x i8] c"int xmlXPathCmpNodes(xmlNodeSet *, xmlNodeSet *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlXPathErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !20 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  ret void, !dbg !31
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !32 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i64, i64* %2, align 8, !dbg !40
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !41
  ret i8* %4, !dbg !42
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !46, metadata !DIExpression()), !dbg !47
  %3 = load i8*, i8** %2, align 8, !dbg !48
  call void @free(i8* noundef %3) #7, !dbg !49
  ret void, !dbg !50
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !51 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNodeSet, align 8
  %3 = alloca %struct._xmlNodeSet, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet* %2, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet* %3, metadata !62, metadata !DIExpression()), !dbg !63
  %5 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !64
  %6 = bitcast i32* %5 to i8*, !dbg !65
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0)), !dbg !66
  %7 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !67
  %8 = bitcast i32* %7 to i8*, !dbg !68
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !69
  %9 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !70
  %10 = load i32, i32* %9, align 8, !dbg !70
  %11 = icmp sgt i32 %10, 0, !dbg !71
  %12 = zext i1 %11 to i32, !dbg !71
  %13 = sext i32 %12 to i64, !dbg !72
  call void @klee_assume(i64 noundef %13), !dbg !73
  %14 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !74
  %15 = load i32, i32* %14, align 8, !dbg !74
  %16 = icmp sgt i32 %15, 0, !dbg !75
  %17 = zext i1 %16 to i32, !dbg !75
  %18 = sext i32 %17 to i64, !dbg !76
  call void @klee_assume(i64 noundef %18), !dbg !77
  %19 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !78
  %20 = load i32, i32* %19, align 8, !dbg !78
  %21 = icmp sle i32 %20, 1000, !dbg !79
  %22 = zext i1 %21 to i32, !dbg !79
  %23 = sext i32 %22 to i64, !dbg !80
  call void @klee_assume(i64 noundef %23), !dbg !81
  %24 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !82
  %25 = load i32, i32* %24, align 8, !dbg !82
  %26 = icmp sle i32 %25, 1000, !dbg !83
  %27 = zext i1 %26 to i32, !dbg !83
  %28 = sext i32 %27 to i64, !dbg !84
  call void @klee_assume(i64 noundef %28), !dbg !85
  %29 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 0, !dbg !86
  %30 = load i32, i32* %29, align 8, !dbg !86
  %31 = sext i32 %30 to i64, !dbg !87
  %32 = mul i64 8, %31, !dbg !88
  %33 = call noalias i8* @malloc(i64 noundef %32) #7, !dbg !89
  %34 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 1, !dbg !90
  store i8* %33, i8** %34, align 8, !dbg !91
  %35 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 0, !dbg !92
  %36 = load i32, i32* %35, align 8, !dbg !92
  %37 = sext i32 %36 to i64, !dbg !93
  %38 = mul i64 8, %37, !dbg !94
  %39 = call noalias i8* @malloc(i64 noundef %38) #7, !dbg !95
  %40 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 1, !dbg !96
  store i8* %39, i8** %40, align 8, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %4, metadata !98, metadata !DIExpression()), !dbg !99
  %41 = call i32 @xmlXPathCmpNodes(%struct._xmlNodeSet* noundef %2, %struct._xmlNodeSet* noundef %3), !dbg !100
  store i32 %41, i32* %4, align 4, !dbg !99
  %42 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %2, i32 0, i32 1, !dbg !101
  %43 = load i8*, i8** %42, align 8, !dbg !101
  call void @free(i8* noundef %43) #7, !dbg !102
  %44 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %3, i32 0, i32 1, !dbg !103
  %45 = load i8*, i8** %44, align 8, !dbg !103
  call void @free(i8* noundef %45) #7, !dbg !104
  ret i32 0, !dbg !105
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlXPathCmpNodes(%struct._xmlNodeSet* noundef %0, %struct._xmlNodeSet* noundef %1) #0 !dbg !106 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlNodeSet*, align 8
  %5 = alloca %struct._xmlNodeSet*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i8**, align 8
  store %struct._xmlNodeSet* %0, %struct._xmlNodeSet** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %4, metadata !110, metadata !DIExpression()), !dbg !111
  store %struct._xmlNodeSet* %1, %struct._xmlNodeSet** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNodeSet** %5, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata i32** %6, metadata !114, metadata !DIExpression()), !dbg !115
  call void @llvm.dbg.declare(metadata i8*** %7, metadata !116, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.declare(metadata i8*** %8, metadata !118, metadata !DIExpression()), !dbg !119
  %9 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !120
  %10 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %9, i32 0, i32 0, !dbg !121
  %11 = load i32, i32* %10, align 8, !dbg !121
  %12 = sext i32 %11 to i64, !dbg !120
  %13 = mul i64 %12, 8, !dbg !122
  %14 = call i8* @xmlMalloc(i64 noundef %13), !dbg !123
  %15 = bitcast i8* %14 to i8**, !dbg !124
  store i8** %15, i8*** %7, align 8, !dbg !125
  %16 = load i8**, i8*** %7, align 8, !dbg !126
  %17 = icmp eq i8** %16, null, !dbg !128
  br i1 %17, label %18, label %19, !dbg !129

18:                                               ; preds = %2
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)), !dbg !130
  store i32 0, i32* %3, align 4, !dbg !132
  br label %78, !dbg !132

19:                                               ; preds = %2
  %20 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !133
  %21 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %20, i32 0, i32 0, !dbg !134
  %22 = load i32, i32* %21, align 8, !dbg !134
  %23 = sext i32 %22 to i64, !dbg !133
  %24 = mul i64 %23, 4, !dbg !135
  %25 = call i8* @xmlMalloc(i64 noundef %24), !dbg !136
  %26 = bitcast i8* %25 to i32*, !dbg !137
  store i32* %26, i32** %6, align 8, !dbg !138
  %27 = load i32*, i32** %6, align 8, !dbg !139
  %28 = icmp eq i32* %27, null, !dbg !141
  br i1 %28, label %29, label %32, !dbg !142

29:                                               ; preds = %19
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)), !dbg !143
  %30 = load i8**, i8*** %7, align 8, !dbg !145
  %31 = bitcast i8** %30 to i8*, !dbg !145
  call void @xmlFree(i8* noundef %31), !dbg !146
  store i32 0, i32* %3, align 4, !dbg !147
  br label %78, !dbg !147

32:                                               ; preds = %19
  %33 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !148
  %34 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %33, i32 0, i32 0, !dbg !148
  %35 = load i32, i32* %34, align 8, !dbg !148
  %36 = icmp sgt i32 %35, 0, !dbg !148
  br i1 %36, label %37, label %45, !dbg !148

37:                                               ; preds = %32
  %38 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !148
  %39 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %38, i32 0, i32 0, !dbg !148
  %40 = load i32, i32* %39, align 8, !dbg !148
  %41 = sext i32 %40 to i64, !dbg !148
  %42 = icmp ule i64 %41, 2305843009213693951, !dbg !148
  br i1 %42, label %43, label %45, !dbg !148

43:                                               ; preds = %37
  br i1 true, label %44, label %45, !dbg !148

44:                                               ; preds = %43
  br label %47, !dbg !148

45:                                               ; preds = %43, %37, %32
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodes, i64 0, i64 0)), !dbg !148
  br label %47, !dbg !148

47:                                               ; preds = %45, %44
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @__PRETTY_FUNCTION__.xmlXPathCmpNodes, i64 0, i64 0)), !dbg !149
  %49 = load i8**, i8*** %7, align 8, !dbg !150
  %50 = bitcast i8** %49 to i8*, !dbg !151
  %51 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %4, align 8, !dbg !152
  %52 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %51, i32 0, i32 0, !dbg !153
  %53 = load i32, i32* %52, align 8, !dbg !153
  %54 = sext i32 %53 to i64, !dbg !152
  %55 = mul i64 %54, 8, !dbg !154
  %56 = call i8* @memset(i8* %50, i32 0, i64 %55), !dbg !151
  %57 = load %struct._xmlNodeSet*, %struct._xmlNodeSet** %5, align 8, !dbg !155
  %58 = getelementptr inbounds %struct._xmlNodeSet, %struct._xmlNodeSet* %57, i32 0, i32 0, !dbg !156
  %59 = load i32, i32* %58, align 8, !dbg !156
  %60 = sext i32 %59 to i64, !dbg !155
  %61 = mul i64 %60, 8, !dbg !157
  %62 = call i8* @xmlMalloc(i64 noundef %61), !dbg !158
  %63 = bitcast i8* %62 to i8**, !dbg !159
  store i8** %63, i8*** %8, align 8, !dbg !160
  %64 = load i8**, i8*** %8, align 8, !dbg !161
  %65 = icmp eq i8** %64, null, !dbg !163
  br i1 %65, label %66, label %71, !dbg !164

66:                                               ; preds = %47
  call void @xmlXPathErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0)), !dbg !165
  %67 = load i32*, i32** %6, align 8, !dbg !167
  %68 = bitcast i32* %67 to i8*, !dbg !167
  call void @xmlFree(i8* noundef %68), !dbg !168
  %69 = load i8**, i8*** %7, align 8, !dbg !169
  %70 = bitcast i8** %69 to i8*, !dbg !169
  call void @xmlFree(i8* noundef %70), !dbg !170
  store i32 0, i32* %3, align 4, !dbg !171
  br label %78, !dbg !171

71:                                               ; preds = %47
  %72 = load i8**, i8*** %8, align 8, !dbg !172
  %73 = bitcast i8** %72 to i8*, !dbg !172
  call void @xmlFree(i8* noundef %73), !dbg !173
  %74 = load i32*, i32** %6, align 8, !dbg !174
  %75 = bitcast i32* %74 to i8*, !dbg !174
  call void @xmlFree(i8* noundef %75), !dbg !175
  %76 = load i8**, i8*** %7, align 8, !dbg !176
  %77 = bitcast i8** %76 to i8*, !dbg !176
  call void @xmlFree(i8* noundef %77), !dbg !177
  store i32 1, i32* %3, align 4, !dbg !178
  br label %78, !dbg !178

78:                                               ; preds = %71, %66, %29, %18
  %79 = load i32, i32* %3, align 4, !dbg !179
  ret i32 %79, !dbg !179
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !180 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !184, metadata !DIExpression()), !dbg !185
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !186, metadata !DIExpression()), !dbg !187
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !188, metadata !DIExpression()), !dbg !189
  call void @llvm.dbg.declare(metadata i8** %7, metadata !190, metadata !DIExpression()), !dbg !192
  %8 = load i8*, i8** %4, align 8, !dbg !193
  store i8* %8, i8** %7, align 8, !dbg !192
  br label %9, !dbg !194

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !195
  %11 = add i64 %10, -1, !dbg !195
  store i64 %11, i64* %6, align 8, !dbg !195
  %12 = icmp ugt i64 %10, 0, !dbg !196
  br i1 %12, label %13, label %18, !dbg !194

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !197
  %15 = trunc i32 %14 to i8, !dbg !197
  %16 = load i8*, i8** %7, align 8, !dbg !198
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !198
  store i8* %17, i8** %7, align 8, !dbg !198
  store i8 %15, i8* %16, align 1, !dbg !199
  br label %9, !dbg !194, !llvm.loop !200

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !202
  ret i8* %19, !dbg !203
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19, !19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/325_xpath.c_6905_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9f35bd3c266afac0ac3e1b0ca1cf00f4")
!2 = !{!3, !7, !8}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !6)
!6 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!10 = distinct !DICompileUnit(language: DW_LANG_C99, file: !11, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!11 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!12 = !{i32 7, !"Dwarf Version", i32 5}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{i32 7, !"PIC Level", i32 2}
!16 = !{i32 7, !"PIE Level", i32 2}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"Ubuntu clang version 14.0.6"}
!20 = distinct !DISubprogram(name: "xmlXPathErrMemory", scope: !1, file: !1, line: 18, type: !21, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !7, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !{}
!27 = !DILocalVariable(name: "ctxt", arg: 1, scope: !20, file: !1, line: 18, type: !7)
!28 = !DILocation(line: 18, column: 30, scope: !20)
!29 = !DILocalVariable(name: "msg", arg: 2, scope: !20, file: !1, line: 18, type: !23)
!30 = !DILocation(line: 18, column: 48, scope: !20)
!31 = !DILocation(line: 18, column: 55, scope: !20)
!32 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 19, type: !33, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!33 = !DISubroutineType(types: !34)
!34 = !{!7, !35}
!35 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !36, line: 46, baseType: !37)
!36 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!37 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!38 = !DILocalVariable(name: "size", arg: 1, scope: !32, file: !1, line: 19, type: !35)
!39 = !DILocation(line: 19, column: 24, scope: !32)
!40 = !DILocation(line: 19, column: 46, scope: !32)
!41 = !DILocation(line: 19, column: 39, scope: !32)
!42 = !DILocation(line: 19, column: 32, scope: !32)
!43 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 20, type: !44, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !7}
!46 = !DILocalVariable(name: "ptr", arg: 1, scope: !43, file: !1, line: 20, type: !7)
!47 = !DILocation(line: 20, column: 20, scope: !43)
!48 = !DILocation(line: 20, column: 32, scope: !43)
!49 = !DILocation(line: 20, column: 27, scope: !43)
!50 = !DILocation(line: 20, column: 38, scope: !43)
!51 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 26, type: !52, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!52 = !DISubroutineType(types: !53)
!53 = !{!54}
!54 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!55 = !DILocalVariable(name: "ns1", scope: !51, file: !1, line: 28, type: !56)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNodeSet", file: !1, line: 11, baseType: !57)
!57 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNodeSet", file: !1, line: 12, size: 128, elements: !58)
!58 = !{!59, !60}
!59 = !DIDerivedType(tag: DW_TAG_member, name: "nodeNr", scope: !57, file: !1, line: 13, baseType: !54, size: 32)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "nodeTab", scope: !57, file: !1, line: 14, baseType: !7, size: 64, offset: 64)
!61 = !DILocation(line: 28, column: 16, scope: !51)
!62 = !DILocalVariable(name: "ns2", scope: !51, file: !1, line: 28, type: !56)
!63 = !DILocation(line: 28, column: 21, scope: !51)
!64 = !DILocation(line: 31, column: 29, scope: !51)
!65 = !DILocation(line: 31, column: 24, scope: !51)
!66 = !DILocation(line: 31, column: 5, scope: !51)
!67 = !DILocation(line: 32, column: 29, scope: !51)
!68 = !DILocation(line: 32, column: 24, scope: !51)
!69 = !DILocation(line: 32, column: 5, scope: !51)
!70 = !DILocation(line: 35, column: 21, scope: !51)
!71 = !DILocation(line: 35, column: 28, scope: !51)
!72 = !DILocation(line: 35, column: 17, scope: !51)
!73 = !DILocation(line: 35, column: 5, scope: !51)
!74 = !DILocation(line: 36, column: 21, scope: !51)
!75 = !DILocation(line: 36, column: 28, scope: !51)
!76 = !DILocation(line: 36, column: 17, scope: !51)
!77 = !DILocation(line: 36, column: 5, scope: !51)
!78 = !DILocation(line: 37, column: 21, scope: !51)
!79 = !DILocation(line: 37, column: 28, scope: !51)
!80 = !DILocation(line: 37, column: 17, scope: !51)
!81 = !DILocation(line: 37, column: 5, scope: !51)
!82 = !DILocation(line: 38, column: 21, scope: !51)
!83 = !DILocation(line: 38, column: 28, scope: !51)
!84 = !DILocation(line: 38, column: 17, scope: !51)
!85 = !DILocation(line: 38, column: 5, scope: !51)
!86 = !DILocation(line: 41, column: 47, scope: !51)
!87 = !DILocation(line: 41, column: 43, scope: !51)
!88 = !DILocation(line: 41, column: 41, scope: !51)
!89 = !DILocation(line: 41, column: 19, scope: !51)
!90 = !DILocation(line: 41, column: 9, scope: !51)
!91 = !DILocation(line: 41, column: 17, scope: !51)
!92 = !DILocation(line: 42, column: 47, scope: !51)
!93 = !DILocation(line: 42, column: 43, scope: !51)
!94 = !DILocation(line: 42, column: 41, scope: !51)
!95 = !DILocation(line: 42, column: 19, scope: !51)
!96 = !DILocation(line: 42, column: 9, scope: !51)
!97 = !DILocation(line: 42, column: 17, scope: !51)
!98 = !DILocalVariable(name: "result", scope: !51, file: !1, line: 45, type: !54)
!99 = !DILocation(line: 45, column: 9, scope: !51)
!100 = !DILocation(line: 45, column: 18, scope: !51)
!101 = !DILocation(line: 48, column: 14, scope: !51)
!102 = !DILocation(line: 48, column: 5, scope: !51)
!103 = !DILocation(line: 49, column: 14, scope: !51)
!104 = !DILocation(line: 49, column: 5, scope: !51)
!105 = !DILocation(line: 51, column: 5, scope: !51)
!106 = distinct !DISubprogram(name: "xmlXPathCmpNodes", scope: !1, file: !1, line: 55, type: !107, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !26)
!107 = !DISubroutineType(types: !108)
!108 = !{!54, !109, !109}
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!110 = !DILocalVariable(name: "ns1", arg: 1, scope: !106, file: !1, line: 55, type: !109)
!111 = !DILocation(line: 55, column: 34, scope: !106)
!112 = !DILocalVariable(name: "ns2", arg: 2, scope: !106, file: !1, line: 55, type: !109)
!113 = !DILocation(line: 55, column: 51, scope: !106)
!114 = !DILocalVariable(name: "hashs1", scope: !106, file: !1, line: 56, type: !8)
!115 = !DILocation(line: 56, column: 19, scope: !106)
!116 = !DILocalVariable(name: "values1", scope: !106, file: !1, line: 57, type: !3)
!117 = !DILocation(line: 57, column: 15, scope: !106)
!118 = !DILocalVariable(name: "values2", scope: !106, file: !1, line: 57, type: !3)
!119 = !DILocation(line: 57, column: 26, scope: !106)
!120 = !DILocation(line: 60, column: 38, scope: !106)
!121 = !DILocation(line: 60, column: 43, scope: !106)
!122 = !DILocation(line: 60, column: 50, scope: !106)
!123 = !DILocation(line: 60, column: 28, scope: !106)
!124 = !DILocation(line: 60, column: 15, scope: !106)
!125 = !DILocation(line: 60, column: 13, scope: !106)
!126 = !DILocation(line: 61, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !106, file: !1, line: 61, column: 9)
!128 = !DILocation(line: 61, column: 17, scope: !127)
!129 = !DILocation(line: 61, column: 9, scope: !106)
!130 = !DILocation(line: 62, column: 9, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !1, line: 61, column: 26)
!132 = !DILocation(line: 63, column: 9, scope: !131)
!133 = !DILocation(line: 67, column: 41, scope: !106)
!134 = !DILocation(line: 67, column: 46, scope: !106)
!135 = !DILocation(line: 67, column: 53, scope: !106)
!136 = !DILocation(line: 67, column: 31, scope: !106)
!137 = !DILocation(line: 67, column: 14, scope: !106)
!138 = !DILocation(line: 67, column: 12, scope: !106)
!139 = !DILocation(line: 68, column: 9, scope: !140)
!140 = distinct !DILexicalBlock(scope: !106, file: !1, line: 68, column: 9)
!141 = !DILocation(line: 68, column: 16, scope: !140)
!142 = !DILocation(line: 68, column: 9, scope: !106)
!143 = !DILocation(line: 69, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 68, column: 25)
!145 = !DILocation(line: 70, column: 17, scope: !144)
!146 = !DILocation(line: 70, column: 9, scope: !144)
!147 = !DILocation(line: 71, column: 9, scope: !144)
!148 = !DILocation(line: 81, column: 5, scope: !106)
!149 = !DILocation(line: 84, column: 5, scope: !106)
!150 = !DILocation(line: 87, column: 12, scope: !106)
!151 = !DILocation(line: 87, column: 5, scope: !106)
!152 = !DILocation(line: 87, column: 24, scope: !106)
!153 = !DILocation(line: 87, column: 29, scope: !106)
!154 = !DILocation(line: 87, column: 36, scope: !106)
!155 = !DILocation(line: 90, column: 38, scope: !106)
!156 = !DILocation(line: 90, column: 43, scope: !106)
!157 = !DILocation(line: 90, column: 50, scope: !106)
!158 = !DILocation(line: 90, column: 28, scope: !106)
!159 = !DILocation(line: 90, column: 15, scope: !106)
!160 = !DILocation(line: 90, column: 13, scope: !106)
!161 = !DILocation(line: 91, column: 9, scope: !162)
!162 = distinct !DILexicalBlock(scope: !106, file: !1, line: 91, column: 9)
!163 = !DILocation(line: 91, column: 17, scope: !162)
!164 = !DILocation(line: 91, column: 9, scope: !106)
!165 = !DILocation(line: 92, column: 9, scope: !166)
!166 = distinct !DILexicalBlock(scope: !162, file: !1, line: 91, column: 26)
!167 = !DILocation(line: 93, column: 17, scope: !166)
!168 = !DILocation(line: 93, column: 9, scope: !166)
!169 = !DILocation(line: 94, column: 17, scope: !166)
!170 = !DILocation(line: 94, column: 9, scope: !166)
!171 = !DILocation(line: 95, column: 9, scope: !166)
!172 = !DILocation(line: 99, column: 13, scope: !106)
!173 = !DILocation(line: 99, column: 5, scope: !106)
!174 = !DILocation(line: 100, column: 13, scope: !106)
!175 = !DILocation(line: 100, column: 5, scope: !106)
!176 = !DILocation(line: 101, column: 13, scope: !106)
!177 = !DILocation(line: 101, column: 5, scope: !106)
!178 = !DILocation(line: 103, column: 5, scope: !106)
!179 = !DILocation(line: 104, column: 1, scope: !106)
!180 = distinct !DISubprogram(name: "memset", scope: !181, file: !181, line: 12, type: !182, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !10, retainedNodes: !26)
!181 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!182 = !DISubroutineType(types: !183)
!183 = !{!7, !7, !54, !35}
!184 = !DILocalVariable(name: "dst", arg: 1, scope: !180, file: !181, line: 12, type: !7)
!185 = !DILocation(line: 12, column: 20, scope: !180)
!186 = !DILocalVariable(name: "s", arg: 2, scope: !180, file: !181, line: 12, type: !54)
!187 = !DILocation(line: 12, column: 29, scope: !180)
!188 = !DILocalVariable(name: "count", arg: 3, scope: !180, file: !181, line: 12, type: !35)
!189 = !DILocation(line: 12, column: 39, scope: !180)
!190 = !DILocalVariable(name: "a", scope: !180, file: !181, line: 13, type: !191)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!192 = !DILocation(line: 13, column: 9, scope: !180)
!193 = !DILocation(line: 13, column: 13, scope: !180)
!194 = !DILocation(line: 14, column: 3, scope: !180)
!195 = !DILocation(line: 14, column: 15, scope: !180)
!196 = !DILocation(line: 14, column: 18, scope: !180)
!197 = !DILocation(line: 15, column: 12, scope: !180)
!198 = !DILocation(line: 15, column: 7, scope: !180)
!199 = !DILocation(line: 15, column: 10, scope: !180)
!200 = distinct !{!200, !194, !197, !201}
!201 = !{!"llvm.loop.mustprogress"}
!202 = !DILocation(line: 16, column: 10, scope: !180)
!203 = !DILocation(line: 16, column: 3, scope: !180)

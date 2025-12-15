; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/106_testlimits.c_202_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/106_testlimits.c_202_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlParserCtxt = type { i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"instate\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [43 x i8] c"(ctxt->len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/106_testlimits.c_202_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlParseContent = private unnamed_addr constant [38 x i8] c"void xmlParseContent(xmlParserCtxt *)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !12 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlParserCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlParserCtxt* %2, metadata !17, metadata !DIExpression()), !dbg !29
  %3 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 0, !dbg !30
  %4 = bitcast i32* %3 to i8*, !dbg !31
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !32
  %5 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 4, !dbg !33
  %6 = bitcast i32* %5 to i8*, !dbg !34
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0)), !dbg !35
  %7 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 5, !dbg !36
  %8 = bitcast i32* %7 to i8*, !dbg !37
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !38
  %9 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 0, !dbg !39
  %10 = load i32, i32* %9, align 8, !dbg !39
  %11 = icmp eq i32 %10, 2, !dbg !40
  %12 = zext i1 %11 to i32, !dbg !40
  %13 = sext i32 %12 to i64, !dbg !41
  call void @klee_assume(i64 noundef %13), !dbg !42
  %14 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 4, !dbg !43
  %15 = load i32, i32* %14, align 8, !dbg !43
  %16 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 5, !dbg !44
  %17 = load i32, i32* %16, align 4, !dbg !44
  %18 = icmp sge i32 %15, %17, !dbg !45
  %19 = zext i1 %18 to i32, !dbg !45
  %20 = sext i32 %19 to i64, !dbg !46
  call void @klee_assume(i64 noundef %20), !dbg !47
  %21 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 4, !dbg !48
  %22 = load i32, i32* %21, align 8, !dbg !48
  %23 = icmp sge i32 %22, 0, !dbg !49
  %24 = zext i1 %23 to i32, !dbg !49
  %25 = sext i32 %24 to i64, !dbg !50
  call void @klee_assume(i64 noundef %25), !dbg !51
  %26 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 5, !dbg !52
  %27 = load i32, i32* %26, align 4, !dbg !52
  %28 = icmp sge i32 %27, 0, !dbg !53
  %29 = zext i1 %28 to i32, !dbg !53
  %30 = sext i32 %29 to i64, !dbg !54
  call void @klee_assume(i64 noundef %30), !dbg !55
  %31 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !56
  %32 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 2, !dbg !57
  store i8* %31, i8** %32, align 8, !dbg !58
  %33 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !59
  %34 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 3, !dbg !60
  store i8* %33, i8** %34, align 8, !dbg !61
  %35 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 2, !dbg !62
  %36 = load i8*, i8** %35, align 8, !dbg !62
  call void @klee_make_symbolic(i8* noundef %36, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !63
  %37 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 3, !dbg !64
  %38 = load i8*, i8** %37, align 8, !dbg !64
  call void @klee_make_symbolic(i8* noundef %38, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0)), !dbg !65
  %39 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 1, !dbg !66
  store i32 0, i32* %39, align 4, !dbg !67
  call void @xmlParseContent(%struct.xmlParserCtxt* noundef %2), !dbg !68
  %40 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 2, !dbg !69
  %41 = load i8*, i8** %40, align 8, !dbg !69
  call void @free(i8* noundef %41) #7, !dbg !70
  %42 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %2, i32 0, i32 3, !dbg !71
  %43 = load i8*, i8** %42, align 8, !dbg !71
  call void @free(i8* noundef %43) #7, !dbg !72
  ret i32 0, !dbg !73
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlParseContent(%struct.xmlParserCtxt* noundef %0) #0 !dbg !74 {
  %2 = alloca %struct.xmlParserCtxt*, align 8
  store %struct.xmlParserCtxt* %0, %struct.xmlParserCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct.xmlParserCtxt** %2, metadata !78, metadata !DIExpression()), !dbg !79
  %3 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !80
  %4 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %3, i32 0, i32 0, !dbg !82
  %5 = load i32, i32* %4, align 8, !dbg !82
  %6 = icmp eq i32 %5, 2, !dbg !83
  br i1 %6, label %7, label %76, !dbg !84

7:                                                ; preds = %1
  %8 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !85
  %9 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %8, i32 0, i32 4, !dbg !88
  %10 = load i32, i32* %9, align 8, !dbg !88
  %11 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !89
  %12 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %11, i32 0, i32 5, !dbg !90
  %13 = load i32, i32* %12, align 4, !dbg !90
  %14 = icmp sge i32 %10, %13, !dbg !91
  br i1 %14, label %15, label %48, !dbg !92

15:                                               ; preds = %7
  %16 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !93
  %17 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %16, i32 0, i32 5, !dbg !95
  %18 = load i32, i32* %17, align 4, !dbg !95
  %19 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !96
  %20 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %19, i32 0, i32 4, !dbg !97
  store i32 %18, i32* %20, align 8, !dbg !98
  %21 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !99
  %22 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %21, i32 0, i32 5, !dbg !100
  store i32 0, i32* %22, align 4, !dbg !101
  %23 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !102
  %24 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %23, i32 0, i32 4, !dbg !102
  %25 = load i32, i32* %24, align 8, !dbg !102
  %26 = icmp sle i32 %25, 1024, !dbg !102
  br i1 %26, label %27, label %29, !dbg !102

27:                                               ; preds = %15
  br i1 true, label %28, label %29, !dbg !102

28:                                               ; preds = %27
  br label %31, !dbg !102

29:                                               ; preds = %27, %15
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([43 x i8], [43 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.xmlParseContent, i64 0, i64 0)), !dbg !102
  br label %31, !dbg !102

31:                                               ; preds = %29, %28
  %32 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 32, i8* noundef getelementptr inbounds ([38 x i8], [38 x i8]* @__PRETTY_FUNCTION__.xmlParseContent, i64 0, i64 0)), !dbg !103
  %33 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !104
  %34 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %33, i32 0, i32 2, !dbg !105
  %35 = load i8*, i8** %34, align 8, !dbg !105
  %36 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !106
  %37 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %36, i32 0, i32 3, !dbg !107
  %38 = load i8*, i8** %37, align 8, !dbg !107
  %39 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !108
  %40 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %39, i32 0, i32 4, !dbg !109
  %41 = load i32, i32* %40, align 8, !dbg !109
  %42 = sext i32 %41 to i64, !dbg !108
  %43 = call i8* @memcpy(i8* %35, i8* %38, i64 %42), !dbg !110
  %44 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !111
  %45 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %44, i32 0, i32 0, !dbg !112
  store i32 3, i32* %45, align 8, !dbg !113
  %46 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !114
  %47 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %46, i32 0, i32 1, !dbg !115
  store i32 0, i32* %47, align 4, !dbg !116
  br label %75, !dbg !117

48:                                               ; preds = %7
  %49 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !118
  %50 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %49, i32 0, i32 2, !dbg !120
  %51 = load i8*, i8** %50, align 8, !dbg !120
  %52 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !121
  %53 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %52, i32 0, i32 3, !dbg !122
  %54 = load i8*, i8** %53, align 8, !dbg !122
  %55 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !123
  %56 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %55, i32 0, i32 4, !dbg !124
  %57 = load i32, i32* %56, align 8, !dbg !124
  %58 = sext i32 %57 to i64, !dbg !123
  %59 = call i8* @memcpy(i8* %51, i8* %54, i64 %58), !dbg !125
  %60 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !126
  %61 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %60, i32 0, i32 4, !dbg !127
  %62 = load i32, i32* %61, align 8, !dbg !127
  %63 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !128
  %64 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %63, i32 0, i32 5, !dbg !129
  %65 = load i32, i32* %64, align 4, !dbg !130
  %66 = sub nsw i32 %65, %62, !dbg !130
  store i32 %66, i32* %64, align 4, !dbg !130
  %67 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !131
  %68 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %67, i32 0, i32 4, !dbg !132
  %69 = load i32, i32* %68, align 8, !dbg !132
  %70 = load %struct.xmlParserCtxt*, %struct.xmlParserCtxt** %2, align 8, !dbg !133
  %71 = getelementptr inbounds %struct.xmlParserCtxt, %struct.xmlParserCtxt* %70, i32 0, i32 3, !dbg !134
  %72 = load i8*, i8** %71, align 8, !dbg !135
  %73 = sext i32 %69 to i64, !dbg !135
  %74 = getelementptr inbounds i8, i8* %72, i64 %73, !dbg !135
  store i8* %74, i8** %71, align 8, !dbg !135
  br label %75

75:                                               ; preds = %48, %31
  br label %76, !dbg !136

76:                                               ; preds = %75, %1
  ret void, !dbg !137
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !138 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !148, metadata !DIExpression()), !dbg !149
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !150, metadata !DIExpression()), !dbg !151
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !152, metadata !DIExpression()), !dbg !153
  call void @llvm.dbg.declare(metadata i8** %7, metadata !154, metadata !DIExpression()), !dbg !155
  %9 = load i8*, i8** %4, align 8, !dbg !156
  store i8* %9, i8** %7, align 8, !dbg !155
  call void @llvm.dbg.declare(metadata i8** %8, metadata !157, metadata !DIExpression()), !dbg !160
  %10 = load i8*, i8** %5, align 8, !dbg !161
  store i8* %10, i8** %8, align 8, !dbg !160
  br label %11, !dbg !162

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !163
  %13 = add i64 %12, -1, !dbg !163
  store i64 %13, i64* %6, align 8, !dbg !163
  %14 = icmp ugt i64 %12, 0, !dbg !164
  br i1 %14, label %15, label %21, !dbg !162

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !165
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !165
  store i8* %17, i8** %8, align 8, !dbg !165
  %18 = load i8, i8* %16, align 1, !dbg !166
  %19 = load i8*, i8** %7, align 8, !dbg !167
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !167
  store i8* %20, i8** %7, align 8, !dbg !167
  store i8 %18, i8* %19, align 1, !dbg !168
  br label %11, !dbg !162, !llvm.loop !169

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !171
  ret i8* %22, !dbg !172
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/106_testlimits.c_202_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0671bca320991bf96697022e78f91567")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 45, type: !13, scopeLine: 45, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !16)
!13 = !DISubroutineType(types: !14)
!14 = !{!15}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !{}
!17 = !DILocalVariable(name: "ctxt", scope: !12, file: !1, line: 46, type: !18)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 17, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 256, elements: !20)
!20 = !{!21, !22, !23, !26, !27, !28}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "instate", scope: !19, file: !1, line: 11, baseType: !15, size: 32)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "curlen", scope: !19, file: !1, line: 12, baseType: !15, size: 32, offset: 32)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !19, file: !1, line: 13, baseType: !24, size: 64, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !19, file: !1, line: 14, baseType: !24, size: 64, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !19, file: !1, line: 15, baseType: !15, size: 32, offset: 192)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !19, file: !1, line: 16, baseType: !15, size: 32, offset: 224)
!29 = !DILocation(line: 46, column: 19, scope: !12)
!30 = !DILocation(line: 49, column: 30, scope: !12)
!31 = !DILocation(line: 49, column: 24, scope: !12)
!32 = !DILocation(line: 49, column: 5, scope: !12)
!33 = !DILocation(line: 50, column: 30, scope: !12)
!34 = !DILocation(line: 50, column: 24, scope: !12)
!35 = !DILocation(line: 50, column: 5, scope: !12)
!36 = !DILocation(line: 51, column: 30, scope: !12)
!37 = !DILocation(line: 51, column: 24, scope: !12)
!38 = !DILocation(line: 51, column: 5, scope: !12)
!39 = !DILocation(line: 54, column: 22, scope: !12)
!40 = !DILocation(line: 54, column: 30, scope: !12)
!41 = !DILocation(line: 54, column: 17, scope: !12)
!42 = !DILocation(line: 54, column: 5, scope: !12)
!43 = !DILocation(line: 57, column: 22, scope: !12)
!44 = !DILocation(line: 57, column: 34, scope: !12)
!45 = !DILocation(line: 57, column: 26, scope: !12)
!46 = !DILocation(line: 57, column: 17, scope: !12)
!47 = !DILocation(line: 57, column: 5, scope: !12)
!48 = !DILocation(line: 60, column: 22, scope: !12)
!49 = !DILocation(line: 60, column: 26, scope: !12)
!50 = !DILocation(line: 60, column: 17, scope: !12)
!51 = !DILocation(line: 60, column: 5, scope: !12)
!52 = !DILocation(line: 61, column: 22, scope: !12)
!53 = !DILocation(line: 61, column: 27, scope: !12)
!54 = !DILocation(line: 61, column: 17, scope: !12)
!55 = !DILocation(line: 61, column: 5, scope: !12)
!56 = !DILocation(line: 64, column: 19, scope: !12)
!57 = !DILocation(line: 64, column: 10, scope: !12)
!58 = !DILocation(line: 64, column: 17, scope: !12)
!59 = !DILocation(line: 65, column: 20, scope: !12)
!60 = !DILocation(line: 65, column: 10, scope: !12)
!61 = !DILocation(line: 65, column: 18, scope: !12)
!62 = !DILocation(line: 68, column: 29, scope: !12)
!63 = !DILocation(line: 68, column: 5, scope: !12)
!64 = !DILocation(line: 69, column: 29, scope: !12)
!65 = !DILocation(line: 69, column: 5, scope: !12)
!66 = !DILocation(line: 72, column: 10, scope: !12)
!67 = !DILocation(line: 72, column: 17, scope: !12)
!68 = !DILocation(line: 75, column: 5, scope: !12)
!69 = !DILocation(line: 78, column: 15, scope: !12)
!70 = !DILocation(line: 78, column: 5, scope: !12)
!71 = !DILocation(line: 79, column: 15, scope: !12)
!72 = !DILocation(line: 79, column: 5, scope: !12)
!73 = !DILocation(line: 81, column: 5, scope: !12)
!74 = distinct !DISubprogram(name: "xmlParseContent", scope: !1, file: !1, line: 20, type: !75, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !16)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77}
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!78 = !DILocalVariable(name: "ctxt", arg: 1, scope: !74, file: !1, line: 20, type: !77)
!79 = !DILocation(line: 20, column: 44, scope: !74)
!80 = !DILocation(line: 22, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !74, file: !1, line: 22, column: 9)
!82 = !DILocation(line: 22, column: 15, scope: !81)
!83 = !DILocation(line: 22, column: 23, scope: !81)
!84 = !DILocation(line: 22, column: 9, scope: !74)
!85 = !DILocation(line: 23, column: 13, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 23, column: 13)
!87 = distinct !DILexicalBlock(scope: !81, file: !1, line: 22, column: 29)
!88 = !DILocation(line: 23, column: 19, scope: !86)
!89 = !DILocation(line: 23, column: 26, scope: !86)
!90 = !DILocation(line: 23, column: 32, scope: !86)
!91 = !DILocation(line: 23, column: 23, scope: !86)
!92 = !DILocation(line: 23, column: 13, scope: !87)
!93 = !DILocation(line: 24, column: 25, scope: !94)
!94 = distinct !DILexicalBlock(scope: !86, file: !1, line: 23, column: 38)
!95 = !DILocation(line: 24, column: 31, scope: !94)
!96 = !DILocation(line: 24, column: 13, scope: !94)
!97 = !DILocation(line: 24, column: 19, scope: !94)
!98 = !DILocation(line: 24, column: 23, scope: !94)
!99 = !DILocation(line: 25, column: 13, scope: !94)
!100 = !DILocation(line: 25, column: 19, scope: !94)
!101 = !DILocation(line: 25, column: 24, scope: !94)
!102 = !DILocation(line: 31, column: 13, scope: !94)
!103 = !DILocation(line: 32, column: 13, scope: !94)
!104 = !DILocation(line: 34, column: 20, scope: !94)
!105 = !DILocation(line: 34, column: 26, scope: !94)
!106 = !DILocation(line: 34, column: 34, scope: !94)
!107 = !DILocation(line: 34, column: 40, scope: !94)
!108 = !DILocation(line: 34, column: 49, scope: !94)
!109 = !DILocation(line: 34, column: 55, scope: !94)
!110 = !DILocation(line: 34, column: 13, scope: !94)
!111 = !DILocation(line: 35, column: 13, scope: !94)
!112 = !DILocation(line: 35, column: 19, scope: !94)
!113 = !DILocation(line: 35, column: 27, scope: !94)
!114 = !DILocation(line: 36, column: 13, scope: !94)
!115 = !DILocation(line: 36, column: 19, scope: !94)
!116 = !DILocation(line: 36, column: 26, scope: !94)
!117 = !DILocation(line: 37, column: 9, scope: !94)
!118 = !DILocation(line: 38, column: 20, scope: !119)
!119 = distinct !DILexicalBlock(scope: !86, file: !1, line: 37, column: 16)
!120 = !DILocation(line: 38, column: 26, scope: !119)
!121 = !DILocation(line: 38, column: 34, scope: !119)
!122 = !DILocation(line: 38, column: 40, scope: !119)
!123 = !DILocation(line: 38, column: 49, scope: !119)
!124 = !DILocation(line: 38, column: 55, scope: !119)
!125 = !DILocation(line: 38, column: 13, scope: !119)
!126 = !DILocation(line: 39, column: 27, scope: !119)
!127 = !DILocation(line: 39, column: 33, scope: !119)
!128 = !DILocation(line: 39, column: 13, scope: !119)
!129 = !DILocation(line: 39, column: 19, scope: !119)
!130 = !DILocation(line: 39, column: 24, scope: !119)
!131 = !DILocation(line: 40, column: 30, scope: !119)
!132 = !DILocation(line: 40, column: 36, scope: !119)
!133 = !DILocation(line: 40, column: 13, scope: !119)
!134 = !DILocation(line: 40, column: 19, scope: !119)
!135 = !DILocation(line: 40, column: 27, scope: !119)
!136 = !DILocation(line: 42, column: 5, scope: !87)
!137 = !DILocation(line: 43, column: 1, scope: !74)
!138 = distinct !DISubprogram(name: "memcpy", scope: !139, file: !139, line: 12, type: !140, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !16)
!139 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!140 = !DISubroutineType(types: !141)
!141 = !{!142, !142, !143, !145}
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!145 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !146, line: 46, baseType: !147)
!146 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!147 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!148 = !DILocalVariable(name: "destaddr", arg: 1, scope: !138, file: !139, line: 12, type: !142)
!149 = !DILocation(line: 12, column: 20, scope: !138)
!150 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !138, file: !139, line: 12, type: !143)
!151 = !DILocation(line: 12, column: 42, scope: !138)
!152 = !DILocalVariable(name: "len", arg: 3, scope: !138, file: !139, line: 12, type: !145)
!153 = !DILocation(line: 12, column: 58, scope: !138)
!154 = !DILocalVariable(name: "dest", scope: !138, file: !139, line: 13, type: !24)
!155 = !DILocation(line: 13, column: 9, scope: !138)
!156 = !DILocation(line: 13, column: 16, scope: !138)
!157 = !DILocalVariable(name: "src", scope: !138, file: !139, line: 14, type: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!160 = !DILocation(line: 14, column: 15, scope: !138)
!161 = !DILocation(line: 14, column: 21, scope: !138)
!162 = !DILocation(line: 16, column: 3, scope: !138)
!163 = !DILocation(line: 16, column: 13, scope: !138)
!164 = !DILocation(line: 16, column: 16, scope: !138)
!165 = !DILocation(line: 17, column: 19, scope: !138)
!166 = !DILocation(line: 17, column: 15, scope: !138)
!167 = !DILocation(line: 17, column: 10, scope: !138)
!168 = !DILocation(line: 17, column: 13, scope: !138)
!169 = distinct !{!169, !162, !165, !170}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !DILocation(line: 18, column: 10, scope: !138)
!172 = !DILocation(line: 18, column: 3, scope: !138)

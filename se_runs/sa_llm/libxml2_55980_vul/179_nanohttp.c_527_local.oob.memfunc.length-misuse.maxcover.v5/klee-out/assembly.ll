; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/179_nanohttp.c_527_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/179_nanohttp.c_527_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlNanoHTTPCtxt = type { i8*, i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"inrptr\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"inptr\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"content\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [84 x i8] c"(len >= 0 && len <= ctxt->inlen - (ctxt->inrptr - ctxt->in)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/179_nanohttp.c_527_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer = private unnamed_addr constant [46 x i8] c"void xmlNanoHTTPScanAnswer(xmlNanoHTTPCtxt *)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !10 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %2, metadata !15, metadata !DIExpression()), !dbg !27
  %3 = call noalias i8* @malloc(i64 noundef 40) #5, !dbg !28
  %4 = bitcast i8* %3 to %struct._xmlNanoHTTPCtxt*, !dbg !28
  store %struct._xmlNanoHTTPCtxt* %4, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !27
  %5 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !29
  %6 = icmp ne %struct._xmlNanoHTTPCtxt* %5, null, !dbg !29
  br i1 %6, label %8, label %7, !dbg !31

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !32
  br label %120, !dbg !32

8:                                                ; preds = %0
  %9 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !33
  %10 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %9, i32 0, i32 1, !dbg !34
  store i32 65000, i32* %10, align 8, !dbg !35
  %11 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !36
  %12 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %11, i32 0, i32 1, !dbg !37
  %13 = load i32, i32* %12, align 8, !dbg !37
  %14 = sext i32 %13 to i64, !dbg !36
  %15 = call noalias i8* @malloc(i64 noundef %14) #5, !dbg !38
  %16 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !39
  %17 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %16, i32 0, i32 0, !dbg !40
  store i8* %15, i8** %17, align 8, !dbg !41
  %18 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !42
  %19 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %18, i32 0, i32 0, !dbg !44
  %20 = load i8*, i8** %19, align 8, !dbg !44
  %21 = icmp ne i8* %20, null, !dbg !42
  br i1 %21, label %25, label %22, !dbg !45

22:                                               ; preds = %8
  %23 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !46
  %24 = bitcast %struct._xmlNanoHTTPCtxt* %23 to i8*, !dbg !46
  call void @free(i8* noundef %24) #5, !dbg !48
  store i32 0, i32* %1, align 4, !dbg !49
  br label %120, !dbg !49

25:                                               ; preds = %8
  %26 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !50
  %27 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %26, i32 0, i32 4, !dbg !51
  %28 = bitcast i8** %27 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %28, i64 noundef 8, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %29 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !54
  %30 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %29, i32 0, i32 2, !dbg !55
  %31 = bitcast i8** %30 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %31, i64 noundef 8, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %32 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !58
  %33 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %32, i32 0, i32 3, !dbg !59
  %34 = bitcast i8** %33 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %34, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !61
  %35 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !62
  %36 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %35, i32 0, i32 4, !dbg !63
  %37 = load i8*, i8** %36, align 8, !dbg !63
  %38 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !64
  %39 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %38, i32 0, i32 0, !dbg !65
  %40 = load i8*, i8** %39, align 8, !dbg !65
  %41 = icmp uge i8* %37, %40, !dbg !66
  %42 = zext i1 %41 to i32, !dbg !66
  %43 = sext i32 %42 to i64, !dbg !62
  call void @klee_assume(i64 noundef %43), !dbg !67
  %44 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !68
  %45 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %44, i32 0, i32 4, !dbg !69
  %46 = load i8*, i8** %45, align 8, !dbg !69
  %47 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !70
  %48 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %47, i32 0, i32 0, !dbg !71
  %49 = load i8*, i8** %48, align 8, !dbg !71
  %50 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !72
  %51 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %50, i32 0, i32 1, !dbg !73
  %52 = load i32, i32* %51, align 8, !dbg !73
  %53 = sext i32 %52 to i64, !dbg !74
  %54 = getelementptr inbounds i8, i8* %49, i64 %53, !dbg !74
  %55 = icmp ule i8* %46, %54, !dbg !75
  %56 = zext i1 %55 to i32, !dbg !75
  %57 = sext i32 %56 to i64, !dbg !68
  call void @klee_assume(i64 noundef %57), !dbg !76
  %58 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !77
  %59 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %58, i32 0, i32 2, !dbg !78
  %60 = load i8*, i8** %59, align 8, !dbg !78
  %61 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !79
  %62 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %61, i32 0, i32 0, !dbg !80
  %63 = load i8*, i8** %62, align 8, !dbg !80
  %64 = icmp uge i8* %60, %63, !dbg !81
  %65 = zext i1 %64 to i32, !dbg !81
  %66 = sext i32 %65 to i64, !dbg !77
  call void @klee_assume(i64 noundef %66), !dbg !82
  %67 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !83
  %68 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %67, i32 0, i32 2, !dbg !84
  %69 = load i8*, i8** %68, align 8, !dbg !84
  %70 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !85
  %71 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %70, i32 0, i32 0, !dbg !86
  %72 = load i8*, i8** %71, align 8, !dbg !86
  %73 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !87
  %74 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %73, i32 0, i32 1, !dbg !88
  %75 = load i32, i32* %74, align 8, !dbg !88
  %76 = sext i32 %75 to i64, !dbg !89
  %77 = getelementptr inbounds i8, i8* %72, i64 %76, !dbg !89
  %78 = icmp ule i8* %69, %77, !dbg !90
  %79 = zext i1 %78 to i32, !dbg !90
  %80 = sext i32 %79 to i64, !dbg !83
  call void @klee_assume(i64 noundef %80), !dbg !91
  %81 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !92
  %82 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %81, i32 0, i32 3, !dbg !93
  %83 = load i8*, i8** %82, align 8, !dbg !93
  %84 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !94
  %85 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %84, i32 0, i32 0, !dbg !95
  %86 = load i8*, i8** %85, align 8, !dbg !95
  %87 = icmp uge i8* %83, %86, !dbg !96
  %88 = zext i1 %87 to i32, !dbg !96
  %89 = sext i32 %88 to i64, !dbg !92
  call void @klee_assume(i64 noundef %89), !dbg !97
  %90 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !98
  %91 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %90, i32 0, i32 3, !dbg !99
  %92 = load i8*, i8** %91, align 8, !dbg !99
  %93 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !100
  %94 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %93, i32 0, i32 0, !dbg !101
  %95 = load i8*, i8** %94, align 8, !dbg !101
  %96 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !102
  %97 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %96, i32 0, i32 1, !dbg !103
  %98 = load i32, i32* %97, align 8, !dbg !103
  %99 = sext i32 %98 to i64, !dbg !104
  %100 = getelementptr inbounds i8, i8* %95, i64 %99, !dbg !104
  %101 = icmp ule i8* %92, %100, !dbg !105
  %102 = zext i1 %101 to i32, !dbg !105
  %103 = sext i32 %102 to i64, !dbg !98
  call void @klee_assume(i64 noundef %103), !dbg !106
  %104 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !107
  %105 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %104, i32 0, i32 4, !dbg !108
  %106 = load i8*, i8** %105, align 8, !dbg !108
  %107 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !109
  %108 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %107, i32 0, i32 0, !dbg !110
  %109 = load i8*, i8** %108, align 8, !dbg !110
  %110 = getelementptr inbounds i8, i8* %109, i64 4096, !dbg !111
  %111 = icmp ugt i8* %106, %110, !dbg !112
  %112 = zext i1 %111 to i32, !dbg !112
  %113 = sext i32 %112 to i64, !dbg !107
  call void @klee_assume(i64 noundef %113), !dbg !113
  %114 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !114
  call void @xmlNanoHTTPScanAnswer(%struct._xmlNanoHTTPCtxt* noundef %114), !dbg !115
  %115 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !116
  %116 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %115, i32 0, i32 0, !dbg !117
  %117 = load i8*, i8** %116, align 8, !dbg !117
  call void @free(i8* noundef %117) #5, !dbg !118
  %118 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !119
  %119 = bitcast %struct._xmlNanoHTTPCtxt* %118 to i8*, !dbg !119
  call void @free(i8* noundef %119) #5, !dbg !120
  store i32 0, i32* %1, align 4, !dbg !121
  br label %120, !dbg !121

120:                                              ; preds = %25, %22, %7
  %121 = load i32, i32* %1, align 4, !dbg !122
  ret i32 %121, !dbg !122
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlNanoHTTPScanAnswer(%struct._xmlNanoHTTPCtxt* noundef %0) #0 !dbg !123 {
  %2 = alloca %struct._xmlNanoHTTPCtxt*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct._xmlNanoHTTPCtxt* %0, %struct._xmlNanoHTTPCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlNanoHTTPCtxt** %2, metadata !126, metadata !DIExpression()), !dbg !127
  %5 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !128
  %6 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %5, i32 0, i32 4, !dbg !130
  %7 = load i8*, i8** %6, align 8, !dbg !130
  %8 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !131
  %9 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %8, i32 0, i32 0, !dbg !132
  %10 = load i8*, i8** %9, align 8, !dbg !132
  %11 = getelementptr inbounds i8, i8* %10, i64 4096, !dbg !133
  %12 = icmp ugt i8* %7, %11, !dbg !134
  br i1 %12, label %13, label %60, !dbg !135

13:                                               ; preds = %1
  call void @llvm.dbg.declare(metadata i32* %3, metadata !136, metadata !DIExpression()), !dbg !138
  %14 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !139
  %15 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %14, i32 0, i32 4, !dbg !140
  %16 = load i8*, i8** %15, align 8, !dbg !140
  %17 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !141
  %18 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %17, i32 0, i32 0, !dbg !142
  %19 = load i8*, i8** %18, align 8, !dbg !142
  %20 = ptrtoint i8* %16 to i64, !dbg !143
  %21 = ptrtoint i8* %19 to i64, !dbg !143
  %22 = sub i64 %20, %21, !dbg !143
  %23 = trunc i64 %22 to i32, !dbg !139
  store i32 %23, i32* %3, align 4, !dbg !138
  call void @llvm.dbg.declare(metadata i32* %4, metadata !144, metadata !DIExpression()), !dbg !145
  %24 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !146
  %25 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %24, i32 0, i32 2, !dbg !147
  %26 = load i8*, i8** %25, align 8, !dbg !147
  %27 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !148
  %28 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %27, i32 0, i32 4, !dbg !149
  %29 = load i8*, i8** %28, align 8, !dbg !149
  %30 = ptrtoint i8* %26 to i64, !dbg !150
  %31 = ptrtoint i8* %29 to i64, !dbg !150
  %32 = sub i64 %30, %31, !dbg !150
  %33 = trunc i64 %32 to i32, !dbg !146
  store i32 %33, i32* %4, align 4, !dbg !145
  %34 = load i32, i32* %4, align 4, !dbg !151
  %35 = icmp sge i32 %34, 0, !dbg !151
  br i1 %35, label %36, label %56, !dbg !151

36:                                               ; preds = %13
  %37 = load i32, i32* %4, align 4, !dbg !151
  %38 = sext i32 %37 to i64, !dbg !151
  %39 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !151
  %40 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %39, i32 0, i32 1, !dbg !151
  %41 = load i32, i32* %40, align 8, !dbg !151
  %42 = sext i32 %41 to i64, !dbg !151
  %43 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !151
  %44 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %43, i32 0, i32 4, !dbg !151
  %45 = load i8*, i8** %44, align 8, !dbg !151
  %46 = load %struct._xmlNanoHTTPCtxt*, %struct._xmlNanoHTTPCtxt** %2, align 8, !dbg !151
  %47 = getelementptr inbounds %struct._xmlNanoHTTPCtxt, %struct._xmlNanoHTTPCtxt* %46, i32 0, i32 0, !dbg !151
  %48 = load i8*, i8** %47, align 8, !dbg !151
  %49 = ptrtoint i8* %45 to i64, !dbg !151
  %50 = ptrtoint i8* %48 to i64, !dbg !151
  %51 = sub i64 %49, %50, !dbg !151
  %52 = sub nsw i64 %42, %51, !dbg !151
  %53 = icmp sle i64 %38, %52, !dbg !151
  br i1 %53, label %54, label %56, !dbg !151

54:                                               ; preds = %36
  br i1 true, label %55, label %56, !dbg !151

55:                                               ; preds = %54
  br label %58, !dbg !151

56:                                               ; preds = %54, %36, %13
  %57 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 28, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer, i64 0, i64 0)), !dbg !151
  br label %58, !dbg !151

58:                                               ; preds = %56, %55
  %59 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.5, i64 0, i64 0), i32 noundef 31, i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @__PRETTY_FUNCTION__.xmlNanoHTTPScanAnswer, i64 0, i64 0)), !dbg !152
  br label %60, !dbg !153

60:                                               ; preds = %58, %1
  ret void, !dbg !154
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/179_nanohttp.c_527_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "89e62254477255a07ec4453ff687747e")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 7, !"PIC Level", i32 2}
!6 = !{i32 7, !"PIE Level", i32 2}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{i32 7, !"frame-pointer", i32 2}
!9 = !{!"Ubuntu clang version 14.0.6"}
!10 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !11, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !14)
!11 = !DISubroutineType(types: !12)
!12 = !{!13}
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !{}
!15 = !DILocalVariable(name: "ctxt", scope: !10, file: !1, line: 39, type: !16)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlNanoHTTPCtxt", file: !1, line: 18, baseType: !18)
!18 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNanoHTTPCtxt", file: !1, line: 12, size: 320, elements: !19)
!19 = !{!20, !23, !24, !25, !26}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !18, file: !1, line: 13, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !DIDerivedType(tag: DW_TAG_member, name: "inlen", scope: !18, file: !1, line: 14, baseType: !13, size: 32, offset: 64)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "inptr", scope: !18, file: !1, line: 15, baseType: !21, size: 64, offset: 128)
!25 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !18, file: !1, line: 16, baseType: !21, size: 64, offset: 192)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "inrptr", scope: !18, file: !1, line: 17, baseType: !21, size: 64, offset: 256)
!27 = !DILocation(line: 39, column: 22, scope: !10)
!28 = !DILocation(line: 39, column: 29, scope: !10)
!29 = !DILocation(line: 40, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !10, file: !1, line: 40, column: 9)
!31 = !DILocation(line: 40, column: 9, scope: !10)
!32 = !DILocation(line: 40, column: 16, scope: !30)
!33 = !DILocation(line: 43, column: 5, scope: !10)
!34 = !DILocation(line: 43, column: 11, scope: !10)
!35 = !DILocation(line: 43, column: 17, scope: !10)
!36 = !DILocation(line: 44, column: 23, scope: !10)
!37 = !DILocation(line: 44, column: 29, scope: !10)
!38 = !DILocation(line: 44, column: 16, scope: !10)
!39 = !DILocation(line: 44, column: 5, scope: !10)
!40 = !DILocation(line: 44, column: 11, scope: !10)
!41 = !DILocation(line: 44, column: 14, scope: !10)
!42 = !DILocation(line: 45, column: 10, scope: !43)
!43 = distinct !DILexicalBlock(scope: !10, file: !1, line: 45, column: 9)
!44 = !DILocation(line: 45, column: 16, scope: !43)
!45 = !DILocation(line: 45, column: 9, scope: !10)
!46 = !DILocation(line: 46, column: 14, scope: !47)
!47 = distinct !DILexicalBlock(scope: !43, file: !1, line: 45, column: 20)
!48 = !DILocation(line: 46, column: 9, scope: !47)
!49 = !DILocation(line: 47, column: 9, scope: !47)
!50 = !DILocation(line: 51, column: 25, scope: !10)
!51 = !DILocation(line: 51, column: 31, scope: !10)
!52 = !DILocation(line: 51, column: 24, scope: !10)
!53 = !DILocation(line: 51, column: 5, scope: !10)
!54 = !DILocation(line: 52, column: 25, scope: !10)
!55 = !DILocation(line: 52, column: 31, scope: !10)
!56 = !DILocation(line: 52, column: 24, scope: !10)
!57 = !DILocation(line: 52, column: 5, scope: !10)
!58 = !DILocation(line: 53, column: 25, scope: !10)
!59 = !DILocation(line: 53, column: 31, scope: !10)
!60 = !DILocation(line: 53, column: 24, scope: !10)
!61 = !DILocation(line: 53, column: 5, scope: !10)
!62 = !DILocation(line: 56, column: 17, scope: !10)
!63 = !DILocation(line: 56, column: 23, scope: !10)
!64 = !DILocation(line: 56, column: 33, scope: !10)
!65 = !DILocation(line: 56, column: 39, scope: !10)
!66 = !DILocation(line: 56, column: 30, scope: !10)
!67 = !DILocation(line: 56, column: 5, scope: !10)
!68 = !DILocation(line: 57, column: 17, scope: !10)
!69 = !DILocation(line: 57, column: 23, scope: !10)
!70 = !DILocation(line: 57, column: 33, scope: !10)
!71 = !DILocation(line: 57, column: 39, scope: !10)
!72 = !DILocation(line: 57, column: 44, scope: !10)
!73 = !DILocation(line: 57, column: 50, scope: !10)
!74 = !DILocation(line: 57, column: 42, scope: !10)
!75 = !DILocation(line: 57, column: 30, scope: !10)
!76 = !DILocation(line: 57, column: 5, scope: !10)
!77 = !DILocation(line: 58, column: 17, scope: !10)
!78 = !DILocation(line: 58, column: 23, scope: !10)
!79 = !DILocation(line: 58, column: 32, scope: !10)
!80 = !DILocation(line: 58, column: 38, scope: !10)
!81 = !DILocation(line: 58, column: 29, scope: !10)
!82 = !DILocation(line: 58, column: 5, scope: !10)
!83 = !DILocation(line: 59, column: 17, scope: !10)
!84 = !DILocation(line: 59, column: 23, scope: !10)
!85 = !DILocation(line: 59, column: 32, scope: !10)
!86 = !DILocation(line: 59, column: 38, scope: !10)
!87 = !DILocation(line: 59, column: 43, scope: !10)
!88 = !DILocation(line: 59, column: 49, scope: !10)
!89 = !DILocation(line: 59, column: 41, scope: !10)
!90 = !DILocation(line: 59, column: 29, scope: !10)
!91 = !DILocation(line: 59, column: 5, scope: !10)
!92 = !DILocation(line: 60, column: 17, scope: !10)
!93 = !DILocation(line: 60, column: 23, scope: !10)
!94 = !DILocation(line: 60, column: 34, scope: !10)
!95 = !DILocation(line: 60, column: 40, scope: !10)
!96 = !DILocation(line: 60, column: 31, scope: !10)
!97 = !DILocation(line: 60, column: 5, scope: !10)
!98 = !DILocation(line: 61, column: 17, scope: !10)
!99 = !DILocation(line: 61, column: 23, scope: !10)
!100 = !DILocation(line: 61, column: 34, scope: !10)
!101 = !DILocation(line: 61, column: 40, scope: !10)
!102 = !DILocation(line: 61, column: 45, scope: !10)
!103 = !DILocation(line: 61, column: 51, scope: !10)
!104 = !DILocation(line: 61, column: 43, scope: !10)
!105 = !DILocation(line: 61, column: 31, scope: !10)
!106 = !DILocation(line: 61, column: 5, scope: !10)
!107 = !DILocation(line: 64, column: 17, scope: !10)
!108 = !DILocation(line: 64, column: 23, scope: !10)
!109 = !DILocation(line: 64, column: 32, scope: !10)
!110 = !DILocation(line: 64, column: 38, scope: !10)
!111 = !DILocation(line: 64, column: 41, scope: !10)
!112 = !DILocation(line: 64, column: 30, scope: !10)
!113 = !DILocation(line: 64, column: 5, scope: !10)
!114 = !DILocation(line: 67, column: 27, scope: !10)
!115 = !DILocation(line: 67, column: 5, scope: !10)
!116 = !DILocation(line: 70, column: 10, scope: !10)
!117 = !DILocation(line: 70, column: 16, scope: !10)
!118 = !DILocation(line: 70, column: 5, scope: !10)
!119 = !DILocation(line: 71, column: 10, scope: !10)
!120 = !DILocation(line: 71, column: 5, scope: !10)
!121 = !DILocation(line: 72, column: 5, scope: !10)
!122 = !DILocation(line: 73, column: 1, scope: !10)
!123 = distinct !DISubprogram(name: "xmlNanoHTTPScanAnswer", scope: !1, file: !1, line: 21, type: !124, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !14)
!124 = !DISubroutineType(types: !125)
!125 = !{null, !16}
!126 = !DILocalVariable(name: "ctxt", arg: 1, scope: !123, file: !1, line: 21, type: !16)
!127 = !DILocation(line: 21, column: 52, scope: !123)
!128 = !DILocation(line: 23, column: 9, scope: !129)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 23, column: 9)
!130 = !DILocation(line: 23, column: 15, scope: !129)
!131 = !DILocation(line: 23, column: 24, scope: !129)
!132 = !DILocation(line: 23, column: 30, scope: !129)
!133 = !DILocation(line: 23, column: 33, scope: !129)
!134 = !DILocation(line: 23, column: 22, scope: !129)
!135 = !DILocation(line: 23, column: 9, scope: !123)
!136 = !DILocalVariable(name: "delta", scope: !137, file: !1, line: 24, type: !13)
!137 = distinct !DILexicalBlock(scope: !129, file: !1, line: 23, column: 56)
!138 = !DILocation(line: 24, column: 13, scope: !137)
!139 = !DILocation(line: 24, column: 21, scope: !137)
!140 = !DILocation(line: 24, column: 27, scope: !137)
!141 = !DILocation(line: 24, column: 36, scope: !137)
!142 = !DILocation(line: 24, column: 42, scope: !137)
!143 = !DILocation(line: 24, column: 34, scope: !137)
!144 = !DILocalVariable(name: "len", scope: !137, file: !1, line: 25, type: !13)
!145 = !DILocation(line: 25, column: 13, scope: !137)
!146 = !DILocation(line: 25, column: 19, scope: !137)
!147 = !DILocation(line: 25, column: 25, scope: !137)
!148 = !DILocation(line: 25, column: 33, scope: !137)
!149 = !DILocation(line: 25, column: 39, scope: !137)
!150 = !DILocation(line: 25, column: 31, scope: !137)
!151 = !DILocation(line: 28, column: 9, scope: !137)
!152 = !DILocation(line: 31, column: 9, scope: !137)
!153 = !DILocation(line: 35, column: 5, scope: !137)
!154 = !DILocation(line: 36, column: 1, scope: !123)

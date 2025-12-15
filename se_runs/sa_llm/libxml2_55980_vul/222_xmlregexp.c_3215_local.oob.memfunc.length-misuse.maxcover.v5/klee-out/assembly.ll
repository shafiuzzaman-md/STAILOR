; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/222_xmlregexp.c_3215_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/222_xmlregexp.c_3215_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { %struct._xmlRegRollback*, i32, i32*, %struct._xmlRegexp*, i32 }
%struct._xmlRegRollback = type { i32* }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"exec\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"saving regexp\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [124 x i8] c"(exec->comp->nbCounters * sizeof(int) <= exec->rollbacks[exec->nbRollbacks].counts ? (size_t)-1 : 0) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/222_xmlregexp.c_3215_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFARegExecSave = private unnamed_addr constant [41 x i8] c"void xmlFARegExecSave(xmlRegExecCtxtPtr)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !19 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !23, metadata !DIExpression()), !dbg !24
  %3 = load i64, i64* %2, align 8, !dbg !25
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !26
  ret i8* %4, !dbg !27
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !34, metadata !DIExpression()), !dbg !35
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !36, metadata !DIExpression()), !dbg !37
  %5 = load i8*, i8** %3, align 8, !dbg !38
  %6 = load i8*, i8** %4, align 8, !dbg !39
  ret void, !dbg !40
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !41 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegExecCtxt, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt* %2, metadata !44, metadata !DIExpression()), !dbg !63
  %3 = bitcast %struct._xmlRegExecCtxt* %2 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %3, i64 noundef 40, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !65
  %4 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !66
  %5 = load i32, i32* %4, align 8, !dbg !66
  %6 = icmp sge i32 %5, 0, !dbg !67
  %7 = zext i1 %6 to i32, !dbg !67
  %8 = sext i32 %7 to i64, !dbg !68
  call void @klee_assume(i64 noundef %8), !dbg !69
  %9 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !70
  %10 = load i32, i32* %9, align 8, !dbg !70
  %11 = icmp slt i32 %10, 100, !dbg !71
  %12 = zext i1 %11 to i32, !dbg !71
  %13 = sext i32 %12 to i64, !dbg !72
  call void @klee_assume(i64 noundef %13), !dbg !73
  %14 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !74
  %15 = load i32, i32* %14, align 8, !dbg !74
  %16 = add nsw i32 %15, 1, !dbg !75
  %17 = sext i32 %16 to i64, !dbg !76
  %18 = mul i64 %17, 8, !dbg !77
  %19 = call noalias i8* @malloc(i64 noundef %18) #7, !dbg !78
  %20 = bitcast i8* %19 to %struct._xmlRegRollback*, !dbg !78
  %21 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !79
  store %struct._xmlRegRollback* %20, %struct._xmlRegRollback** %21, align 8, !dbg !80
  %22 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !81
  %23 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %22, align 8, !dbg !81
  %24 = icmp ne %struct._xmlRegRollback* %23, null, !dbg !82
  %25 = zext i1 %24 to i32, !dbg !82
  %26 = sext i32 %25 to i64, !dbg !83
  call void @klee_assume(i64 noundef %26), !dbg !84
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !85
  %28 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %27, align 8, !dbg !85
  %29 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 1, !dbg !86
  %30 = load i32, i32* %29, align 8, !dbg !86
  %31 = sext i32 %30 to i64, !dbg !87
  %32 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %28, i64 %31, !dbg !87
  %33 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %32, i32 0, i32 0, !dbg !88
  store i32* null, i32** %33, align 8, !dbg !89
  %34 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !90
  %35 = bitcast i8* %34 to %struct._xmlRegexp*, !dbg !90
  %36 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !91
  store %struct._xmlRegexp* %35, %struct._xmlRegexp** %36, align 8, !dbg !92
  %37 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !93
  %38 = load %struct._xmlRegexp*, %struct._xmlRegexp** %37, align 8, !dbg !93
  %39 = icmp ne %struct._xmlRegexp* %38, null, !dbg !94
  %40 = zext i1 %39 to i32, !dbg !94
  %41 = sext i32 %40 to i64, !dbg !95
  call void @klee_assume(i64 noundef %41), !dbg !96
  %42 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !97
  %43 = load %struct._xmlRegexp*, %struct._xmlRegexp** %42, align 8, !dbg !97
  %44 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %43, i32 0, i32 0, !dbg !98
  %45 = bitcast i32* %44 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  %46 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !101
  %47 = load %struct._xmlRegexp*, %struct._xmlRegexp** %46, align 8, !dbg !101
  %48 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %47, i32 0, i32 0, !dbg !102
  %49 = load i32, i32* %48, align 4, !dbg !102
  %50 = icmp sge i32 %49, 0, !dbg !103
  %51 = zext i1 %50 to i32, !dbg !103
  %52 = sext i32 %51 to i64, !dbg !104
  call void @klee_assume(i64 noundef %52), !dbg !105
  %53 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !106
  %54 = load %struct._xmlRegexp*, %struct._xmlRegexp** %53, align 8, !dbg !106
  %55 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %54, i32 0, i32 0, !dbg !107
  %56 = load i32, i32* %55, align 4, !dbg !107
  %57 = icmp slt i32 %56, 1000, !dbg !108
  %58 = zext i1 %57 to i32, !dbg !108
  %59 = sext i32 %58 to i64, !dbg !109
  call void @klee_assume(i64 noundef %59), !dbg !110
  %60 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !111
  %61 = load %struct._xmlRegexp*, %struct._xmlRegexp** %60, align 8, !dbg !111
  %62 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %61, i32 0, i32 0, !dbg !113
  %63 = load i32, i32* %62, align 4, !dbg !113
  %64 = icmp sgt i32 %63, 0, !dbg !114
  br i1 %64, label %65, label %80, !dbg !115

65:                                               ; preds = %0
  %66 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !116
  %67 = load %struct._xmlRegexp*, %struct._xmlRegexp** %66, align 8, !dbg !116
  %68 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %67, i32 0, i32 0, !dbg !118
  %69 = load i32, i32* %68, align 4, !dbg !118
  %70 = sext i32 %69 to i64, !dbg !119
  %71 = mul i64 %70, 4, !dbg !120
  %72 = call noalias i8* @malloc(i64 noundef %71) #7, !dbg !121
  %73 = bitcast i8* %72 to i32*, !dbg !121
  %74 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !122
  store i32* %73, i32** %74, align 8, !dbg !123
  %75 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !124
  %76 = load i32*, i32** %75, align 8, !dbg !124
  %77 = icmp ne i32* %76, null, !dbg !125
  %78 = zext i1 %77 to i32, !dbg !125
  %79 = sext i32 %78 to i64, !dbg !126
  call void @klee_assume(i64 noundef %79), !dbg !127
  br label %82, !dbg !128

80:                                               ; preds = %0
  %81 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !129
  store i32* null, i32** %81, align 8, !dbg !131
  br label %82

82:                                               ; preds = %80, %65
  %83 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 4, !dbg !132
  store i32 0, i32* %83, align 8, !dbg !133
  call void @xmlFARegExecSave(%struct._xmlRegExecCtxt* noundef %2), !dbg !134
  %84 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !135
  %85 = load i32*, i32** %84, align 8, !dbg !135
  %86 = icmp ne i32* %85, null, !dbg !137
  br i1 %86, label %87, label %91, !dbg !138

87:                                               ; preds = %82
  %88 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 2, !dbg !139
  %89 = load i32*, i32** %88, align 8, !dbg !139
  %90 = bitcast i32* %89 to i8*, !dbg !141
  call void @free(i8* noundef %90) #7, !dbg !142
  br label %91, !dbg !143

91:                                               ; preds = %87, %82
  %92 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !144
  %93 = load %struct._xmlRegexp*, %struct._xmlRegexp** %92, align 8, !dbg !144
  %94 = icmp ne %struct._xmlRegexp* %93, null, !dbg !146
  br i1 %94, label %95, label %99, !dbg !147

95:                                               ; preds = %91
  %96 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 3, !dbg !148
  %97 = load %struct._xmlRegexp*, %struct._xmlRegexp** %96, align 8, !dbg !148
  %98 = bitcast %struct._xmlRegexp* %97 to i8*, !dbg !150
  call void @free(i8* noundef %98) #7, !dbg !151
  br label %99, !dbg !152

99:                                               ; preds = %95, %91
  %100 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !153
  %101 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %100, align 8, !dbg !153
  %102 = icmp ne %struct._xmlRegRollback* %101, null, !dbg !155
  br i1 %102, label %103, label %107, !dbg !156

103:                                              ; preds = %99
  %104 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %2, i32 0, i32 0, !dbg !157
  %105 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %104, align 8, !dbg !157
  %106 = bitcast %struct._xmlRegRollback* %105 to i8*, !dbg !159
  call void @free(i8* noundef %106) #7, !dbg !160
  br label %107, !dbg !161

107:                                              ; preds = %103, %99
  ret i32 0, !dbg !162
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFARegExecSave(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !163 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !168, metadata !DIExpression()), !dbg !169
  %3 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !170
  %4 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 0, !dbg !172
  %5 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %4, align 8, !dbg !172
  %6 = icmp eq %struct._xmlRegRollback* %5, null, !dbg !173
  br i1 %6, label %7, label %8, !dbg !174

7:                                                ; preds = %1
  br label %115, !dbg !175

8:                                                ; preds = %1
  %9 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !177
  %10 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %9, i32 0, i32 1, !dbg !179
  %11 = load i32, i32* %10, align 8, !dbg !179
  %12 = icmp sge i32 %11, 0, !dbg !180
  br i1 %12, label %13, label %110, !dbg !181

13:                                               ; preds = %8
  %14 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !182
  %15 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %14, i32 0, i32 0, !dbg !185
  %16 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %15, align 8, !dbg !185
  %17 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !186
  %18 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %17, i32 0, i32 1, !dbg !187
  %19 = load i32, i32* %18, align 8, !dbg !187
  %20 = sext i32 %19 to i64, !dbg !182
  %21 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %16, i64 %20, !dbg !182
  %22 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %21, i32 0, i32 0, !dbg !188
  %23 = load i32*, i32** %22, align 8, !dbg !188
  %24 = icmp eq i32* %23, null, !dbg !189
  br i1 %24, label %25, label %59, !dbg !190

25:                                               ; preds = %13
  %26 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !191
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %26, i32 0, i32 3, !dbg !193
  %28 = load %struct._xmlRegexp*, %struct._xmlRegexp** %27, align 8, !dbg !193
  %29 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %28, i32 0, i32 0, !dbg !194
  %30 = load i32, i32* %29, align 4, !dbg !194
  %31 = sext i32 %30 to i64, !dbg !191
  %32 = mul i64 %31, 4, !dbg !195
  %33 = call i8* @xmlMalloc(i64 noundef %32), !dbg !196
  %34 = bitcast i8* %33 to i32*, !dbg !197
  %35 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !198
  %36 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %35, i32 0, i32 0, !dbg !199
  %37 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %36, align 8, !dbg !199
  %38 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !200
  %39 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %38, i32 0, i32 1, !dbg !201
  %40 = load i32, i32* %39, align 8, !dbg !201
  %41 = sext i32 %40 to i64, !dbg !198
  %42 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %37, i64 %41, !dbg !198
  %43 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %42, i32 0, i32 0, !dbg !202
  store i32* %34, i32** %43, align 8, !dbg !203
  %44 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !204
  %45 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %44, i32 0, i32 0, !dbg !206
  %46 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %45, align 8, !dbg !206
  %47 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !207
  %48 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %47, i32 0, i32 1, !dbg !208
  %49 = load i32, i32* %48, align 8, !dbg !208
  %50 = sext i32 %49 to i64, !dbg !204
  %51 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %46, i64 %50, !dbg !204
  %52 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %51, i32 0, i32 0, !dbg !209
  %53 = load i32*, i32** %52, align 8, !dbg !209
  %54 = icmp eq i32* %53, null, !dbg !210
  br i1 %54, label %55, label %58, !dbg !211

55:                                               ; preds = %25
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0)), !dbg !212
  %56 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !214
  %57 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %56, i32 0, i32 4, !dbg !215
  store i32 -5, i32* %57, align 8, !dbg !216
  br label %115, !dbg !217

58:                                               ; preds = %25
  br label %59, !dbg !218

59:                                               ; preds = %58, %13
  %60 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !219
  %61 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %60, i32 0, i32 0, !dbg !220
  %62 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %61, align 8, !dbg !220
  %63 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !221
  %64 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %63, i32 0, i32 1, !dbg !222
  %65 = load i32, i32* %64, align 8, !dbg !222
  %66 = sext i32 %65 to i64, !dbg !219
  %67 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %62, i64 %66, !dbg !219
  %68 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %67, i32 0, i32 0, !dbg !223
  %69 = load i32*, i32** %68, align 8, !dbg !223
  %70 = bitcast i32* %69 to i8*, !dbg !224
  %71 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !225
  %72 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %71, i32 0, i32 2, !dbg !226
  %73 = load i32*, i32** %72, align 8, !dbg !226
  %74 = bitcast i32* %73 to i8*, !dbg !224
  %75 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !227
  %76 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %75, i32 0, i32 3, !dbg !228
  %77 = load %struct._xmlRegexp*, %struct._xmlRegexp** %76, align 8, !dbg !228
  %78 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %77, i32 0, i32 0, !dbg !229
  %79 = load i32, i32* %78, align 4, !dbg !229
  %80 = sext i32 %79 to i64, !dbg !227
  %81 = mul i64 %80, 4, !dbg !230
  %82 = call i8* @memcpy(i8* %70, i8* %74, i64 %81), !dbg !224
  %83 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !231
  %84 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %83, i32 0, i32 3, !dbg !231
  %85 = load %struct._xmlRegexp*, %struct._xmlRegexp** %84, align 8, !dbg !231
  %86 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %85, i32 0, i32 0, !dbg !231
  %87 = load i32, i32* %86, align 4, !dbg !231
  %88 = sext i32 %87 to i64, !dbg !231
  %89 = mul i64 %88, 4, !dbg !231
  %90 = inttoptr i64 %89 to i32*, !dbg !231
  %91 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !231
  %92 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %91, i32 0, i32 0, !dbg !231
  %93 = load %struct._xmlRegRollback*, %struct._xmlRegRollback** %92, align 8, !dbg !231
  %94 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !231
  %95 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %94, i32 0, i32 1, !dbg !231
  %96 = load i32, i32* %95, align 8, !dbg !231
  %97 = sext i32 %96 to i64, !dbg !231
  %98 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %93, i64 %97, !dbg !231
  %99 = getelementptr inbounds %struct._xmlRegRollback, %struct._xmlRegRollback* %98, i32 0, i32 0, !dbg !231
  %100 = load i32*, i32** %99, align 8, !dbg !231
  %101 = icmp ule i32* %90, %100, !dbg !231
  br i1 %101, label %102, label %103, !dbg !231

102:                                              ; preds = %59
  br i1 true, label %104, label %106, !dbg !231

103:                                              ; preds = %59
  br i1 false, label %104, label %106, !dbg !231

104:                                              ; preds = %103, %102
  br i1 true, label %105, label %106, !dbg !231

105:                                              ; preds = %104
  br label %108, !dbg !231

106:                                              ; preds = %104, %103, %102
  %107 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([124 x i8], [124 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 67, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlFARegExecSave, i64 0, i64 0)), !dbg !231
  br label %108, !dbg !231

108:                                              ; preds = %106, %105
  %109 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.5, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @__PRETTY_FUNCTION__.xmlFARegExecSave, i64 0, i64 0)), !dbg !232
  br label %110, !dbg !233

110:                                              ; preds = %108, %8
  %111 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !234
  %112 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %111, i32 0, i32 1, !dbg !235
  %113 = load i32, i32* %112, align 8, !dbg !236
  %114 = add nsw i32 %113, 1, !dbg !236
  store i32 %114, i32* %112, align 8, !dbg !236
  br label %115, !dbg !237

115:                                              ; preds = %110, %55, %7
  ret void, !dbg !237
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !238 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !244, metadata !DIExpression()), !dbg !245
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !246, metadata !DIExpression()), !dbg !247
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !248, metadata !DIExpression()), !dbg !249
  call void @llvm.dbg.declare(metadata i8** %7, metadata !250, metadata !DIExpression()), !dbg !252
  %9 = load i8*, i8** %4, align 8, !dbg !253
  store i8* %9, i8** %7, align 8, !dbg !252
  call void @llvm.dbg.declare(metadata i8** %8, metadata !254, metadata !DIExpression()), !dbg !255
  %10 = load i8*, i8** %5, align 8, !dbg !256
  store i8* %10, i8** %8, align 8, !dbg !255
  br label %11, !dbg !257

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !258
  %13 = add i64 %12, -1, !dbg !258
  store i64 %13, i64* %6, align 8, !dbg !258
  %14 = icmp ugt i64 %12, 0, !dbg !259
  br i1 %14, label %15, label %21, !dbg !257

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !260
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !260
  store i8* %17, i8** %8, align 8, !dbg !260
  %18 = load i8, i8* %16, align 1, !dbg !261
  %19 = load i8*, i8** %7, align 8, !dbg !262
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !262
  store i8* %20, i8** %7, align 8, !dbg !262
  store i8 %18, i8* %19, align 1, !dbg !263
  br label %11, !dbg !257, !llvm.loop !264

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !266
  ret i8* %22, !dbg !267
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18, !18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/222_xmlregexp.c_3215_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "d5d5b7d0e8b0fd7314f7e5b6d18d7895")
!2 = !{!3, !4, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !7, line: 46, baseType: !8)
!7 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!8 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!9 = distinct !DICompileUnit(language: DW_LANG_C99, file: !10, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!10 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!11 = !{i32 7, !"Dwarf Version", i32 5}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{i32 7, !"PIC Level", i32 2}
!15 = !{i32 7, !"PIE Level", i32 2}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"Ubuntu clang version 14.0.6"}
!19 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 33, type: !20, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!3, !6}
!22 = !{}
!23 = !DILocalVariable(name: "size", arg: 1, scope: !19, file: !1, line: 33, type: !6)
!24 = !DILocation(line: 33, column: 24, scope: !19)
!25 = !DILocation(line: 34, column: 19, scope: !19)
!26 = !DILocation(line: 34, column: 12, scope: !19)
!27 = !DILocation(line: 34, column: 5, scope: !19)
!28 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 38, type: !29, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !3, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !DILocalVariable(name: "ctx", arg: 1, scope: !28, file: !1, line: 38, type: !3)
!35 = !DILocation(line: 38, column: 31, scope: !28)
!36 = !DILocalVariable(name: "msg", arg: 2, scope: !28, file: !1, line: 38, type: !31)
!37 = !DILocation(line: 38, column: 48, scope: !28)
!38 = !DILocation(line: 39, column: 11, scope: !28)
!39 = !DILocation(line: 40, column: 11, scope: !28)
!40 = !DILocation(line: 41, column: 1, scope: !28)
!41 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 75, type: !42, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!42 = !DISubroutineType(types: !43)
!43 = !{!5}
!44 = !DILocalVariable(name: "exec", scope: !41, file: !1, line: 77, type: !45)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !46)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 24, size: 320, elements: !47)
!47 = !{!48, !53, !54, !55, !62}
!48 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !46, file: !1, line: 25, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegRollback", file: !1, line: 20, size: 64, elements: !51)
!51 = !{!52}
!52 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !50, file: !1, line: 21, baseType: !4, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !46, file: !1, line: 26, baseType: !5, size: 32, offset: 64)
!54 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !46, file: !1, line: 27, baseType: !4, size: 64, offset: 128)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !46, file: !1, line: 28, baseType: !56, size: 64, offset: 192)
!56 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexpPtr", file: !1, line: 13, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 12, baseType: !59)
!59 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 16, size: 32, elements: !60)
!60 = !{!61}
!61 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !59, file: !1, line: 17, baseType: !5, size: 32)
!62 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !46, file: !1, line: 29, baseType: !5, size: 32, offset: 256)
!63 = !DILocation(line: 77, column: 20, scope: !41)
!64 = !DILocation(line: 80, column: 24, scope: !41)
!65 = !DILocation(line: 80, column: 5, scope: !41)
!66 = !DILocation(line: 83, column: 22, scope: !41)
!67 = !DILocation(line: 83, column: 34, scope: !41)
!68 = !DILocation(line: 83, column: 17, scope: !41)
!69 = !DILocation(line: 83, column: 5, scope: !41)
!70 = !DILocation(line: 84, column: 22, scope: !41)
!71 = !DILocation(line: 84, column: 34, scope: !41)
!72 = !DILocation(line: 84, column: 17, scope: !41)
!73 = !DILocation(line: 84, column: 5, scope: !41)
!74 = !DILocation(line: 87, column: 35, scope: !41)
!75 = !DILocation(line: 87, column: 47, scope: !41)
!76 = !DILocation(line: 87, column: 29, scope: !41)
!77 = !DILocation(line: 87, column: 52, scope: !41)
!78 = !DILocation(line: 87, column: 22, scope: !41)
!79 = !DILocation(line: 87, column: 10, scope: !41)
!80 = !DILocation(line: 87, column: 20, scope: !41)
!81 = !DILocation(line: 88, column: 22, scope: !41)
!82 = !DILocation(line: 88, column: 32, scope: !41)
!83 = !DILocation(line: 88, column: 17, scope: !41)
!84 = !DILocation(line: 88, column: 5, scope: !41)
!85 = !DILocation(line: 91, column: 10, scope: !41)
!86 = !DILocation(line: 91, column: 25, scope: !41)
!87 = !DILocation(line: 91, column: 5, scope: !41)
!88 = !DILocation(line: 91, column: 38, scope: !41)
!89 = !DILocation(line: 91, column: 45, scope: !41)
!90 = !DILocation(line: 94, column: 17, scope: !41)
!91 = !DILocation(line: 94, column: 10, scope: !41)
!92 = !DILocation(line: 94, column: 15, scope: !41)
!93 = !DILocation(line: 95, column: 22, scope: !41)
!94 = !DILocation(line: 95, column: 27, scope: !41)
!95 = !DILocation(line: 95, column: 17, scope: !41)
!96 = !DILocation(line: 95, column: 5, scope: !41)
!97 = !DILocation(line: 98, column: 30, scope: !41)
!98 = !DILocation(line: 98, column: 36, scope: !41)
!99 = !DILocation(line: 98, column: 24, scope: !41)
!100 = !DILocation(line: 98, column: 5, scope: !41)
!101 = !DILocation(line: 99, column: 22, scope: !41)
!102 = !DILocation(line: 99, column: 28, scope: !41)
!103 = !DILocation(line: 99, column: 39, scope: !41)
!104 = !DILocation(line: 99, column: 17, scope: !41)
!105 = !DILocation(line: 99, column: 5, scope: !41)
!106 = !DILocation(line: 100, column: 22, scope: !41)
!107 = !DILocation(line: 100, column: 28, scope: !41)
!108 = !DILocation(line: 100, column: 39, scope: !41)
!109 = !DILocation(line: 100, column: 17, scope: !41)
!110 = !DILocation(line: 100, column: 5, scope: !41)
!111 = !DILocation(line: 103, column: 14, scope: !112)
!112 = distinct !DILexicalBlock(scope: !41, file: !1, line: 103, column: 9)
!113 = !DILocation(line: 103, column: 20, scope: !112)
!114 = !DILocation(line: 103, column: 31, scope: !112)
!115 = !DILocation(line: 103, column: 9, scope: !41)
!116 = !DILocation(line: 104, column: 35, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 103, column: 36)
!118 = !DILocation(line: 104, column: 41, scope: !117)
!119 = !DILocation(line: 104, column: 30, scope: !117)
!120 = !DILocation(line: 104, column: 52, scope: !117)
!121 = !DILocation(line: 104, column: 23, scope: !117)
!122 = !DILocation(line: 104, column: 14, scope: !117)
!123 = !DILocation(line: 104, column: 21, scope: !117)
!124 = !DILocation(line: 105, column: 26, scope: !117)
!125 = !DILocation(line: 105, column: 33, scope: !117)
!126 = !DILocation(line: 105, column: 21, scope: !117)
!127 = !DILocation(line: 105, column: 9, scope: !117)
!128 = !DILocation(line: 106, column: 5, scope: !117)
!129 = !DILocation(line: 107, column: 14, scope: !130)
!130 = distinct !DILexicalBlock(scope: !112, file: !1, line: 106, column: 12)
!131 = !DILocation(line: 107, column: 21, scope: !130)
!132 = !DILocation(line: 111, column: 10, scope: !41)
!133 = !DILocation(line: 111, column: 17, scope: !41)
!134 = !DILocation(line: 114, column: 5, scope: !41)
!135 = !DILocation(line: 117, column: 14, scope: !136)
!136 = distinct !DILexicalBlock(scope: !41, file: !1, line: 117, column: 9)
!137 = !DILocation(line: 117, column: 21, scope: !136)
!138 = !DILocation(line: 117, column: 9, scope: !41)
!139 = !DILocation(line: 118, column: 19, scope: !140)
!140 = distinct !DILexicalBlock(scope: !136, file: !1, line: 117, column: 30)
!141 = !DILocation(line: 118, column: 14, scope: !140)
!142 = !DILocation(line: 118, column: 9, scope: !140)
!143 = !DILocation(line: 119, column: 5, scope: !140)
!144 = !DILocation(line: 120, column: 14, scope: !145)
!145 = distinct !DILexicalBlock(scope: !41, file: !1, line: 120, column: 9)
!146 = !DILocation(line: 120, column: 19, scope: !145)
!147 = !DILocation(line: 120, column: 9, scope: !41)
!148 = !DILocation(line: 121, column: 19, scope: !149)
!149 = distinct !DILexicalBlock(scope: !145, file: !1, line: 120, column: 28)
!150 = !DILocation(line: 121, column: 14, scope: !149)
!151 = !DILocation(line: 121, column: 9, scope: !149)
!152 = !DILocation(line: 122, column: 5, scope: !149)
!153 = !DILocation(line: 123, column: 14, scope: !154)
!154 = distinct !DILexicalBlock(scope: !41, file: !1, line: 123, column: 9)
!155 = !DILocation(line: 123, column: 24, scope: !154)
!156 = !DILocation(line: 123, column: 9, scope: !41)
!157 = !DILocation(line: 124, column: 19, scope: !158)
!158 = distinct !DILexicalBlock(scope: !154, file: !1, line: 123, column: 33)
!159 = !DILocation(line: 124, column: 14, scope: !158)
!160 = !DILocation(line: 124, column: 9, scope: !158)
!161 = !DILocation(line: 125, column: 5, scope: !158)
!162 = !DILocation(line: 127, column: 5, scope: !41)
!163 = distinct !DISubprogram(name: "xmlFARegExecSave", scope: !1, file: !1, line: 44, type: !164, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !22)
!164 = !DISubroutineType(types: !165)
!165 = !{null, !166}
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxtPtr", file: !1, line: 11, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!168 = !DILocalVariable(name: "exec", arg: 1, scope: !163, file: !1, line: 44, type: !166)
!169 = !DILocation(line: 44, column: 48, scope: !163)
!170 = !DILocation(line: 45, column: 9, scope: !171)
!171 = distinct !DILexicalBlock(scope: !163, file: !1, line: 45, column: 9)
!172 = !DILocation(line: 45, column: 15, scope: !171)
!173 = !DILocation(line: 45, column: 25, scope: !171)
!174 = !DILocation(line: 45, column: 9, scope: !163)
!175 = !DILocation(line: 46, column: 9, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !1, line: 45, column: 34)
!177 = !DILocation(line: 49, column: 9, scope: !178)
!178 = distinct !DILexicalBlock(scope: !163, file: !1, line: 49, column: 9)
!179 = !DILocation(line: 49, column: 15, scope: !178)
!180 = !DILocation(line: 49, column: 27, scope: !178)
!181 = !DILocation(line: 49, column: 9, scope: !163)
!182 = !DILocation(line: 50, column: 13, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !1, line: 50, column: 13)
!184 = distinct !DILexicalBlock(scope: !178, file: !1, line: 49, column: 33)
!185 = !DILocation(line: 50, column: 19, scope: !183)
!186 = !DILocation(line: 50, column: 29, scope: !183)
!187 = !DILocation(line: 50, column: 35, scope: !183)
!188 = !DILocation(line: 50, column: 48, scope: !183)
!189 = !DILocation(line: 50, column: 55, scope: !183)
!190 = !DILocation(line: 50, column: 13, scope: !184)
!191 = !DILocation(line: 52, column: 27, scope: !192)
!192 = distinct !DILexicalBlock(scope: !183, file: !1, line: 50, column: 64)
!193 = !DILocation(line: 52, column: 33, scope: !192)
!194 = !DILocation(line: 52, column: 39, scope: !192)
!195 = !DILocation(line: 52, column: 50, scope: !192)
!196 = !DILocation(line: 52, column: 17, scope: !192)
!197 = !DILocation(line: 51, column: 57, scope: !192)
!198 = !DILocation(line: 51, column: 13, scope: !192)
!199 = !DILocation(line: 51, column: 19, scope: !192)
!200 = !DILocation(line: 51, column: 29, scope: !192)
!201 = !DILocation(line: 51, column: 35, scope: !192)
!202 = !DILocation(line: 51, column: 48, scope: !192)
!203 = !DILocation(line: 51, column: 55, scope: !192)
!204 = !DILocation(line: 53, column: 17, scope: !205)
!205 = distinct !DILexicalBlock(scope: !192, file: !1, line: 53, column: 17)
!206 = !DILocation(line: 53, column: 23, scope: !205)
!207 = !DILocation(line: 53, column: 33, scope: !205)
!208 = !DILocation(line: 53, column: 39, scope: !205)
!209 = !DILocation(line: 53, column: 52, scope: !205)
!210 = !DILocation(line: 53, column: 59, scope: !205)
!211 = !DILocation(line: 53, column: 17, scope: !192)
!212 = !DILocation(line: 54, column: 17, scope: !213)
!213 = distinct !DILexicalBlock(scope: !205, file: !1, line: 53, column: 68)
!214 = !DILocation(line: 55, column: 17, scope: !213)
!215 = !DILocation(line: 55, column: 23, scope: !213)
!216 = !DILocation(line: 55, column: 30, scope: !213)
!217 = !DILocation(line: 56, column: 17, scope: !213)
!218 = !DILocation(line: 58, column: 9, scope: !192)
!219 = !DILocation(line: 61, column: 16, scope: !184)
!220 = !DILocation(line: 61, column: 22, scope: !184)
!221 = !DILocation(line: 61, column: 32, scope: !184)
!222 = !DILocation(line: 61, column: 38, scope: !184)
!223 = !DILocation(line: 61, column: 51, scope: !184)
!224 = !DILocation(line: 61, column: 9, scope: !184)
!225 = !DILocation(line: 61, column: 59, scope: !184)
!226 = !DILocation(line: 61, column: 65, scope: !184)
!227 = !DILocation(line: 62, column: 16, scope: !184)
!228 = !DILocation(line: 62, column: 22, scope: !184)
!229 = !DILocation(line: 62, column: 28, scope: !184)
!230 = !DILocation(line: 62, column: 39, scope: !184)
!231 = !DILocation(line: 65, column: 9, scope: !184)
!232 = !DILocation(line: 70, column: 9, scope: !184)
!233 = !DILocation(line: 71, column: 5, scope: !184)
!234 = !DILocation(line: 72, column: 5, scope: !163)
!235 = !DILocation(line: 72, column: 11, scope: !163)
!236 = !DILocation(line: 72, column: 22, scope: !163)
!237 = !DILocation(line: 73, column: 1, scope: !163)
!238 = distinct !DISubprogram(name: "memcpy", scope: !239, file: !239, line: 12, type: !240, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !9, retainedNodes: !22)
!239 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!240 = !DISubroutineType(types: !241)
!241 = !{!3, !3, !242, !6}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!244 = !DILocalVariable(name: "destaddr", arg: 1, scope: !238, file: !239, line: 12, type: !3)
!245 = !DILocation(line: 12, column: 20, scope: !238)
!246 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !238, file: !239, line: 12, type: !242)
!247 = !DILocation(line: 12, column: 42, scope: !238)
!248 = !DILocalVariable(name: "len", arg: 3, scope: !238, file: !239, line: 12, type: !6)
!249 = !DILocation(line: 12, column: 58, scope: !238)
!250 = !DILocalVariable(name: "dest", scope: !238, file: !239, line: 13, type: !251)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!252 = !DILocation(line: 13, column: 9, scope: !238)
!253 = !DILocation(line: 13, column: 16, scope: !238)
!254 = !DILocalVariable(name: "src", scope: !238, file: !239, line: 14, type: !31)
!255 = !DILocation(line: 14, column: 15, scope: !238)
!256 = !DILocation(line: 14, column: 21, scope: !238)
!257 = !DILocation(line: 16, column: 3, scope: !238)
!258 = !DILocation(line: 16, column: 13, scope: !238)
!259 = !DILocation(line: 16, column: 16, scope: !238)
!260 = !DILocation(line: 17, column: 19, scope: !238)
!261 = !DILocation(line: 17, column: 15, scope: !238)
!262 = !DILocation(line: 17, column: 10, scope: !238)
!263 = !DILocation(line: 17, column: 13, scope: !238)
!264 = distinct !{!264, !257, !260, !265}
!265 = !{!"llvm.loop.mustprogress"}
!266 = !DILocation(line: 18, column: 10, scope: !238)
!267 = !DILocation(line: 18, column: 3, scope: !238)

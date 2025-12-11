; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/251_xmlregexp.c_3100_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/251_xmlregexp.c_3100_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32, i32, i32*, %struct.anon*, %struct._xmlRegexp* }
%struct.anon = type { i32* }
%struct._xmlRegexp = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"saving regexp\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nbCounters\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"nbRollbacks\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"rollbacks_size\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.5 = private unnamed_addr constant [69 x i8] c"(nbCounters >= 0 && nbCounters <= nbCounters) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/251_xmlregexp.c_3100_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !34 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !41, metadata !DIExpression()), !dbg !42
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !43, metadata !DIExpression()), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegExecSave(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !46 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !49, metadata !DIExpression()), !dbg !50
  %3 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !51
  %4 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %3, i32 0, i32 3, !dbg !53
  %5 = load %struct.anon*, %struct.anon** %4, align 8, !dbg !53
  %6 = icmp eq %struct.anon* %5, null, !dbg !54
  br i1 %6, label %7, label %10, !dbg !55

7:                                                ; preds = %1
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !56
  %8 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !58
  %9 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %8, i32 0, i32 0, !dbg !59
  store i32 1, i32* %9, align 8, !dbg !60
  br label %53, !dbg !61

10:                                               ; preds = %1
  %11 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !62
  %12 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %11, i32 0, i32 3, !dbg !64
  %13 = load %struct.anon*, %struct.anon** %12, align 8, !dbg !64
  %14 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !65
  %15 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %14, i32 0, i32 1, !dbg !66
  %16 = load i32, i32* %15, align 4, !dbg !66
  %17 = sext i32 %16 to i64, !dbg !62
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %13, i64 %17, !dbg !62
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0, !dbg !67
  %20 = load i32*, i32** %19, align 8, !dbg !67
  %21 = icmp eq i32* %20, null, !dbg !68
  br i1 %21, label %22, label %25, !dbg !69

22:                                               ; preds = %10
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !70
  %23 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !72
  %24 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %23, i32 0, i32 0, !dbg !73
  store i32 1, i32* %24, align 8, !dbg !74
  br label %53, !dbg !75

25:                                               ; preds = %10
  %26 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !76
  %27 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %26, i32 0, i32 3, !dbg !77
  %28 = load %struct.anon*, %struct.anon** %27, align 8, !dbg !77
  %29 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !78
  %30 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %29, i32 0, i32 1, !dbg !79
  %31 = load i32, i32* %30, align 4, !dbg !79
  %32 = sext i32 %31 to i64, !dbg !76
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %28, i64 %32, !dbg !76
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %33, i32 0, i32 0, !dbg !80
  %35 = load i32*, i32** %34, align 8, !dbg !80
  %36 = bitcast i32* %35 to i8*, !dbg !81
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !82
  %38 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %37, i32 0, i32 2, !dbg !83
  %39 = load i32*, i32** %38, align 8, !dbg !83
  %40 = bitcast i32* %39 to i8*, !dbg !81
  %41 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !84
  %42 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %41, i32 0, i32 4, !dbg !85
  %43 = load %struct._xmlRegexp*, %struct._xmlRegexp** %42, align 8, !dbg !85
  %44 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %43, i32 0, i32 0, !dbg !86
  %45 = load i32, i32* %44, align 4, !dbg !86
  %46 = sext i32 %45 to i64, !dbg !84
  %47 = mul i64 %46, 4, !dbg !87
  %48 = call i8* @memcpy(i8* %36, i8* %40, i64 %47), !dbg !81
  %49 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !88
  %50 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %49, i32 0, i32 1, !dbg !89
  %51 = load i32, i32* %50, align 4, !dbg !90
  %52 = add nsw i32 %51, 1, !dbg !90
  store i32 %52, i32* %50, align 4, !dbg !90
  br label %53, !dbg !91

53:                                               ; preds = %25, %22, %7
  ret void, !dbg !91
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFAGenerateTransitions(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !92 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !93, metadata !DIExpression()), !dbg !94
  %3 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !95
  call void @xmlRegExecSave(%struct._xmlRegExecCtxt* noundef %3), !dbg !96
  ret void, !dbg !97
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !98 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlRegExecCtxt*, align 8
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %3, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %4, metadata !105, metadata !DIExpression()), !dbg !106
  %7 = bitcast i32* %2 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)), !dbg !108
  %8 = bitcast i32* %3 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0)), !dbg !110
  %9 = bitcast i32* %4 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0)), !dbg !112
  %10 = load i32, i32* %2, align 4, !dbg !113
  %11 = icmp sge i32 %10, 0, !dbg !114
  %12 = zext i1 %11 to i32, !dbg !114
  %13 = sext i32 %12 to i64, !dbg !113
  call void @klee_assume(i64 noundef %13), !dbg !115
  %14 = load i32, i32* %2, align 4, !dbg !116
  %15 = icmp sle i32 %14, 100, !dbg !117
  %16 = zext i1 %15 to i32, !dbg !117
  %17 = sext i32 %16 to i64, !dbg !116
  call void @klee_assume(i64 noundef %17), !dbg !118
  %18 = load i32, i32* %3, align 4, !dbg !119
  %19 = icmp sge i32 %18, 0, !dbg !120
  %20 = zext i1 %19 to i32, !dbg !120
  %21 = sext i32 %20 to i64, !dbg !119
  call void @klee_assume(i64 noundef %21), !dbg !121
  %22 = load i32, i32* %3, align 4, !dbg !122
  %23 = load i32, i32* %4, align 4, !dbg !123
  %24 = icmp slt i32 %22, %23, !dbg !124
  %25 = zext i1 %24 to i32, !dbg !124
  %26 = sext i32 %25 to i64, !dbg !122
  call void @klee_assume(i64 noundef %26), !dbg !125
  %27 = load i32, i32* %4, align 4, !dbg !126
  %28 = icmp sgt i32 %27, 0, !dbg !127
  %29 = zext i1 %28 to i32, !dbg !127
  %30 = sext i32 %29 to i64, !dbg !126
  call void @klee_assume(i64 noundef %30), !dbg !128
  %31 = load i32, i32* %4, align 4, !dbg !129
  %32 = icmp sle i32 %31, 100, !dbg !130
  %33 = zext i1 %32 to i32, !dbg !130
  %34 = sext i32 %33 to i64, !dbg !129
  call void @klee_assume(i64 noundef %34), !dbg !131
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %5, metadata !132, metadata !DIExpression()), !dbg !133
  %35 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !134
  %36 = bitcast i8* %35 to %struct._xmlRegExecCtxt*, !dbg !135
  store %struct._xmlRegExecCtxt* %36, %struct._xmlRegExecCtxt** %5, align 8, !dbg !133
  %37 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !136
  %38 = icmp ne %struct._xmlRegExecCtxt* %37, null, !dbg !136
  br i1 %38, label %40, label %39, !dbg !138

39:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !139
  br label %199, !dbg !139

40:                                               ; preds = %0
  %41 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !140
  %42 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %41, i32 0, i32 0, !dbg !141
  store i32 0, i32* %42, align 8, !dbg !142
  %43 = load i32, i32* %3, align 4, !dbg !143
  %44 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !144
  %45 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %44, i32 0, i32 1, !dbg !145
  store i32 %43, i32* %45, align 4, !dbg !146
  %46 = load i32, i32* %2, align 4, !dbg !147
  %47 = sext i32 %46 to i64, !dbg !147
  %48 = mul i64 %47, 4, !dbg !148
  %49 = call noalias i8* @malloc(i64 noundef %48) #7, !dbg !149
  %50 = bitcast i8* %49 to i32*, !dbg !150
  %51 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !151
  %52 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %51, i32 0, i32 2, !dbg !152
  store i32* %50, i32** %52, align 8, !dbg !153
  %53 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !154
  %54 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %53, i32 0, i32 2, !dbg !156
  %55 = load i32*, i32** %54, align 8, !dbg !156
  %56 = icmp ne i32* %55, null, !dbg !154
  br i1 %56, label %60, label %57, !dbg !157

57:                                               ; preds = %40
  %58 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !158
  %59 = bitcast %struct._xmlRegExecCtxt* %58 to i8*, !dbg !158
  call void @free(i8* noundef %59) #7, !dbg !160
  store i32 0, i32* %1, align 4, !dbg !161
  br label %199, !dbg !161

60:                                               ; preds = %40
  %61 = call noalias i8* @malloc(i64 noundef 4) #7, !dbg !162
  %62 = bitcast i8* %61 to %struct._xmlRegexp*, !dbg !163
  %63 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !164
  %64 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %63, i32 0, i32 4, !dbg !165
  store %struct._xmlRegexp* %62, %struct._xmlRegexp** %64, align 8, !dbg !166
  %65 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !167
  %66 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %65, i32 0, i32 4, !dbg !169
  %67 = load %struct._xmlRegexp*, %struct._xmlRegexp** %66, align 8, !dbg !169
  %68 = icmp ne %struct._xmlRegexp* %67, null, !dbg !167
  br i1 %68, label %76, label %69, !dbg !170

69:                                               ; preds = %60
  %70 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !171
  %71 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %70, i32 0, i32 2, !dbg !173
  %72 = load i32*, i32** %71, align 8, !dbg !173
  %73 = bitcast i32* %72 to i8*, !dbg !171
  call void @free(i8* noundef %73) #7, !dbg !174
  %74 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !175
  %75 = bitcast %struct._xmlRegExecCtxt* %74 to i8*, !dbg !175
  call void @free(i8* noundef %75) #7, !dbg !176
  store i32 0, i32* %1, align 4, !dbg !177
  br label %199, !dbg !177

76:                                               ; preds = %60
  %77 = load i32, i32* %2, align 4, !dbg !178
  %78 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !179
  %79 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %78, i32 0, i32 4, !dbg !180
  %80 = load %struct._xmlRegexp*, %struct._xmlRegexp** %79, align 8, !dbg !180
  %81 = getelementptr inbounds %struct._xmlRegexp, %struct._xmlRegexp* %80, i32 0, i32 0, !dbg !181
  store i32 %77, i32* %81, align 4, !dbg !182
  %82 = load i32, i32* %4, align 4, !dbg !183
  %83 = sext i32 %82 to i64, !dbg !183
  %84 = mul i64 %83, 8, !dbg !184
  %85 = call noalias i8* @malloc(i64 noundef %84) #7, !dbg !185
  %86 = bitcast i8* %85 to %struct.anon*, !dbg !186
  %87 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !187
  %88 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %87, i32 0, i32 3, !dbg !188
  store %struct.anon* %86, %struct.anon** %88, align 8, !dbg !189
  %89 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !190
  %90 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %89, i32 0, i32 3, !dbg !192
  %91 = load %struct.anon*, %struct.anon** %90, align 8, !dbg !192
  %92 = icmp ne %struct.anon* %91, null, !dbg !190
  br i1 %92, label %104, label %93, !dbg !193

93:                                               ; preds = %76
  %94 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !194
  %95 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %94, i32 0, i32 4, !dbg !196
  %96 = load %struct._xmlRegexp*, %struct._xmlRegexp** %95, align 8, !dbg !196
  %97 = bitcast %struct._xmlRegexp* %96 to i8*, !dbg !194
  call void @free(i8* noundef %97) #7, !dbg !197
  %98 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !198
  %99 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %98, i32 0, i32 2, !dbg !199
  %100 = load i32*, i32** %99, align 8, !dbg !199
  %101 = bitcast i32* %100 to i8*, !dbg !198
  call void @free(i8* noundef %101) #7, !dbg !200
  %102 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !201
  %103 = bitcast %struct._xmlRegExecCtxt* %102 to i8*, !dbg !201
  call void @free(i8* noundef %103) #7, !dbg !202
  store i32 0, i32* %1, align 4, !dbg !203
  br label %199, !dbg !203

104:                                              ; preds = %76
  %105 = load i32, i32* %2, align 4, !dbg !204
  %106 = sext i32 %105 to i64, !dbg !204
  %107 = mul i64 %106, 4, !dbg !205
  %108 = call noalias i8* @malloc(i64 noundef %107) #7, !dbg !206
  %109 = bitcast i8* %108 to i32*, !dbg !207
  %110 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !208
  %111 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %110, i32 0, i32 3, !dbg !209
  %112 = load %struct.anon*, %struct.anon** %111, align 8, !dbg !209
  %113 = load i32, i32* %3, align 4, !dbg !210
  %114 = sext i32 %113 to i64, !dbg !208
  %115 = getelementptr inbounds %struct.anon, %struct.anon* %112, i64 %114, !dbg !208
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0, !dbg !211
  store i32* %109, i32** %116, align 8, !dbg !212
  %117 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !213
  %118 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %117, i32 0, i32 3, !dbg !215
  %119 = load %struct.anon*, %struct.anon** %118, align 8, !dbg !215
  %120 = load i32, i32* %3, align 4, !dbg !216
  %121 = sext i32 %120 to i64, !dbg !213
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %119, i64 %121, !dbg !213
  %123 = getelementptr inbounds %struct.anon, %struct.anon* %122, i32 0, i32 0, !dbg !217
  %124 = load i32*, i32** %123, align 8, !dbg !217
  %125 = icmp ne i32* %124, null, !dbg !213
  br i1 %125, label %141, label %126, !dbg !218

126:                                              ; preds = %104
  %127 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !219
  %128 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %127, i32 0, i32 3, !dbg !221
  %129 = load %struct.anon*, %struct.anon** %128, align 8, !dbg !221
  %130 = bitcast %struct.anon* %129 to i8*, !dbg !219
  call void @free(i8* noundef %130) #7, !dbg !222
  %131 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !223
  %132 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %131, i32 0, i32 4, !dbg !224
  %133 = load %struct._xmlRegexp*, %struct._xmlRegexp** %132, align 8, !dbg !224
  %134 = bitcast %struct._xmlRegexp* %133 to i8*, !dbg !223
  call void @free(i8* noundef %134) #7, !dbg !225
  %135 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !226
  %136 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %135, i32 0, i32 2, !dbg !227
  %137 = load i32*, i32** %136, align 8, !dbg !227
  %138 = bitcast i32* %137 to i8*, !dbg !226
  call void @free(i8* noundef %138) #7, !dbg !228
  %139 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !229
  %140 = bitcast %struct._xmlRegExecCtxt* %139 to i8*, !dbg !229
  call void @free(i8* noundef %140) #7, !dbg !230
  store i32 0, i32* %1, align 4, !dbg !231
  br label %199, !dbg !231

141:                                              ; preds = %104
  call void @llvm.dbg.declare(metadata i32* %6, metadata !232, metadata !DIExpression()), !dbg !234
  store i32 0, i32* %6, align 4, !dbg !234
  br label %142, !dbg !235

142:                                              ; preds = %159, %141
  %143 = load i32, i32* %6, align 4, !dbg !236
  %144 = load i32, i32* %4, align 4, !dbg !238
  %145 = icmp slt i32 %143, %144, !dbg !239
  br i1 %145, label %146, label %162, !dbg !240

146:                                              ; preds = %142
  %147 = load i32, i32* %6, align 4, !dbg !241
  %148 = load i32, i32* %3, align 4, !dbg !244
  %149 = icmp ne i32 %147, %148, !dbg !245
  br i1 %149, label %150, label %158, !dbg !246

150:                                              ; preds = %146
  %151 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !247
  %152 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %151, i32 0, i32 3, !dbg !249
  %153 = load %struct.anon*, %struct.anon** %152, align 8, !dbg !249
  %154 = load i32, i32* %6, align 4, !dbg !250
  %155 = sext i32 %154 to i64, !dbg !247
  %156 = getelementptr inbounds %struct.anon, %struct.anon* %153, i64 %155, !dbg !247
  %157 = getelementptr inbounds %struct.anon, %struct.anon* %156, i32 0, i32 0, !dbg !251
  store i32* null, i32** %157, align 8, !dbg !252
  br label %158, !dbg !253

158:                                              ; preds = %150, %146
  br label %159, !dbg !254

159:                                              ; preds = %158
  %160 = load i32, i32* %6, align 4, !dbg !255
  %161 = add nsw i32 %160, 1, !dbg !255
  store i32 %161, i32* %6, align 4, !dbg !255
  br label %142, !dbg !256, !llvm.loop !257

162:                                              ; preds = %142
  %163 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !260
  call void @xmlFAGenerateTransitions(%struct._xmlRegExecCtxt* noundef %163), !dbg !261
  %164 = load i32, i32* %2, align 4, !dbg !262
  %165 = icmp sge i32 %164, 0, !dbg !262
  br i1 %165, label %166, label %172, !dbg !262

166:                                              ; preds = %162
  %167 = load i32, i32* %2, align 4, !dbg !262
  %168 = load i32, i32* %2, align 4, !dbg !262
  %169 = icmp sle i32 %167, %168, !dbg !262
  br i1 %169, label %170, label %172, !dbg !262

170:                                              ; preds = %166
  br i1 true, label %171, label %172, !dbg !262

171:                                              ; preds = %170
  br label %174, !dbg !262

172:                                              ; preds = %170, %166, %162
  %173 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 133, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !262
  br label %174, !dbg !262

174:                                              ; preds = %172, %171
  %175 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.6, i64 0, i64 0), i32 noundef 136, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !263
  %176 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !264
  %177 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %176, i32 0, i32 3, !dbg !265
  %178 = load %struct.anon*, %struct.anon** %177, align 8, !dbg !265
  %179 = load i32, i32* %3, align 4, !dbg !266
  %180 = sext i32 %179 to i64, !dbg !264
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %178, i64 %180, !dbg !264
  %182 = getelementptr inbounds %struct.anon, %struct.anon* %181, i32 0, i32 0, !dbg !267
  %183 = load i32*, i32** %182, align 8, !dbg !267
  %184 = bitcast i32* %183 to i8*, !dbg !264
  call void @free(i8* noundef %184) #7, !dbg !268
  %185 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !269
  %186 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %185, i32 0, i32 3, !dbg !270
  %187 = load %struct.anon*, %struct.anon** %186, align 8, !dbg !270
  %188 = bitcast %struct.anon* %187 to i8*, !dbg !269
  call void @free(i8* noundef %188) #7, !dbg !271
  %189 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !272
  %190 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %189, i32 0, i32 4, !dbg !273
  %191 = load %struct._xmlRegexp*, %struct._xmlRegexp** %190, align 8, !dbg !273
  %192 = bitcast %struct._xmlRegexp* %191 to i8*, !dbg !272
  call void @free(i8* noundef %192) #7, !dbg !274
  %193 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !275
  %194 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %193, i32 0, i32 2, !dbg !276
  %195 = load i32*, i32** %194, align 8, !dbg !276
  %196 = bitcast i32* %195 to i8*, !dbg !275
  call void @free(i8* noundef %196) #7, !dbg !277
  %197 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %5, align 8, !dbg !278
  %198 = bitcast %struct._xmlRegExecCtxt* %197 to i8*, !dbg !278
  call void @free(i8* noundef %198) #7, !dbg !279
  store i32 0, i32* %1, align 4, !dbg !280
  br label %199, !dbg !280

199:                                              ; preds = %174, %126, %93, %69, %57, %39
  %200 = load i32, i32* %1, align 4, !dbg !281
  ret i32 %200, !dbg !281
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !282 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !291, metadata !DIExpression()), !dbg !292
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !293, metadata !DIExpression()), !dbg !294
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !295, metadata !DIExpression()), !dbg !296
  call void @llvm.dbg.declare(metadata i8** %7, metadata !297, metadata !DIExpression()), !dbg !299
  %9 = load i8*, i8** %4, align 8, !dbg !300
  store i8* %9, i8** %7, align 8, !dbg !299
  call void @llvm.dbg.declare(metadata i8** %8, metadata !301, metadata !DIExpression()), !dbg !302
  %10 = load i8*, i8** %5, align 8, !dbg !303
  store i8* %10, i8** %8, align 8, !dbg !302
  br label %11, !dbg !304

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !305
  %13 = add i64 %12, -1, !dbg !305
  store i64 %13, i64* %6, align 8, !dbg !305
  %14 = icmp ugt i64 %12, 0, !dbg !306
  br i1 %14, label %15, label %21, !dbg !304

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !307
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !307
  store i8* %17, i8** %8, align 8, !dbg !307
  %18 = load i8, i8* %16, align 1, !dbg !308
  %19 = load i8*, i8** %7, align 8, !dbg !309
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !309
  store i8* %20, i8** %7, align 8, !dbg !309
  store i8 %18, i8* %19, align 1, !dbg !310
  br label %11, !dbg !304, !llvm.loop !311

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !312
  ret i8* %22, !dbg !313
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33, !33}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/251_xmlregexp.c_3100_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "8a2337629b1e41a4db3a950330d37b98")
!2 = !{!3, !4, !12, !19, !14}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 10, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 13, size: 256, elements: !7)
!7 = !{!8, !10, !11, !13, !18}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6, file: !1, line: 14, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !6, file: !1, line: 15, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !6, file: !1, line: 16, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !6, file: !1, line: 19, baseType: !14, size: 64, offset: 128)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !6, file: !1, line: 17, size: 64, elements: !16)
!16 = !{!17}
!17 = !DIDerivedType(tag: DW_TAG_member, name: "counts", scope: !15, file: !1, line: 18, baseType: !12, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_member, name: "comp", scope: !6, file: !1, line: 20, baseType: !19, size: 64, offset: 192)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegexp", file: !1, line: 11, baseType: !21)
!21 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegexp", file: !1, line: 23, size: 32, elements: !22)
!22 = !{!23}
!23 = !DIDerivedType(tag: DW_TAG_member, name: "nbCounters", scope: !21, file: !1, line: 24, baseType: !9, size: 32)
!24 = distinct !DICompileUnit(language: DW_LANG_C99, file: !25, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!25 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!26 = !{i32 7, !"Dwarf Version", i32 5}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{i32 7, !"PIC Level", i32 2}
!30 = !{i32 7, !"PIE Level", i32 2}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"Ubuntu clang version 14.0.6"}
!34 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 28, type: !35, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !3, !37}
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!40 = !{}
!41 = !DILocalVariable(name: "ctxt", arg: 1, scope: !34, file: !1, line: 28, type: !3)
!42 = !DILocation(line: 28, column: 31, scope: !34)
!43 = !DILocalVariable(name: "msg", arg: 2, scope: !34, file: !1, line: 28, type: !37)
!44 = !DILocation(line: 28, column: 49, scope: !34)
!45 = !DILocation(line: 30, column: 1, scope: !34)
!46 = distinct !DISubprogram(name: "xmlRegExecSave", scope: !1, file: !1, line: 33, type: !47, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !4}
!49 = !DILocalVariable(name: "exec", arg: 1, scope: !46, file: !1, line: 33, type: !4)
!50 = !DILocation(line: 33, column: 37, scope: !46)
!51 = !DILocation(line: 34, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 34, column: 9)
!53 = !DILocation(line: 34, column: 15, scope: !52)
!54 = !DILocation(line: 34, column: 25, scope: !52)
!55 = !DILocation(line: 34, column: 9, scope: !46)
!56 = !DILocation(line: 35, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !52, file: !1, line: 34, column: 34)
!58 = !DILocation(line: 36, column: 9, scope: !57)
!59 = !DILocation(line: 36, column: 15, scope: !57)
!60 = !DILocation(line: 36, column: 22, scope: !57)
!61 = !DILocation(line: 37, column: 9, scope: !57)
!62 = !DILocation(line: 40, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !46, file: !1, line: 40, column: 9)
!64 = !DILocation(line: 40, column: 15, scope: !63)
!65 = !DILocation(line: 40, column: 25, scope: !63)
!66 = !DILocation(line: 40, column: 31, scope: !63)
!67 = !DILocation(line: 40, column: 44, scope: !63)
!68 = !DILocation(line: 40, column: 51, scope: !63)
!69 = !DILocation(line: 40, column: 9, scope: !46)
!70 = !DILocation(line: 41, column: 9, scope: !71)
!71 = distinct !DILexicalBlock(scope: !63, file: !1, line: 40, column: 60)
!72 = !DILocation(line: 42, column: 9, scope: !71)
!73 = !DILocation(line: 42, column: 15, scope: !71)
!74 = !DILocation(line: 42, column: 22, scope: !71)
!75 = !DILocation(line: 43, column: 9, scope: !71)
!76 = !DILocation(line: 47, column: 12, scope: !46)
!77 = !DILocation(line: 47, column: 18, scope: !46)
!78 = !DILocation(line: 47, column: 28, scope: !46)
!79 = !DILocation(line: 47, column: 34, scope: !46)
!80 = !DILocation(line: 47, column: 47, scope: !46)
!81 = !DILocation(line: 47, column: 5, scope: !46)
!82 = !DILocation(line: 47, column: 55, scope: !46)
!83 = !DILocation(line: 47, column: 61, scope: !46)
!84 = !DILocation(line: 48, column: 12, scope: !46)
!85 = !DILocation(line: 48, column: 18, scope: !46)
!86 = !DILocation(line: 48, column: 24, scope: !46)
!87 = !DILocation(line: 48, column: 35, scope: !46)
!88 = !DILocation(line: 50, column: 5, scope: !46)
!89 = !DILocation(line: 50, column: 11, scope: !46)
!90 = !DILocation(line: 50, column: 22, scope: !46)
!91 = !DILocation(line: 51, column: 1, scope: !46)
!92 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 54, type: !47, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!93 = !DILocalVariable(name: "exec", arg: 1, scope: !92, file: !1, line: 54, type: !4)
!94 = !DILocation(line: 54, column: 47, scope: !92)
!95 = !DILocation(line: 56, column: 20, scope: !92)
!96 = !DILocation(line: 56, column: 5, scope: !92)
!97 = !DILocation(line: 57, column: 1, scope: !92)
!98 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !99, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !40)
!99 = !DISubroutineType(types: !100)
!100 = !{!9}
!101 = !DILocalVariable(name: "nbCounters", scope: !98, file: !1, line: 61, type: !9)
!102 = !DILocation(line: 61, column: 9, scope: !98)
!103 = !DILocalVariable(name: "nbRollbacks", scope: !98, file: !1, line: 62, type: !9)
!104 = !DILocation(line: 62, column: 9, scope: !98)
!105 = !DILocalVariable(name: "rollbacks_size", scope: !98, file: !1, line: 63, type: !9)
!106 = !DILocation(line: 63, column: 9, scope: !98)
!107 = !DILocation(line: 66, column: 24, scope: !98)
!108 = !DILocation(line: 66, column: 5, scope: !98)
!109 = !DILocation(line: 67, column: 24, scope: !98)
!110 = !DILocation(line: 67, column: 5, scope: !98)
!111 = !DILocation(line: 68, column: 24, scope: !98)
!112 = !DILocation(line: 68, column: 5, scope: !98)
!113 = !DILocation(line: 71, column: 17, scope: !98)
!114 = !DILocation(line: 71, column: 28, scope: !98)
!115 = !DILocation(line: 71, column: 5, scope: !98)
!116 = !DILocation(line: 72, column: 17, scope: !98)
!117 = !DILocation(line: 72, column: 28, scope: !98)
!118 = !DILocation(line: 72, column: 5, scope: !98)
!119 = !DILocation(line: 73, column: 17, scope: !98)
!120 = !DILocation(line: 73, column: 29, scope: !98)
!121 = !DILocation(line: 73, column: 5, scope: !98)
!122 = !DILocation(line: 74, column: 17, scope: !98)
!123 = !DILocation(line: 74, column: 31, scope: !98)
!124 = !DILocation(line: 74, column: 29, scope: !98)
!125 = !DILocation(line: 74, column: 5, scope: !98)
!126 = !DILocation(line: 75, column: 17, scope: !98)
!127 = !DILocation(line: 75, column: 32, scope: !98)
!128 = !DILocation(line: 75, column: 5, scope: !98)
!129 = !DILocation(line: 76, column: 17, scope: !98)
!130 = !DILocation(line: 76, column: 32, scope: !98)
!131 = !DILocation(line: 76, column: 5, scope: !98)
!132 = !DILocalVariable(name: "exec", scope: !98, file: !1, line: 79, type: !4)
!133 = !DILocation(line: 79, column: 21, scope: !98)
!134 = !DILocation(line: 79, column: 46, scope: !98)
!135 = !DILocation(line: 79, column: 28, scope: !98)
!136 = !DILocation(line: 80, column: 10, scope: !137)
!137 = distinct !DILexicalBlock(scope: !98, file: !1, line: 80, column: 9)
!138 = !DILocation(line: 80, column: 9, scope: !98)
!139 = !DILocation(line: 80, column: 16, scope: !137)
!140 = !DILocation(line: 83, column: 5, scope: !98)
!141 = !DILocation(line: 83, column: 11, scope: !98)
!142 = !DILocation(line: 83, column: 18, scope: !98)
!143 = !DILocation(line: 84, column: 25, scope: !98)
!144 = !DILocation(line: 84, column: 5, scope: !98)
!145 = !DILocation(line: 84, column: 11, scope: !98)
!146 = !DILocation(line: 84, column: 23, scope: !98)
!147 = !DILocation(line: 87, column: 34, scope: !98)
!148 = !DILocation(line: 87, column: 45, scope: !98)
!149 = !DILocation(line: 87, column: 27, scope: !98)
!150 = !DILocation(line: 87, column: 20, scope: !98)
!151 = !DILocation(line: 87, column: 5, scope: !98)
!152 = !DILocation(line: 87, column: 11, scope: !98)
!153 = !DILocation(line: 87, column: 18, scope: !98)
!154 = !DILocation(line: 88, column: 10, scope: !155)
!155 = distinct !DILexicalBlock(scope: !98, file: !1, line: 88, column: 9)
!156 = !DILocation(line: 88, column: 16, scope: !155)
!157 = !DILocation(line: 88, column: 9, scope: !98)
!158 = !DILocation(line: 89, column: 14, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 88, column: 24)
!160 = !DILocation(line: 89, column: 9, scope: !159)
!161 = !DILocation(line: 90, column: 9, scope: !159)
!162 = !DILocation(line: 94, column: 31, scope: !98)
!163 = !DILocation(line: 94, column: 18, scope: !98)
!164 = !DILocation(line: 94, column: 5, scope: !98)
!165 = !DILocation(line: 94, column: 11, scope: !98)
!166 = !DILocation(line: 94, column: 16, scope: !98)
!167 = !DILocation(line: 95, column: 10, scope: !168)
!168 = distinct !DILexicalBlock(scope: !98, file: !1, line: 95, column: 9)
!169 = !DILocation(line: 95, column: 16, scope: !168)
!170 = !DILocation(line: 95, column: 9, scope: !98)
!171 = !DILocation(line: 96, column: 14, scope: !172)
!172 = distinct !DILexicalBlock(scope: !168, file: !1, line: 95, column: 22)
!173 = !DILocation(line: 96, column: 20, scope: !172)
!174 = !DILocation(line: 96, column: 9, scope: !172)
!175 = !DILocation(line: 97, column: 14, scope: !172)
!176 = !DILocation(line: 97, column: 9, scope: !172)
!177 = !DILocation(line: 98, column: 9, scope: !172)
!178 = !DILocation(line: 100, column: 30, scope: !98)
!179 = !DILocation(line: 100, column: 5, scope: !98)
!180 = !DILocation(line: 100, column: 11, scope: !98)
!181 = !DILocation(line: 100, column: 17, scope: !98)
!182 = !DILocation(line: 100, column: 28, scope: !98)
!183 = !DILocation(line: 103, column: 55, scope: !98)
!184 = !DILocation(line: 103, column: 70, scope: !98)
!185 = !DILocation(line: 103, column: 48, scope: !98)
!186 = !DILocation(line: 103, column: 23, scope: !98)
!187 = !DILocation(line: 103, column: 5, scope: !98)
!188 = !DILocation(line: 103, column: 11, scope: !98)
!189 = !DILocation(line: 103, column: 21, scope: !98)
!190 = !DILocation(line: 104, column: 10, scope: !191)
!191 = distinct !DILexicalBlock(scope: !98, file: !1, line: 104, column: 9)
!192 = !DILocation(line: 104, column: 16, scope: !191)
!193 = !DILocation(line: 104, column: 9, scope: !98)
!194 = !DILocation(line: 105, column: 14, scope: !195)
!195 = distinct !DILexicalBlock(scope: !191, file: !1, line: 104, column: 27)
!196 = !DILocation(line: 105, column: 20, scope: !195)
!197 = !DILocation(line: 105, column: 9, scope: !195)
!198 = !DILocation(line: 106, column: 14, scope: !195)
!199 = !DILocation(line: 106, column: 20, scope: !195)
!200 = !DILocation(line: 106, column: 9, scope: !195)
!201 = !DILocation(line: 107, column: 14, scope: !195)
!202 = !DILocation(line: 107, column: 9, scope: !195)
!203 = !DILocation(line: 108, column: 9, scope: !195)
!204 = !DILocation(line: 112, column: 57, scope: !98)
!205 = !DILocation(line: 112, column: 68, scope: !98)
!206 = !DILocation(line: 112, column: 50, scope: !98)
!207 = !DILocation(line: 112, column: 43, scope: !98)
!208 = !DILocation(line: 112, column: 5, scope: !98)
!209 = !DILocation(line: 112, column: 11, scope: !98)
!210 = !DILocation(line: 112, column: 21, scope: !98)
!211 = !DILocation(line: 112, column: 34, scope: !98)
!212 = !DILocation(line: 112, column: 41, scope: !98)
!213 = !DILocation(line: 113, column: 10, scope: !214)
!214 = distinct !DILexicalBlock(scope: !98, file: !1, line: 113, column: 9)
!215 = !DILocation(line: 113, column: 16, scope: !214)
!216 = !DILocation(line: 113, column: 26, scope: !214)
!217 = !DILocation(line: 113, column: 39, scope: !214)
!218 = !DILocation(line: 113, column: 9, scope: !98)
!219 = !DILocation(line: 114, column: 14, scope: !220)
!220 = distinct !DILexicalBlock(scope: !214, file: !1, line: 113, column: 47)
!221 = !DILocation(line: 114, column: 20, scope: !220)
!222 = !DILocation(line: 114, column: 9, scope: !220)
!223 = !DILocation(line: 115, column: 14, scope: !220)
!224 = !DILocation(line: 115, column: 20, scope: !220)
!225 = !DILocation(line: 115, column: 9, scope: !220)
!226 = !DILocation(line: 116, column: 14, scope: !220)
!227 = !DILocation(line: 116, column: 20, scope: !220)
!228 = !DILocation(line: 116, column: 9, scope: !220)
!229 = !DILocation(line: 117, column: 14, scope: !220)
!230 = !DILocation(line: 117, column: 9, scope: !220)
!231 = !DILocation(line: 118, column: 9, scope: !220)
!232 = !DILocalVariable(name: "i", scope: !233, file: !1, line: 122, type: !9)
!233 = distinct !DILexicalBlock(scope: !98, file: !1, line: 122, column: 5)
!234 = !DILocation(line: 122, column: 14, scope: !233)
!235 = !DILocation(line: 122, column: 10, scope: !233)
!236 = !DILocation(line: 122, column: 21, scope: !237)
!237 = distinct !DILexicalBlock(scope: !233, file: !1, line: 122, column: 5)
!238 = !DILocation(line: 122, column: 25, scope: !237)
!239 = !DILocation(line: 122, column: 23, scope: !237)
!240 = !DILocation(line: 122, column: 5, scope: !233)
!241 = !DILocation(line: 123, column: 13, scope: !242)
!242 = distinct !DILexicalBlock(scope: !243, file: !1, line: 123, column: 13)
!243 = distinct !DILexicalBlock(scope: !237, file: !1, line: 122, column: 46)
!244 = !DILocation(line: 123, column: 18, scope: !242)
!245 = !DILocation(line: 123, column: 15, scope: !242)
!246 = !DILocation(line: 123, column: 13, scope: !243)
!247 = !DILocation(line: 124, column: 13, scope: !248)
!248 = distinct !DILexicalBlock(scope: !242, file: !1, line: 123, column: 31)
!249 = !DILocation(line: 124, column: 19, scope: !248)
!250 = !DILocation(line: 124, column: 29, scope: !248)
!251 = !DILocation(line: 124, column: 32, scope: !248)
!252 = !DILocation(line: 124, column: 39, scope: !248)
!253 = !DILocation(line: 125, column: 9, scope: !248)
!254 = !DILocation(line: 126, column: 5, scope: !243)
!255 = !DILocation(line: 122, column: 42, scope: !237)
!256 = !DILocation(line: 122, column: 5, scope: !237)
!257 = distinct !{!257, !240, !258, !259}
!258 = !DILocation(line: 126, column: 5, scope: !233)
!259 = !{!"llvm.loop.mustprogress"}
!260 = !DILocation(line: 129, column: 30, scope: !98)
!261 = !DILocation(line: 129, column: 5, scope: !98)
!262 = !DILocation(line: 133, column: 5, scope: !98)
!263 = !DILocation(line: 136, column: 5, scope: !98)
!264 = !DILocation(line: 139, column: 10, scope: !98)
!265 = !DILocation(line: 139, column: 16, scope: !98)
!266 = !DILocation(line: 139, column: 26, scope: !98)
!267 = !DILocation(line: 139, column: 39, scope: !98)
!268 = !DILocation(line: 139, column: 5, scope: !98)
!269 = !DILocation(line: 140, column: 10, scope: !98)
!270 = !DILocation(line: 140, column: 16, scope: !98)
!271 = !DILocation(line: 140, column: 5, scope: !98)
!272 = !DILocation(line: 141, column: 10, scope: !98)
!273 = !DILocation(line: 141, column: 16, scope: !98)
!274 = !DILocation(line: 141, column: 5, scope: !98)
!275 = !DILocation(line: 142, column: 10, scope: !98)
!276 = !DILocation(line: 142, column: 16, scope: !98)
!277 = !DILocation(line: 142, column: 5, scope: !98)
!278 = !DILocation(line: 143, column: 10, scope: !98)
!279 = !DILocation(line: 143, column: 5, scope: !98)
!280 = !DILocation(line: 145, column: 5, scope: !98)
!281 = !DILocation(line: 146, column: 1, scope: !98)
!282 = distinct !DISubprogram(name: "memcpy", scope: !283, file: !283, line: 12, type: !284, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !24, retainedNodes: !40)
!283 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!284 = !DISubroutineType(types: !285)
!285 = !{!3, !3, !286, !288}
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !289, line: 46, baseType: !290)
!289 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!290 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!291 = !DILocalVariable(name: "destaddr", arg: 1, scope: !282, file: !283, line: 12, type: !3)
!292 = !DILocation(line: 12, column: 20, scope: !282)
!293 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !282, file: !283, line: 12, type: !286)
!294 = !DILocation(line: 12, column: 42, scope: !282)
!295 = !DILocalVariable(name: "len", arg: 3, scope: !282, file: !283, line: 12, type: !288)
!296 = !DILocation(line: 12, column: 58, scope: !282)
!297 = !DILocalVariable(name: "dest", scope: !282, file: !283, line: 13, type: !298)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!299 = !DILocation(line: 13, column: 9, scope: !282)
!300 = !DILocation(line: 13, column: 16, scope: !282)
!301 = !DILocalVariable(name: "src", scope: !282, file: !283, line: 14, type: !37)
!302 = !DILocation(line: 14, column: 15, scope: !282)
!303 = !DILocation(line: 14, column: 21, scope: !282)
!304 = !DILocation(line: 16, column: 3, scope: !282)
!305 = !DILocation(line: 16, column: 13, scope: !282)
!306 = !DILocation(line: 16, column: 16, scope: !282)
!307 = !DILocation(line: 17, column: 19, scope: !282)
!308 = !DILocation(line: 17, column: 15, scope: !282)
!309 = !DILocation(line: 17, column: 10, scope: !282)
!310 = !DILocation(line: 17, column: 13, scope: !282)
!311 = distinct !{!311, !304, !307, !259}
!312 = !DILocation(line: 18, column: 10, scope: !282)
!313 = !DILocation(line: 18, column: 3, scope: !282)

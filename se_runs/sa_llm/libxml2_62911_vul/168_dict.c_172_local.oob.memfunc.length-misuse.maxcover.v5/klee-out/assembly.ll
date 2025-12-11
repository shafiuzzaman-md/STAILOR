; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/168_dict.c_172_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/168_dict.c_172_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { %struct._xmlDictStrings* }
%struct._xmlDictStrings = type { %struct._xmlDictStrings*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"(namelen <= (pool->end - pool->free)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/168_dict.c_172_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlDictLookup = private unnamed_addr constant [56 x i8] c"const char *xmlDictLookup(xmlDict *, const char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"namelen\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !14 {
  %4 = alloca %struct._xmlDict*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlDictStrings*, align 8
  %8 = alloca i8*, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %4, metadata !37, metadata !DIExpression()), !dbg !38
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !39, metadata !DIExpression()), !dbg !40
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !41, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings** %7, metadata !43, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata i8** %8, metadata !45, metadata !DIExpression()), !dbg !46
  %9 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !47
  %10 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %9, i32 0, i32 0, !dbg !48
  %11 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %10, align 8, !dbg !48
  store %struct._xmlDictStrings* %11, %struct._xmlDictStrings** %7, align 8, !dbg !49
  %12 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !50
  %13 = icmp eq %struct._xmlDictStrings* %12, null, !dbg !52
  br i1 %13, label %14, label %46, !dbg !53

14:                                               ; preds = %3
  %15 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !54
  %16 = bitcast i8* %15 to %struct._xmlDictStrings*, !dbg !54
  store %struct._xmlDictStrings* %16, %struct._xmlDictStrings** %7, align 8, !dbg !56
  %17 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !57
  %18 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %17, i32 0, i32 3, !dbg !58
  store i32 1000, i32* %18, align 8, !dbg !59
  %19 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !60
  %20 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %19, i32 0, i32 3, !dbg !61
  %21 = load i32, i32* %20, align 8, !dbg !61
  %22 = sext i32 %21 to i64, !dbg !60
  %23 = call noalias i8* @malloc(i64 noundef %22) #7, !dbg !62
  %24 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !63
  %25 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %24, i32 0, i32 1, !dbg !64
  store i8* %23, i8** %25, align 8, !dbg !65
  %26 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !66
  %27 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %26, i32 0, i32 1, !dbg !67
  %28 = load i8*, i8** %27, align 8, !dbg !67
  %29 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !68
  %30 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %29, i32 0, i32 3, !dbg !69
  %31 = load i32, i32* %30, align 8, !dbg !69
  %32 = sext i32 %31 to i64, !dbg !70
  %33 = getelementptr inbounds i8, i8* %28, i64 %32, !dbg !70
  %34 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !71
  %35 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %34, i32 0, i32 2, !dbg !72
  store i8* %33, i8** %35, align 8, !dbg !73
  %36 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !74
  %37 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %36, i32 0, i32 4, !dbg !75
  store i32 0, i32* %37, align 4, !dbg !76
  %38 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !77
  %39 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %38, i32 0, i32 0, !dbg !78
  %40 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %39, align 8, !dbg !78
  %41 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !79
  %42 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %41, i32 0, i32 0, !dbg !80
  store %struct._xmlDictStrings* %40, %struct._xmlDictStrings** %42, align 8, !dbg !81
  %43 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !82
  %44 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !83
  %45 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %44, i32 0, i32 0, !dbg !84
  store %struct._xmlDictStrings* %43, %struct._xmlDictStrings** %45, align 8, !dbg !85
  br label %46, !dbg !86

46:                                               ; preds = %14, %3
  %47 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !87
  %48 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %47, i32 0, i32 1, !dbg !89
  %49 = load i8*, i8** %48, align 8, !dbg !89
  %50 = load i32, i32* %6, align 4, !dbg !90
  %51 = sext i32 %50 to i64, !dbg !91
  %52 = getelementptr inbounds i8, i8* %49, i64 %51, !dbg !91
  %53 = getelementptr inbounds i8, i8* %52, i64 1, !dbg !92
  %54 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !93
  %55 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %54, i32 0, i32 2, !dbg !94
  %56 = load i8*, i8** %55, align 8, !dbg !94
  %57 = icmp ugt i8* %53, %56, !dbg !95
  br i1 %57, label %58, label %90, !dbg !96

58:                                               ; preds = %46
  %59 = call noalias i8* @malloc(i64 noundef 32) #7, !dbg !97
  %60 = bitcast i8* %59 to %struct._xmlDictStrings*, !dbg !97
  store %struct._xmlDictStrings* %60, %struct._xmlDictStrings** %7, align 8, !dbg !99
  %61 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !100
  %62 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %61, i32 0, i32 3, !dbg !101
  store i32 1000, i32* %62, align 8, !dbg !102
  %63 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !103
  %64 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %63, i32 0, i32 3, !dbg !104
  %65 = load i32, i32* %64, align 8, !dbg !104
  %66 = sext i32 %65 to i64, !dbg !103
  %67 = call noalias i8* @malloc(i64 noundef %66) #7, !dbg !105
  %68 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !106
  %69 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %68, i32 0, i32 1, !dbg !107
  store i8* %67, i8** %69, align 8, !dbg !108
  %70 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !109
  %71 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %70, i32 0, i32 1, !dbg !110
  %72 = load i8*, i8** %71, align 8, !dbg !110
  %73 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !111
  %74 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %73, i32 0, i32 3, !dbg !112
  %75 = load i32, i32* %74, align 8, !dbg !112
  %76 = sext i32 %75 to i64, !dbg !113
  %77 = getelementptr inbounds i8, i8* %72, i64 %76, !dbg !113
  %78 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !114
  %79 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %78, i32 0, i32 2, !dbg !115
  store i8* %77, i8** %79, align 8, !dbg !116
  %80 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !117
  %81 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %80, i32 0, i32 4, !dbg !118
  store i32 0, i32* %81, align 4, !dbg !119
  %82 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !120
  %83 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %82, i32 0, i32 0, !dbg !121
  %84 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %83, align 8, !dbg !121
  %85 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !122
  %86 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %85, i32 0, i32 0, !dbg !123
  store %struct._xmlDictStrings* %84, %struct._xmlDictStrings** %86, align 8, !dbg !124
  %87 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !125
  %88 = load %struct._xmlDict*, %struct._xmlDict** %4, align 8, !dbg !126
  %89 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %88, i32 0, i32 0, !dbg !127
  store %struct._xmlDictStrings* %87, %struct._xmlDictStrings** %89, align 8, !dbg !128
  br label %90, !dbg !129

90:                                               ; preds = %58, %46
  br label %91, !dbg !94

91:                                               ; preds = %90
  call void @llvm.dbg.label(metadata !130), !dbg !131
  %92 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !132
  %93 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %92, i32 0, i32 1, !dbg !133
  %94 = load i8*, i8** %93, align 8, !dbg !133
  store i8* %94, i8** %8, align 8, !dbg !134
  %95 = load i32, i32* %6, align 4, !dbg !135
  %96 = sext i32 %95 to i64, !dbg !135
  %97 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !135
  %98 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %97, i32 0, i32 2, !dbg !135
  %99 = load i8*, i8** %98, align 8, !dbg !135
  %100 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !135
  %101 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %100, i32 0, i32 1, !dbg !135
  %102 = load i8*, i8** %101, align 8, !dbg !135
  %103 = ptrtoint i8* %99 to i64, !dbg !135
  %104 = ptrtoint i8* %102 to i64, !dbg !135
  %105 = sub i64 %103, %104, !dbg !135
  %106 = icmp sle i64 %96, %105, !dbg !135
  br i1 %106, label %107, label %109, !dbg !135

107:                                              ; preds = %91
  br i1 true, label %108, label %109, !dbg !135

108:                                              ; preds = %107
  br label %111, !dbg !135

109:                                              ; preds = %107, %91
  %110 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 61, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.xmlDictLookup, i64 0, i64 0)), !dbg !135
  br label %111, !dbg !135

111:                                              ; preds = %109, %108
  %112 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.2, i64 0, i64 0), i32 noundef 64, i8* noundef getelementptr inbounds ([56 x i8], [56 x i8]* @__PRETTY_FUNCTION__.xmlDictLookup, i64 0, i64 0)), !dbg !136
  %113 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !137
  %114 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %113, i32 0, i32 1, !dbg !138
  %115 = load i8*, i8** %114, align 8, !dbg !138
  %116 = load i8*, i8** %5, align 8, !dbg !139
  %117 = load i32, i32* %6, align 4, !dbg !140
  %118 = sext i32 %117 to i64, !dbg !140
  %119 = call i8* @memcpy(i8* %115, i8* %116, i64 %118), !dbg !141
  %120 = load i32, i32* %6, align 4, !dbg !142
  %121 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !143
  %122 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %121, i32 0, i32 1, !dbg !144
  %123 = load i8*, i8** %122, align 8, !dbg !145
  %124 = sext i32 %120 to i64, !dbg !145
  %125 = getelementptr inbounds i8, i8* %123, i64 %124, !dbg !145
  store i8* %125, i8** %122, align 8, !dbg !145
  %126 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !146
  %127 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %126, i32 0, i32 1, !dbg !147
  %128 = load i8*, i8** %127, align 8, !dbg !148
  %129 = getelementptr inbounds i8, i8* %128, i32 1, !dbg !148
  store i8* %129, i8** %127, align 8, !dbg !148
  store i8 0, i8* %128, align 1, !dbg !149
  %130 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %7, align 8, !dbg !150
  %131 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %130, i32 0, i32 4, !dbg !151
  %132 = load i32, i32* %131, align 4, !dbg !152
  %133 = add nsw i32 %132, 1, !dbg !152
  store i32 %133, i32* %131, align 4, !dbg !152
  %134 = load i8*, i8** %8, align 8, !dbg !153
  ret i8* %134, !dbg !154
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !155 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %2, metadata !158, metadata !DIExpression()), !dbg !159
  call void @llvm.dbg.declare(metadata [100 x i8]* %3, metadata !160, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata i32* %4, metadata !165, metadata !DIExpression()), !dbg !166
  %5 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 0, !dbg !167
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** %5, align 8, !dbg !168
  %6 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !169
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !170
  %7 = bitcast i32* %4 to i8*, !dbg !171
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0)), !dbg !172
  %8 = load i32, i32* %4, align 4, !dbg !173
  %9 = icmp sge i32 %8, 0, !dbg !174
  %10 = zext i1 %9 to i32, !dbg !174
  %11 = sext i32 %10 to i64, !dbg !173
  call void @klee_assume(i64 noundef %11), !dbg !175
  %12 = load i32, i32* %4, align 4, !dbg !176
  %13 = icmp slt i32 %12, 100, !dbg !177
  %14 = zext i1 %13 to i32, !dbg !177
  %15 = sext i32 %14 to i64, !dbg !176
  call void @klee_assume(i64 noundef %15), !dbg !178
  %16 = getelementptr inbounds [100 x i8], [100 x i8]* %3, i64 0, i64 0, !dbg !179
  %17 = load i32, i32* %4, align 4, !dbg !180
  %18 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %2, i8* noundef %16, i32 noundef %17), !dbg !181
  ret i32 0, !dbg !182
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !183 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !192, metadata !DIExpression()), !dbg !193
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !194, metadata !DIExpression()), !dbg !195
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !196, metadata !DIExpression()), !dbg !197
  call void @llvm.dbg.declare(metadata i8** %7, metadata !198, metadata !DIExpression()), !dbg !199
  %9 = load i8*, i8** %4, align 8, !dbg !200
  store i8* %9, i8** %7, align 8, !dbg !199
  call void @llvm.dbg.declare(metadata i8** %8, metadata !201, metadata !DIExpression()), !dbg !202
  %10 = load i8*, i8** %5, align 8, !dbg !203
  store i8* %10, i8** %8, align 8, !dbg !202
  br label %11, !dbg !204

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !205
  %13 = add i64 %12, -1, !dbg !205
  store i64 %13, i64* %6, align 8, !dbg !205
  %14 = icmp ugt i64 %12, 0, !dbg !206
  br i1 %14, label %15, label %21, !dbg !204

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !207
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !207
  store i8* %17, i8** %8, align 8, !dbg !207
  %18 = load i8, i8* %16, align 1, !dbg !208
  %19 = load i8*, i8** %7, align 8, !dbg !209
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !209
  store i8* %20, i8** %7, align 8, !dbg !209
  store i8 %18, i8* %19, align 1, !dbg !210
  br label %11, !dbg !204, !llvm.loop !211

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !213
  ret i8* %22, !dbg !214
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13, !13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/168_dict.c_172_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e9c93b9932bfbad196f50c748efd8588")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!6 = !{i32 7, !"Dwarf Version", i32 5}
!7 = !{i32 2, !"Debug Info Version", i32 3}
!8 = !{i32 1, !"wchar_size", i32 4}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 1}
!12 = !{i32 7, !"frame-pointer", i32 2}
!13 = !{!"Ubuntu clang version 14.0.6"}
!14 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 27, type: !15, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !20, !17, !34}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !19)
!19 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 21, size: 64, elements: !23)
!23 = !{!24}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !22, file: !1, line: 22, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictStrings", file: !1, line: 11, baseType: !27)
!27 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictStrings", file: !1, line: 13, size: 256, elements: !28)
!28 = !{!29, !30, !32, !33, !35}
!29 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !27, file: !1, line: 14, baseType: !25, size: 64)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !27, file: !1, line: 15, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !27, file: !1, line: 16, baseType: !31, size: 64, offset: 128)
!33 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !27, file: !1, line: 17, baseType: !34, size: 32, offset: 192)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DIDerivedType(tag: DW_TAG_member, name: "nbStrings", scope: !27, file: !1, line: 18, baseType: !34, size: 32, offset: 224)
!36 = !{}
!37 = !DILocalVariable(name: "dict", arg: 1, scope: !14, file: !1, line: 27, type: !20)
!38 = !DILocation(line: 27, column: 36, scope: !14)
!39 = !DILocalVariable(name: "name", arg: 2, scope: !14, file: !1, line: 27, type: !17)
!40 = !DILocation(line: 27, column: 54, scope: !14)
!41 = !DILocalVariable(name: "namelen", arg: 3, scope: !14, file: !1, line: 27, type: !34)
!42 = !DILocation(line: 27, column: 64, scope: !14)
!43 = !DILocalVariable(name: "pool", scope: !14, file: !1, line: 28, type: !25)
!44 = !DILocation(line: 28, column: 21, scope: !14)
!45 = !DILocalVariable(name: "ret", scope: !14, file: !1, line: 29, type: !17)
!46 = !DILocation(line: 29, column: 17, scope: !14)
!47 = !DILocation(line: 32, column: 12, scope: !14)
!48 = !DILocation(line: 32, column: 18, scope: !14)
!49 = !DILocation(line: 32, column: 10, scope: !14)
!50 = !DILocation(line: 33, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !14, file: !1, line: 33, column: 9)
!52 = !DILocation(line: 33, column: 14, scope: !51)
!53 = !DILocation(line: 33, column: 9, scope: !14)
!54 = !DILocation(line: 35, column: 16, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 33, column: 23)
!56 = !DILocation(line: 35, column: 14, scope: !55)
!57 = !DILocation(line: 36, column: 9, scope: !55)
!58 = !DILocation(line: 36, column: 15, scope: !55)
!59 = !DILocation(line: 36, column: 20, scope: !55)
!60 = !DILocation(line: 37, column: 29, scope: !55)
!61 = !DILocation(line: 37, column: 35, scope: !55)
!62 = !DILocation(line: 37, column: 22, scope: !55)
!63 = !DILocation(line: 37, column: 9, scope: !55)
!64 = !DILocation(line: 37, column: 15, scope: !55)
!65 = !DILocation(line: 37, column: 20, scope: !55)
!66 = !DILocation(line: 38, column: 21, scope: !55)
!67 = !DILocation(line: 38, column: 27, scope: !55)
!68 = !DILocation(line: 38, column: 34, scope: !55)
!69 = !DILocation(line: 38, column: 40, scope: !55)
!70 = !DILocation(line: 38, column: 32, scope: !55)
!71 = !DILocation(line: 38, column: 9, scope: !55)
!72 = !DILocation(line: 38, column: 15, scope: !55)
!73 = !DILocation(line: 38, column: 19, scope: !55)
!74 = !DILocation(line: 39, column: 9, scope: !55)
!75 = !DILocation(line: 39, column: 15, scope: !55)
!76 = !DILocation(line: 39, column: 25, scope: !55)
!77 = !DILocation(line: 40, column: 22, scope: !55)
!78 = !DILocation(line: 40, column: 28, scope: !55)
!79 = !DILocation(line: 40, column: 9, scope: !55)
!80 = !DILocation(line: 40, column: 15, scope: !55)
!81 = !DILocation(line: 40, column: 20, scope: !55)
!82 = !DILocation(line: 41, column: 25, scope: !55)
!83 = !DILocation(line: 41, column: 9, scope: !55)
!84 = !DILocation(line: 41, column: 15, scope: !55)
!85 = !DILocation(line: 41, column: 23, scope: !55)
!86 = !DILocation(line: 42, column: 5, scope: !55)
!87 = !DILocation(line: 45, column: 9, scope: !88)
!88 = distinct !DILexicalBlock(scope: !14, file: !1, line: 45, column: 9)
!89 = !DILocation(line: 45, column: 15, scope: !88)
!90 = !DILocation(line: 45, column: 22, scope: !88)
!91 = !DILocation(line: 45, column: 20, scope: !88)
!92 = !DILocation(line: 45, column: 30, scope: !88)
!93 = !DILocation(line: 45, column: 36, scope: !88)
!94 = !DILocation(line: 45, column: 42, scope: !88)
!95 = !DILocation(line: 45, column: 34, scope: !88)
!96 = !DILocation(line: 45, column: 9, scope: !14)
!97 = !DILocation(line: 47, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !88, file: !1, line: 45, column: 47)
!99 = !DILocation(line: 47, column: 14, scope: !98)
!100 = !DILocation(line: 48, column: 9, scope: !98)
!101 = !DILocation(line: 48, column: 15, scope: !98)
!102 = !DILocation(line: 48, column: 20, scope: !98)
!103 = !DILocation(line: 49, column: 29, scope: !98)
!104 = !DILocation(line: 49, column: 35, scope: !98)
!105 = !DILocation(line: 49, column: 22, scope: !98)
!106 = !DILocation(line: 49, column: 9, scope: !98)
!107 = !DILocation(line: 49, column: 15, scope: !98)
!108 = !DILocation(line: 49, column: 20, scope: !98)
!109 = !DILocation(line: 50, column: 21, scope: !98)
!110 = !DILocation(line: 50, column: 27, scope: !98)
!111 = !DILocation(line: 50, column: 34, scope: !98)
!112 = !DILocation(line: 50, column: 40, scope: !98)
!113 = !DILocation(line: 50, column: 32, scope: !98)
!114 = !DILocation(line: 50, column: 9, scope: !98)
!115 = !DILocation(line: 50, column: 15, scope: !98)
!116 = !DILocation(line: 50, column: 19, scope: !98)
!117 = !DILocation(line: 51, column: 9, scope: !98)
!118 = !DILocation(line: 51, column: 15, scope: !98)
!119 = !DILocation(line: 51, column: 25, scope: !98)
!120 = !DILocation(line: 52, column: 22, scope: !98)
!121 = !DILocation(line: 52, column: 28, scope: !98)
!122 = !DILocation(line: 52, column: 9, scope: !98)
!123 = !DILocation(line: 52, column: 15, scope: !98)
!124 = !DILocation(line: 52, column: 20, scope: !98)
!125 = !DILocation(line: 53, column: 25, scope: !98)
!126 = !DILocation(line: 53, column: 9, scope: !98)
!127 = !DILocation(line: 53, column: 15, scope: !98)
!128 = !DILocation(line: 53, column: 23, scope: !98)
!129 = !DILocation(line: 54, column: 5, scope: !98)
!130 = !DILabel(scope: !14, name: "found_pool", file: !1, line: 56)
!131 = !DILocation(line: 56, column: 1, scope: !14)
!132 = !DILocation(line: 57, column: 11, scope: !14)
!133 = !DILocation(line: 57, column: 17, scope: !14)
!134 = !DILocation(line: 57, column: 9, scope: !14)
!135 = !DILocation(line: 61, column: 5, scope: !14)
!136 = !DILocation(line: 64, column: 5, scope: !14)
!137 = !DILocation(line: 66, column: 12, scope: !14)
!138 = !DILocation(line: 66, column: 18, scope: !14)
!139 = !DILocation(line: 66, column: 24, scope: !14)
!140 = !DILocation(line: 66, column: 30, scope: !14)
!141 = !DILocation(line: 66, column: 5, scope: !14)
!142 = !DILocation(line: 67, column: 19, scope: !14)
!143 = !DILocation(line: 67, column: 5, scope: !14)
!144 = !DILocation(line: 67, column: 11, scope: !14)
!145 = !DILocation(line: 67, column: 16, scope: !14)
!146 = !DILocation(line: 68, column: 7, scope: !14)
!147 = !DILocation(line: 68, column: 13, scope: !14)
!148 = !DILocation(line: 68, column: 17, scope: !14)
!149 = !DILocation(line: 68, column: 21, scope: !14)
!150 = !DILocation(line: 69, column: 5, scope: !14)
!151 = !DILocation(line: 69, column: 11, scope: !14)
!152 = !DILocation(line: 69, column: 20, scope: !14)
!153 = !DILocation(line: 70, column: 12, scope: !14)
!154 = !DILocation(line: 70, column: 5, scope: !14)
!155 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 73, type: !156, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !36)
!156 = !DISubroutineType(types: !157)
!157 = !{!34}
!158 = !DILocalVariable(name: "dict", scope: !155, file: !1, line: 74, type: !21)
!159 = !DILocation(line: 74, column: 13, scope: !155)
!160 = !DILocalVariable(name: "name", scope: !155, file: !1, line: 75, type: !161)
!161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 800, elements: !162)
!162 = !{!163}
!163 = !DISubrange(count: 100)
!164 = !DILocation(line: 75, column: 10, scope: !155)
!165 = !DILocalVariable(name: "namelen", scope: !155, file: !1, line: 76, type: !34)
!166 = !DILocation(line: 76, column: 9, scope: !155)
!167 = !DILocation(line: 79, column: 10, scope: !155)
!168 = !DILocation(line: 79, column: 18, scope: !155)
!169 = !DILocation(line: 82, column: 24, scope: !155)
!170 = !DILocation(line: 82, column: 5, scope: !155)
!171 = !DILocation(line: 83, column: 24, scope: !155)
!172 = !DILocation(line: 83, column: 5, scope: !155)
!173 = !DILocation(line: 86, column: 17, scope: !155)
!174 = !DILocation(line: 86, column: 25, scope: !155)
!175 = !DILocation(line: 86, column: 5, scope: !155)
!176 = !DILocation(line: 87, column: 17, scope: !155)
!177 = !DILocation(line: 87, column: 25, scope: !155)
!178 = !DILocation(line: 87, column: 5, scope: !155)
!179 = !DILocation(line: 90, column: 26, scope: !155)
!180 = !DILocation(line: 90, column: 32, scope: !155)
!181 = !DILocation(line: 90, column: 5, scope: !155)
!182 = !DILocation(line: 93, column: 5, scope: !155)
!183 = distinct !DISubprogram(name: "memcpy", scope: !184, file: !184, line: 12, type: !185, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !36)
!184 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!185 = !DISubroutineType(types: !186)
!186 = !{!3, !3, !187, !189}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !190, line: 46, baseType: !191)
!190 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!191 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!192 = !DILocalVariable(name: "destaddr", arg: 1, scope: !183, file: !184, line: 12, type: !3)
!193 = !DILocation(line: 12, column: 20, scope: !183)
!194 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !183, file: !184, line: 12, type: !187)
!195 = !DILocation(line: 12, column: 42, scope: !183)
!196 = !DILocalVariable(name: "len", arg: 3, scope: !183, file: !184, line: 12, type: !189)
!197 = !DILocation(line: 12, column: 58, scope: !183)
!198 = !DILocalVariable(name: "dest", scope: !183, file: !184, line: 13, type: !31)
!199 = !DILocation(line: 13, column: 9, scope: !183)
!200 = !DILocation(line: 13, column: 16, scope: !183)
!201 = !DILocalVariable(name: "src", scope: !183, file: !184, line: 14, type: !17)
!202 = !DILocation(line: 14, column: 15, scope: !183)
!203 = !DILocation(line: 14, column: 21, scope: !183)
!204 = !DILocation(line: 16, column: 3, scope: !183)
!205 = !DILocation(line: 16, column: 13, scope: !183)
!206 = !DILocation(line: 16, column: 16, scope: !183)
!207 = !DILocation(line: 17, column: 19, scope: !183)
!208 = !DILocation(line: 17, column: 15, scope: !183)
!209 = !DILocation(line: 17, column: 10, scope: !183)
!210 = !DILocation(line: 17, column: 13, scope: !183)
!211 = distinct !{!211, !204, !207, !212}
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 18, column: 10, scope: !183)
!214 = !DILocation(line: 18, column: 3, scope: !183)

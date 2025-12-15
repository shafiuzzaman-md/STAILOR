; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/066_dict.c_767_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/066_dict.c_767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { %struct._xmlDictEntry*, i32 }
%struct._xmlDictEntry = type { i32, %struct._xmlDictEntry*, i32, i8*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"keep_keys\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dict_size\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"existing_key_valid\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"iter_okey\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"iter_len\00", align 1
@.str.5 = private unnamed_addr constant [9 x i8] c"name_buf\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.7 = private unnamed_addr constant [41 x i8] c"(key < dict.size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.8 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/066_dict.c_767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.10 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.11 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.12 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlDictComputeKey(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !28 {
  %4 = alloca %struct._xmlDict*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct._xmlDict* %0, %struct._xmlDict** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %4, metadata !38, metadata !DIExpression()), !dbg !39
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !40, metadata !DIExpression()), !dbg !41
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !42, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i32* %7, metadata !44, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %7, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %8, metadata !46, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %8, align 4, !dbg !48
  br label %9, !dbg !49

9:                                                ; preds = %33, %3
  %10 = load i32, i32* %8, align 4, !dbg !50
  %11 = load i32, i32* %6, align 4, !dbg !52
  %12 = icmp slt i32 %10, %11, !dbg !53
  br i1 %12, label %13, label %21, !dbg !54

13:                                               ; preds = %9
  %14 = load i8*, i8** %5, align 8, !dbg !55
  %15 = load i32, i32* %8, align 4, !dbg !56
  %16 = sext i32 %15 to i64, !dbg !55
  %17 = getelementptr inbounds i8, i8* %14, i64 %16, !dbg !55
  %18 = load i8, i8* %17, align 1, !dbg !55
  %19 = sext i8 %18 to i32, !dbg !55
  %20 = icmp ne i32 %19, 0, !dbg !57
  br label %21

21:                                               ; preds = %13, %9
  %22 = phi i1 [ false, %9 ], [ %20, %13 ], !dbg !58
  br i1 %22, label %23, label %36, !dbg !59

23:                                               ; preds = %21
  %24 = load i32, i32* %7, align 4, !dbg !60
  %25 = mul i32 %24, 31, !dbg !62
  %26 = load i8*, i8** %5, align 8, !dbg !63
  %27 = load i32, i32* %8, align 4, !dbg !64
  %28 = sext i32 %27 to i64, !dbg !63
  %29 = getelementptr inbounds i8, i8* %26, i64 %28, !dbg !63
  %30 = load i8, i8* %29, align 1, !dbg !63
  %31 = sext i8 %30 to i32, !dbg !63
  %32 = add i32 %25, %31, !dbg !65
  store i32 %32, i32* %7, align 4, !dbg !66
  br label %33, !dbg !67

33:                                               ; preds = %23
  %34 = load i32, i32* %8, align 4, !dbg !68
  %35 = add nsw i32 %34, 1, !dbg !68
  store i32 %35, i32* %8, align 4, !dbg !68
  br label %9, !dbg !69, !llvm.loop !70

36:                                               ; preds = %21
  %37 = load i32, i32* %7, align 4, !dbg !73
  ret i32 %37, !dbg !74
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !75 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !79, metadata !DIExpression()), !dbg !80
  %3 = load i8*, i8** %2, align 8, !dbg !81
  call void @free(i8* noundef %3) #6, !dbg !82
  ret void, !dbg !83
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !84 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct._xmlDictEntry*, align 8
  %6 = alloca %struct._xmlDict, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !87, metadata !DIExpression()), !dbg !88
  call void @llvm.dbg.declare(metadata i32* %3, metadata !89, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %4, metadata !91, metadata !DIExpression()), !dbg !92
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry** %5, metadata !93, metadata !DIExpression()), !dbg !94
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %6, metadata !95, metadata !DIExpression()), !dbg !96
  %10 = bitcast i32* %2 to i8*, !dbg !97
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !98
  %11 = bitcast i32* %3 to i8*, !dbg !99
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !100
  %12 = bitcast i32* %4 to i8*, !dbg !101
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0)), !dbg !102
  %13 = load i32, i32* %3, align 4, !dbg !103
  %14 = icmp ugt i32 %13, 0, !dbg !104
  br i1 %14, label %15, label %18, !dbg !105

15:                                               ; preds = %0
  %16 = load i32, i32* %3, align 4, !dbg !106
  %17 = icmp ult i32 %16, 1024, !dbg !107
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ], !dbg !108
  %20 = zext i1 %19 to i32, !dbg !105
  %21 = sext i32 %20 to i64, !dbg !103
  call void @klee_assume(i64 noundef %21), !dbg !109
  %22 = load i32, i32* %2, align 4, !dbg !110
  %23 = icmp eq i32 %22, 0, !dbg !111
  br i1 %23, label %27, label %24, !dbg !112

24:                                               ; preds = %18
  %25 = load i32, i32* %2, align 4, !dbg !113
  %26 = icmp eq i32 %25, 1, !dbg !114
  br label %27, !dbg !112

27:                                               ; preds = %24, %18
  %28 = phi i1 [ true, %18 ], [ %26, %24 ]
  %29 = zext i1 %28 to i32, !dbg !112
  %30 = sext i32 %29 to i64, !dbg !110
  call void @klee_assume(i64 noundef %30), !dbg !115
  %31 = load i32, i32* %3, align 4, !dbg !116
  %32 = zext i32 %31 to i64, !dbg !116
  %33 = call noalias i8* @calloc(i64 noundef %32, i64 noundef 40) #6, !dbg !117
  %34 = bitcast i8* %33 to %struct._xmlDictEntry*, !dbg !118
  %35 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %6, i32 0, i32 0, !dbg !119
  store %struct._xmlDictEntry* %34, %struct._xmlDictEntry** %35, align 8, !dbg !120
  %36 = load i32, i32* %3, align 4, !dbg !121
  %37 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %6, i32 0, i32 1, !dbg !122
  store i32 %36, i32* %37, align 8, !dbg !123
  %38 = call noalias i8* @malloc(i64 noundef 40) #6, !dbg !124
  %39 = bitcast i8* %38 to %struct._xmlDictEntry*, !dbg !125
  store %struct._xmlDictEntry* %39, %struct._xmlDictEntry** %5, align 8, !dbg !126
  %40 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !127
  %41 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %40, i32 0, i32 2, !dbg !128
  %42 = bitcast i32* %41 to i8*, !dbg !129
  call void @klee_make_symbolic(i8* noundef %42, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)), !dbg !130
  %43 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !131
  %44 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %43, i32 0, i32 4, !dbg !132
  %45 = bitcast i32* %44 to i8*, !dbg !133
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0)), !dbg !134
  call void @llvm.dbg.declare(metadata i8** %7, metadata !135, metadata !DIExpression()), !dbg !136
  %46 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !137
  %47 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %46, i32 0, i32 4, !dbg !138
  %48 = load i32, i32* %47, align 8, !dbg !138
  %49 = add nsw i32 %48, 1, !dbg !139
  %50 = sext i32 %49 to i64, !dbg !137
  %51 = call noalias i8* @malloc(i64 noundef %50) #6, !dbg !140
  store i8* %51, i8** %7, align 8, !dbg !136
  %52 = load i8*, i8** %7, align 8, !dbg !141
  %53 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !142
  %54 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %53, i32 0, i32 4, !dbg !143
  %55 = load i32, i32* %54, align 8, !dbg !143
  %56 = add nsw i32 %55, 1, !dbg !144
  %57 = sext i32 %56 to i64, !dbg !142
  call void @klee_make_symbolic(i8* noundef %52, i64 noundef %57, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0)), !dbg !145
  %58 = load i8*, i8** %7, align 8, !dbg !146
  %59 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !147
  %60 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %59, i32 0, i32 4, !dbg !148
  %61 = load i32, i32* %60, align 8, !dbg !148
  %62 = sext i32 %61 to i64, !dbg !146
  %63 = getelementptr inbounds i8, i8* %58, i64 %62, !dbg !146
  store i8 0, i8* %63, align 1, !dbg !149
  %64 = load i8*, i8** %7, align 8, !dbg !150
  %65 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !151
  %66 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %65, i32 0, i32 3, !dbg !152
  store i8* %64, i8** %66, align 8, !dbg !153
  %67 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !154
  %68 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %67, i32 0, i32 4, !dbg !155
  %69 = load i32, i32* %68, align 8, !dbg !155
  %70 = icmp sge i32 %69, 0, !dbg !156
  br i1 %70, label %71, label %76, !dbg !157

71:                                               ; preds = %27
  %72 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !158
  %73 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %72, i32 0, i32 4, !dbg !159
  %74 = load i32, i32* %73, align 8, !dbg !159
  %75 = icmp slt i32 %74, 256, !dbg !160
  br label %76

76:                                               ; preds = %71, %27
  %77 = phi i1 [ false, %27 ], [ %75, %71 ], !dbg !108
  %78 = zext i1 %77 to i32, !dbg !157
  %79 = sext i32 %78 to i64, !dbg !154
  call void @klee_assume(i64 noundef %79), !dbg !161
  call void @llvm.dbg.declare(metadata i32* %8, metadata !162, metadata !DIExpression()), !dbg !163
  %80 = load i32, i32* %2, align 4, !dbg !164
  %81 = icmp ne i32 %80, 0, !dbg !164
  br i1 %81, label %82, label %86, !dbg !166

82:                                               ; preds = %76
  %83 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !167
  %84 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %83, i32 0, i32 2, !dbg !169
  %85 = load i32, i32* %84, align 8, !dbg !169
  store i32 %85, i32* %8, align 4, !dbg !170
  br label %94, !dbg !171

86:                                               ; preds = %76
  %87 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !172
  %88 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %87, i32 0, i32 3, !dbg !174
  %89 = load i8*, i8** %88, align 8, !dbg !174
  %90 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !175
  %91 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %90, i32 0, i32 4, !dbg !176
  %92 = load i32, i32* %91, align 8, !dbg !176
  %93 = call i32 @xmlDictComputeKey(%struct._xmlDict* noundef %6, i8* noundef %89, i32 noundef %92), !dbg !177
  store i32 %93, i32* %8, align 4, !dbg !178
  br label %94

94:                                               ; preds = %86, %82
  call void @llvm.dbg.declare(metadata i32* %9, metadata !179, metadata !DIExpression()), !dbg !180
  %95 = load i32, i32* %8, align 4, !dbg !181
  %96 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %6, i32 0, i32 1, !dbg !182
  %97 = load i32, i32* %96, align 8, !dbg !182
  %int_cast_to_i64 = zext i32 %97 to i64, !dbg !183
  call void @klee_div_zero_check(i64 %int_cast_to_i64), !dbg !183
  %98 = urem i32 %95, %97, !dbg !183, !klee.check.div !184
  store i32 %98, i32* %9, align 4, !dbg !180
  %99 = load i32, i32* %4, align 4, !dbg !185
  %100 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %6, i32 0, i32 0, !dbg !186
  %101 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %100, align 8, !dbg !186
  %102 = load i32, i32* %9, align 4, !dbg !187
  %103 = zext i32 %102 to i64, !dbg !188
  %104 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %101, i64 %103, !dbg !188
  %105 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %104, i32 0, i32 0, !dbg !189
  store i32 %99, i32* %105, align 8, !dbg !190
  %106 = load i32, i32* %9, align 4, !dbg !191
  %107 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %6, i32 0, i32 1, !dbg !191
  %108 = load i32, i32* %107, align 8, !dbg !191
  %109 = icmp ult i32 %106, %108, !dbg !191
  br i1 %109, label %110, label %112, !dbg !191

110:                                              ; preds = %94
  br i1 true, label %111, label %112, !dbg !191

111:                                              ; preds = %110
  br label %114, !dbg !191

112:                                              ; preds = %110, %94
  %113 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 89, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !191
  br label %114, !dbg !191

114:                                              ; preds = %112, %111
  %115 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.8, i64 0, i64 0), i32 noundef 92, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !192
  %116 = load i8*, i8** %7, align 8, !dbg !193
  call void @free(i8* noundef %116) #6, !dbg !194
  %117 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !195
  %118 = bitcast %struct._xmlDictEntry* %117 to i8*, !dbg !195
  call void @free(i8* noundef %118) #6, !dbg !196
  %119 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %6, i32 0, i32 0, !dbg !197
  %120 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %119, align 8, !dbg !197
  %121 = bitcast %struct._xmlDictEntry* %120 to i8*, !dbg !198
  call void @free(i8* noundef %121) #6, !dbg !199
  ret i32 0, !dbg !200
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare noalias i8* @calloc(i64 noundef, i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #5 !dbg !201 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !206, metadata !DIExpression()), !dbg !207
  %3 = load i64, i64* %2, align 8, !dbg !208
  %4 = icmp eq i64 %3, 0, !dbg !210
  br i1 %4, label %5, label %6, !dbg !211

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.10, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.11, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.12, i64 0, i64 0)) #7, !dbg !212
  unreachable, !dbg !212

6:                                                ; preds = %1
  ret void, !dbg !213
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { noreturn }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/066_dict.c_767_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "08ed08ca3842fff6ee97092b707edbd6")
!2 = !{!3, !17}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictEntry", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictEntry", file: !1, line: 11, size: 320, elements: !6)
!6 = !{!7, !9, !10, !11, !15}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !5, file: !1, line: 12, baseType: !8, size: 32)
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !5, file: !1, line: 13, baseType: !3, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "okey", scope: !5, file: !1, line: 14, baseType: !8, size: 32, offset: 128)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 15, baseType: !12, size: 64, offset: 192)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!14 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !5, file: !1, line: 16, baseType: !16, size: 32, offset: 256)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!18 = distinct !DICompileUnit(language: DW_LANG_C89, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlDictComputeKey", scope: !1, file: !1, line: 26, type: !29, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!29 = !DISubroutineType(types: !30)
!30 = !{!8, !31, !12, !16}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 19, baseType: !33)
!33 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 20, size: 128, elements: !34)
!34 = !{!35, !36}
!35 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !33, file: !1, line: 21, baseType: !3, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !33, file: !1, line: 22, baseType: !8, size: 32, offset: 64)
!37 = !{}
!38 = !DILocalVariable(name: "dict", arg: 1, scope: !28, file: !1, line: 26, type: !31)
!39 = !DILocation(line: 26, column: 41, scope: !28)
!40 = !DILocalVariable(name: "name", arg: 2, scope: !28, file: !1, line: 26, type: !12)
!41 = !DILocation(line: 26, column: 59, scope: !28)
!42 = !DILocalVariable(name: "len", arg: 3, scope: !28, file: !1, line: 26, type: !16)
!43 = !DILocation(line: 26, column: 69, scope: !28)
!44 = !DILocalVariable(name: "hash", scope: !28, file: !1, line: 28, type: !8)
!45 = !DILocation(line: 28, column: 18, scope: !28)
!46 = !DILocalVariable(name: "i", scope: !47, file: !1, line: 29, type: !16)
!47 = distinct !DILexicalBlock(scope: !28, file: !1, line: 29, column: 5)
!48 = !DILocation(line: 29, column: 14, scope: !47)
!49 = !DILocation(line: 29, column: 10, scope: !47)
!50 = !DILocation(line: 29, column: 21, scope: !51)
!51 = distinct !DILexicalBlock(scope: !47, file: !1, line: 29, column: 5)
!52 = !DILocation(line: 29, column: 25, scope: !51)
!53 = !DILocation(line: 29, column: 23, scope: !51)
!54 = !DILocation(line: 29, column: 29, scope: !51)
!55 = !DILocation(line: 29, column: 32, scope: !51)
!56 = !DILocation(line: 29, column: 37, scope: !51)
!57 = !DILocation(line: 29, column: 40, scope: !51)
!58 = !DILocation(line: 0, scope: !51)
!59 = !DILocation(line: 29, column: 5, scope: !47)
!60 = !DILocation(line: 30, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !51, file: !1, line: 29, column: 54)
!62 = !DILocation(line: 30, column: 21, scope: !61)
!63 = !DILocation(line: 30, column: 28, scope: !61)
!64 = !DILocation(line: 30, column: 33, scope: !61)
!65 = !DILocation(line: 30, column: 26, scope: !61)
!66 = !DILocation(line: 30, column: 14, scope: !61)
!67 = !DILocation(line: 31, column: 5, scope: !61)
!68 = !DILocation(line: 29, column: 50, scope: !51)
!69 = !DILocation(line: 29, column: 5, scope: !51)
!70 = distinct !{!70, !59, !71, !72}
!71 = !DILocation(line: 31, column: 5, scope: !47)
!72 = !{!"llvm.loop.mustprogress"}
!73 = !DILocation(line: 32, column: 12, scope: !28)
!74 = !DILocation(line: 32, column: 5, scope: !28)
!75 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 36, type: !76, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78}
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!79 = !DILocalVariable(name: "ptr", arg: 1, scope: !75, file: !1, line: 36, type: !78)
!80 = !DILocation(line: 36, column: 20, scope: !75)
!81 = !DILocation(line: 37, column: 10, scope: !75)
!82 = !DILocation(line: 37, column: 5, scope: !75)
!83 = !DILocation(line: 38, column: 1, scope: !75)
!84 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 41, type: !85, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !37)
!85 = !DISubroutineType(types: !86)
!86 = !{!16}
!87 = !DILocalVariable(name: "keep_keys", scope: !84, file: !1, line: 43, type: !16)
!88 = !DILocation(line: 43, column: 9, scope: !84)
!89 = !DILocalVariable(name: "dict_size", scope: !84, file: !1, line: 44, type: !8)
!90 = !DILocation(line: 44, column: 18, scope: !84)
!91 = !DILocalVariable(name: "existing_key_valid", scope: !84, file: !1, line: 45, type: !8)
!92 = !DILocation(line: 45, column: 18, scope: !84)
!93 = !DILocalVariable(name: "iter", scope: !84, file: !1, line: 46, type: !3)
!94 = !DILocation(line: 46, column: 19, scope: !84)
!95 = !DILocalVariable(name: "dict", scope: !84, file: !1, line: 47, type: !32)
!96 = !DILocation(line: 47, column: 13, scope: !84)
!97 = !DILocation(line: 50, column: 24, scope: !84)
!98 = !DILocation(line: 50, column: 5, scope: !84)
!99 = !DILocation(line: 51, column: 24, scope: !84)
!100 = !DILocation(line: 51, column: 5, scope: !84)
!101 = !DILocation(line: 52, column: 24, scope: !84)
!102 = !DILocation(line: 52, column: 5, scope: !84)
!103 = !DILocation(line: 55, column: 17, scope: !84)
!104 = !DILocation(line: 55, column: 27, scope: !84)
!105 = !DILocation(line: 55, column: 31, scope: !84)
!106 = !DILocation(line: 55, column: 34, scope: !84)
!107 = !DILocation(line: 55, column: 44, scope: !84)
!108 = !DILocation(line: 0, scope: !84)
!109 = !DILocation(line: 55, column: 5, scope: !84)
!110 = !DILocation(line: 56, column: 17, scope: !84)
!111 = !DILocation(line: 56, column: 27, scope: !84)
!112 = !DILocation(line: 56, column: 32, scope: !84)
!113 = !DILocation(line: 56, column: 35, scope: !84)
!114 = !DILocation(line: 56, column: 45, scope: !84)
!115 = !DILocation(line: 56, column: 5, scope: !84)
!116 = !DILocation(line: 59, column: 40, scope: !84)
!117 = !DILocation(line: 59, column: 33, scope: !84)
!118 = !DILocation(line: 59, column: 17, scope: !84)
!119 = !DILocation(line: 59, column: 10, scope: !84)
!120 = !DILocation(line: 59, column: 15, scope: !84)
!121 = !DILocation(line: 60, column: 17, scope: !84)
!122 = !DILocation(line: 60, column: 10, scope: !84)
!123 = !DILocation(line: 60, column: 15, scope: !84)
!124 = !DILocation(line: 63, column: 28, scope: !84)
!125 = !DILocation(line: 63, column: 12, scope: !84)
!126 = !DILocation(line: 63, column: 10, scope: !84)
!127 = !DILocation(line: 64, column: 25, scope: !84)
!128 = !DILocation(line: 64, column: 31, scope: !84)
!129 = !DILocation(line: 64, column: 24, scope: !84)
!130 = !DILocation(line: 64, column: 5, scope: !84)
!131 = !DILocation(line: 65, column: 25, scope: !84)
!132 = !DILocation(line: 65, column: 31, scope: !84)
!133 = !DILocation(line: 65, column: 24, scope: !84)
!134 = !DILocation(line: 65, column: 5, scope: !84)
!135 = !DILocalVariable(name: "name_buf", scope: !84, file: !1, line: 68, type: !17)
!136 = !DILocation(line: 68, column: 11, scope: !84)
!137 = !DILocation(line: 68, column: 37, scope: !84)
!138 = !DILocation(line: 68, column: 43, scope: !84)
!139 = !DILocation(line: 68, column: 47, scope: !84)
!140 = !DILocation(line: 68, column: 30, scope: !84)
!141 = !DILocation(line: 69, column: 24, scope: !84)
!142 = !DILocation(line: 69, column: 34, scope: !84)
!143 = !DILocation(line: 69, column: 40, scope: !84)
!144 = !DILocation(line: 69, column: 44, scope: !84)
!145 = !DILocation(line: 69, column: 5, scope: !84)
!146 = !DILocation(line: 70, column: 5, scope: !84)
!147 = !DILocation(line: 70, column: 14, scope: !84)
!148 = !DILocation(line: 70, column: 20, scope: !84)
!149 = !DILocation(line: 70, column: 25, scope: !84)
!150 = !DILocation(line: 71, column: 18, scope: !84)
!151 = !DILocation(line: 71, column: 5, scope: !84)
!152 = !DILocation(line: 71, column: 11, scope: !84)
!153 = !DILocation(line: 71, column: 16, scope: !84)
!154 = !DILocation(line: 74, column: 17, scope: !84)
!155 = !DILocation(line: 74, column: 23, scope: !84)
!156 = !DILocation(line: 74, column: 27, scope: !84)
!157 = !DILocation(line: 74, column: 32, scope: !84)
!158 = !DILocation(line: 74, column: 35, scope: !84)
!159 = !DILocation(line: 74, column: 41, scope: !84)
!160 = !DILocation(line: 74, column: 45, scope: !84)
!161 = !DILocation(line: 74, column: 5, scope: !84)
!162 = !DILocalVariable(name: "okey", scope: !84, file: !1, line: 77, type: !8)
!163 = !DILocation(line: 77, column: 18, scope: !84)
!164 = !DILocation(line: 78, column: 9, scope: !165)
!165 = distinct !DILexicalBlock(scope: !84, file: !1, line: 78, column: 9)
!166 = !DILocation(line: 78, column: 9, scope: !84)
!167 = !DILocation(line: 79, column: 16, scope: !168)
!168 = distinct !DILexicalBlock(scope: !165, file: !1, line: 78, column: 20)
!169 = !DILocation(line: 79, column: 22, scope: !168)
!170 = !DILocation(line: 79, column: 14, scope: !168)
!171 = !DILocation(line: 80, column: 5, scope: !168)
!172 = !DILocation(line: 81, column: 41, scope: !173)
!173 = distinct !DILexicalBlock(scope: !165, file: !1, line: 80, column: 12)
!174 = !DILocation(line: 81, column: 47, scope: !173)
!175 = !DILocation(line: 81, column: 53, scope: !173)
!176 = !DILocation(line: 81, column: 59, scope: !173)
!177 = !DILocation(line: 81, column: 16, scope: !173)
!178 = !DILocation(line: 81, column: 14, scope: !173)
!179 = !DILocalVariable(name: "key", scope: !84, file: !1, line: 83, type: !8)
!180 = !DILocation(line: 83, column: 18, scope: !84)
!181 = !DILocation(line: 83, column: 24, scope: !84)
!182 = !DILocation(line: 83, column: 36, scope: !84)
!183 = !DILocation(line: 83, column: 29, scope: !84)
!184 = !{!"True"}
!185 = !DILocation(line: 86, column: 28, scope: !84)
!186 = !DILocation(line: 86, column: 10, scope: !84)
!187 = !DILocation(line: 86, column: 15, scope: !84)
!188 = !DILocation(line: 86, column: 5, scope: !84)
!189 = !DILocation(line: 86, column: 20, scope: !84)
!190 = !DILocation(line: 86, column: 26, scope: !84)
!191 = !DILocation(line: 89, column: 5, scope: !84)
!192 = !DILocation(line: 92, column: 5, scope: !84)
!193 = !DILocation(line: 95, column: 10, scope: !84)
!194 = !DILocation(line: 95, column: 5, scope: !84)
!195 = !DILocation(line: 96, column: 10, scope: !84)
!196 = !DILocation(line: 96, column: 5, scope: !84)
!197 = !DILocation(line: 97, column: 15, scope: !84)
!198 = !DILocation(line: 97, column: 10, scope: !84)
!199 = !DILocation(line: 97, column: 5, scope: !84)
!200 = !DILocation(line: 99, column: 5, scope: !84)
!201 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !202, file: !202, line: 12, type: !203, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !37)
!202 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!203 = !DISubroutineType(types: !204)
!204 = !{null, !205}
!205 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!206 = !DILocalVariable(name: "z", arg: 1, scope: !201, file: !202, line: 12, type: !205)
!207 = !DILocation(line: 12, column: 36, scope: !201)
!208 = !DILocation(line: 13, column: 7, scope: !209)
!209 = distinct !DILexicalBlock(scope: !201, file: !202, line: 13, column: 7)
!210 = !DILocation(line: 13, column: 9, scope: !209)
!211 = !DILocation(line: 13, column: 7, scope: !201)
!212 = !DILocation(line: 14, column: 5, scope: !209)
!213 = !DILocation(line: 15, column: 1, scope: !201)

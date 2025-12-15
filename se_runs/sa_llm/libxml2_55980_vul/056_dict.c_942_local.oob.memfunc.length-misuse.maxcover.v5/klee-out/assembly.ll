; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/056_dict.c_942_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/056_dict.c_942_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { %struct._xmlDict*, i32, %struct._xmlDictEntry* }
%struct._xmlDictEntry = type { i32, %struct._xmlDictEntry*, i64, i32, i8* }

@.str = private unnamed_addr constant [5 x i8] c"skey\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"okey\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"entry_name\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"(len <= 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_55980_vul/056_dict.c_942_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.10 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.11 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict, align 8
  %3 = alloca %struct._xmlDict, align 8
  %4 = alloca %struct._xmlDictEntry, align 8
  %5 = alloca %struct._xmlDictEntry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %2, metadata !21, metadata !DIExpression()), !dbg !44
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %3, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry* %4, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry** %5, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %6, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %7, metadata !53, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i64* %8, metadata !55, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %9, metadata !57, metadata !DIExpression()), !dbg !58
  %10 = call noalias i8* @malloc(i64 noundef 400) #6, !dbg !59
  %11 = bitcast i8* %10 to %struct._xmlDictEntry*, !dbg !59
  store %struct._xmlDictEntry* %11, %struct._xmlDictEntry** %5, align 8, !dbg !60
  %12 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !61
  %13 = icmp ne %struct._xmlDictEntry* %12, null, !dbg !61
  br i1 %13, label %15, label %14, !dbg !63

14:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !64
  br label %134, !dbg !64

15:                                               ; preds = %0
  %16 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 0, !dbg !65
  store %struct._xmlDict* %3, %struct._xmlDict** %16, align 8, !dbg !66
  %17 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %3, i32 0, i32 1, !dbg !67
  store i32 10, i32* %17, align 8, !dbg !68
  %18 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !69
  %19 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %3, i32 0, i32 2, !dbg !70
  store %struct._xmlDictEntry* %18, %struct._xmlDictEntry** %19, align 8, !dbg !71
  %20 = bitcast i64* %8 to i8*, !dbg !72
  call void @klee_make_symbolic(i8* noundef %20, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !73
  %21 = load i64, i64* %8, align 8, !dbg !74
  %22 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %3, i32 0, i32 1, !dbg !75
  %23 = load i32, i32* %22, align 8, !dbg !75
  %24 = sext i32 %23 to i64, !dbg !76
  call void @klee_div_zero_check(i64 %24), !dbg !77
  %25 = urem i64 %21, %24, !dbg !77, !klee.check.div !78
  %26 = trunc i64 %25 to i32, !dbg !74
  store i32 %26, i32* %9, align 4, !dbg !79
  %27 = load i32, i32* %9, align 4, !dbg !80
  %28 = icmp ult i32 %27, 10, !dbg !81
  %29 = zext i1 %28 to i32, !dbg !81
  %30 = sext i32 %29 to i64, !dbg !80
  call void @klee_assume(i64 noundef %30), !dbg !82
  %31 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !83
  %32 = load i32, i32* %9, align 4, !dbg !84
  %33 = zext i32 %32 to i64, !dbg !83
  %34 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %31, i64 %33, !dbg !83
  %35 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %34, i32 0, i32 0, !dbg !85
  store i32 1, i32* %35, align 8, !dbg !86
  %36 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !87
  %37 = load i32, i32* %9, align 4, !dbg !88
  %38 = zext i32 %37 to i64, !dbg !87
  %39 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %36, i64 %38, !dbg !87
  %40 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %39, i32 0, i32 1, !dbg !89
  store %struct._xmlDictEntry* null, %struct._xmlDictEntry** %40, align 8, !dbg !90
  %41 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !91
  %42 = load i32, i32* %9, align 4, !dbg !92
  %43 = zext i32 %42 to i64, !dbg !91
  %44 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %41, i64 %43, !dbg !91
  %45 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %44, i32 0, i32 2, !dbg !93
  %46 = bitcast i64* %45 to i8*, !dbg !94
  call void @klee_make_symbolic(i8* noundef %46, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !95
  %47 = bitcast i32* %7 to i8*, !dbg !96
  call void @klee_make_symbolic(i8* noundef %47, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !97
  %48 = load i32, i32* %7, align 4, !dbg !98
  %49 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !99
  %50 = load i32, i32* %9, align 4, !dbg !100
  %51 = zext i32 %50 to i64, !dbg !99
  %52 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %49, i64 %51, !dbg !99
  %53 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %52, i32 0, i32 3, !dbg !101
  store i32 %48, i32* %53, align 8, !dbg !102
  %54 = call noalias i8* @malloc(i64 noundef 256) #6, !dbg !103
  store i8* %54, i8** %6, align 8, !dbg !104
  %55 = load i8*, i8** %6, align 8, !dbg !105
  %56 = icmp ne i8* %55, null, !dbg !105
  br i1 %56, label %60, label %57, !dbg !107

57:                                               ; preds = %15
  %58 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !108
  %59 = bitcast %struct._xmlDictEntry* %58 to i8*, !dbg !108
  call void @free(i8* noundef %59) #6, !dbg !110
  store i32 0, i32* %1, align 4, !dbg !111
  br label %134, !dbg !111

60:                                               ; preds = %15
  %61 = load i8*, i8** %6, align 8, !dbg !112
  call void @klee_make_symbolic(i8* noundef %61, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !113
  %62 = call noalias i8* @malloc(i64 noundef 256) #6, !dbg !114
  %63 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !115
  %64 = load i32, i32* %9, align 4, !dbg !116
  %65 = zext i32 %64 to i64, !dbg !115
  %66 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %63, i64 %65, !dbg !115
  %67 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %66, i32 0, i32 4, !dbg !117
  store i8* %62, i8** %67, align 8, !dbg !118
  %68 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !119
  %69 = load i32, i32* %9, align 4, !dbg !121
  %70 = zext i32 %69 to i64, !dbg !119
  %71 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %68, i64 %70, !dbg !119
  %72 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %71, i32 0, i32 4, !dbg !122
  %73 = load i8*, i8** %72, align 8, !dbg !122
  %74 = icmp ne i8* %73, null, !dbg !119
  br i1 %74, label %79, label %75, !dbg !123

75:                                               ; preds = %60
  %76 = load i8*, i8** %6, align 8, !dbg !124
  call void @free(i8* noundef %76) #6, !dbg !126
  %77 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !127
  %78 = bitcast %struct._xmlDictEntry* %77 to i8*, !dbg !127
  call void @free(i8* noundef %78) #6, !dbg !128
  store i32 0, i32* %1, align 4, !dbg !129
  br label %134, !dbg !129

79:                                               ; preds = %60
  %80 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !130
  %81 = load i32, i32* %9, align 4, !dbg !131
  %82 = zext i32 %81 to i64, !dbg !130
  %83 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %80, i64 %82, !dbg !130
  %84 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %83, i32 0, i32 4, !dbg !132
  %85 = load i8*, i8** %84, align 8, !dbg !132
  call void @klee_make_symbolic(i8* noundef %85, i64 noundef 256, i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0)), !dbg !133
  %86 = load i32, i32* %7, align 4, !dbg !134
  %87 = icmp sge i32 %86, 0, !dbg !135
  %88 = zext i1 %87 to i32, !dbg !135
  %89 = sext i32 %88 to i64, !dbg !134
  call void @klee_assume(i64 noundef %89), !dbg !136
  %90 = load i32, i32* %7, align 4, !dbg !137
  %91 = icmp slt i32 %90, 256, !dbg !138
  %92 = zext i1 %91 to i32, !dbg !138
  %93 = sext i32 %92 to i64, !dbg !137
  call void @klee_assume(i64 noundef %93), !dbg !139
  %94 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !140
  %95 = load i32, i32* %9, align 4, !dbg !141
  %96 = zext i32 %95 to i64, !dbg !140
  %97 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %94, i64 %96, !dbg !140
  %98 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %97, i32 0, i32 2, !dbg !142
  %99 = load i64, i64* %98, align 8, !dbg !142
  %100 = load i64, i64* %8, align 8, !dbg !143
  %101 = icmp eq i64 %99, %100, !dbg !144
  %102 = zext i1 %101 to i32, !dbg !144
  %103 = sext i32 %102 to i64, !dbg !140
  call void @klee_assume(i64 noundef %103), !dbg !145
  %104 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !146
  %105 = load i32, i32* %9, align 4, !dbg !147
  %106 = zext i32 %105 to i64, !dbg !146
  %107 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %104, i64 %106, !dbg !146
  %108 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %107, i32 0, i32 3, !dbg !148
  %109 = load i32, i32* %108, align 8, !dbg !148
  %110 = load i32, i32* %7, align 4, !dbg !149
  %111 = icmp eq i32 %109, %110, !dbg !150
  %112 = zext i1 %111 to i32, !dbg !150
  %113 = sext i32 %112 to i64, !dbg !146
  call void @klee_assume(i64 noundef %113), !dbg !151
  %114 = load i8*, i8** %6, align 8, !dbg !152
  %115 = load i32, i32* %7, align 4, !dbg !153
  %116 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %2, i8* noundef %114, i32 noundef %115), !dbg !154
  %117 = load i32, i32* %7, align 4, !dbg !155
  %118 = icmp sle i32 %117, 256, !dbg !155
  br i1 %118, label %119, label %121, !dbg !155

119:                                              ; preds = %79
  br i1 true, label %120, label %121, !dbg !155

120:                                              ; preds = %119
  br label %123, !dbg !155

121:                                              ; preds = %119, %79
  %122 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i32 noundef 102, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !155
  br label %123, !dbg !155

123:                                              ; preds = %121, %120
  %124 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !156
  %125 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !157
  %126 = load i32, i32* %9, align 4, !dbg !158
  %127 = zext i32 %126 to i64, !dbg !157
  %128 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %125, i64 %127, !dbg !157
  %129 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %128, i32 0, i32 4, !dbg !159
  %130 = load i8*, i8** %129, align 8, !dbg !159
  call void @free(i8* noundef %130) #6, !dbg !160
  %131 = load i8*, i8** %6, align 8, !dbg !161
  call void @free(i8* noundef %131) #6, !dbg !162
  %132 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %5, align 8, !dbg !163
  %133 = bitcast %struct._xmlDictEntry* %132 to i8*, !dbg !163
  call void @free(i8* noundef %133) #6, !dbg !164
  store i32 0, i32* %1, align 4, !dbg !165
  br label %134, !dbg !165

134:                                              ; preds = %123, %75, %57, %14
  %135 = load i32, i32* %1, align 4, !dbg !166
  ret i32 %135, !dbg !166
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !167 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlDict*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct._xmlDictEntry*, align 8
  %11 = alloca i32, align 4
  store %struct._xmlDict* %0, %struct._xmlDict** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %5, metadata !172, metadata !DIExpression()), !dbg !173
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !174, metadata !DIExpression()), !dbg !175
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !176, metadata !DIExpression()), !dbg !177
  call void @llvm.dbg.declare(metadata i64* %8, metadata !178, metadata !DIExpression()), !dbg !179
  store i64 0, i64* %8, align 8, !dbg !179
  call void @llvm.dbg.declare(metadata i32* %9, metadata !180, metadata !DIExpression()), !dbg !181
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry** %10, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i32* %11, metadata !184, metadata !DIExpression()), !dbg !186
  store i32 0, i32* %11, align 4, !dbg !186
  br label %12, !dbg !187

12:                                               ; preds = %31, %3
  %13 = load i32, i32* %11, align 4, !dbg !188
  %14 = load i32, i32* %7, align 4, !dbg !190
  %15 = icmp slt i32 %13, %14, !dbg !191
  br i1 %15, label %16, label %19, !dbg !192

16:                                               ; preds = %12
  %17 = load i32, i32* %11, align 4, !dbg !193
  %18 = icmp slt i32 %17, 256, !dbg !194
  br label %19

19:                                               ; preds = %16, %12
  %20 = phi i1 [ false, %12 ], [ %18, %16 ], !dbg !195
  br i1 %20, label %21, label %34, !dbg !196

21:                                               ; preds = %19
  %22 = load i64, i64* %8, align 8, !dbg !197
  %23 = mul i64 %22, 31, !dbg !199
  %24 = load i8*, i8** %6, align 8, !dbg !200
  %25 = load i32, i32* %11, align 4, !dbg !201
  %26 = sext i32 %25 to i64, !dbg !200
  %27 = getelementptr inbounds i8, i8* %24, i64 %26, !dbg !200
  %28 = load i8, i8* %27, align 1, !dbg !200
  %29 = sext i8 %28 to i64, !dbg !200
  %30 = add i64 %23, %29, !dbg !202
  store i64 %30, i64* %8, align 8, !dbg !203
  br label %31, !dbg !204

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4, !dbg !205
  %33 = add nsw i32 %32, 1, !dbg !205
  store i32 %33, i32* %11, align 4, !dbg !205
  br label %12, !dbg !206, !llvm.loop !207

34:                                               ; preds = %19
  %35 = load i64, i64* %8, align 8, !dbg !210
  %36 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !211
  %37 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %36, i32 0, i32 0, !dbg !212
  %38 = load %struct._xmlDict*, %struct._xmlDict** %37, align 8, !dbg !212
  %39 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %38, i32 0, i32 1, !dbg !213
  %40 = load i32, i32* %39, align 8, !dbg !213
  %41 = sext i32 %40 to i64, !dbg !211
  call void @klee_div_zero_check(i64 %41), !dbg !214
  %42 = urem i64 %35, %41, !dbg !214, !klee.check.div !78
  %43 = trunc i64 %42 to i32, !dbg !210
  store i32 %43, i32* %9, align 4, !dbg !215
  %44 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !216
  %45 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %44, i32 0, i32 0, !dbg !218
  %46 = load %struct._xmlDict*, %struct._xmlDict** %45, align 8, !dbg !218
  %47 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %46, i32 0, i32 2, !dbg !219
  %48 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %47, align 8, !dbg !219
  %49 = load i32, i32* %9, align 4, !dbg !220
  %50 = zext i32 %49 to i64, !dbg !216
  %51 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %48, i64 %50, !dbg !216
  %52 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %51, i32 0, i32 0, !dbg !221
  %53 = load i32, i32* %52, align 8, !dbg !221
  %54 = icmp ne i32 %53, 0, !dbg !222
  br i1 %54, label %55, label %101, !dbg !223

55:                                               ; preds = %34
  %56 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !224
  %57 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %56, i32 0, i32 0, !dbg !227
  %58 = load %struct._xmlDict*, %struct._xmlDict** %57, align 8, !dbg !227
  %59 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %58, i32 0, i32 2, !dbg !228
  %60 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %59, align 8, !dbg !228
  %61 = load i32, i32* %9, align 4, !dbg !229
  %62 = zext i32 %61 to i64, !dbg !224
  %63 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %60, i64 %62, !dbg !224
  store %struct._xmlDictEntry* %63, %struct._xmlDictEntry** %10, align 8, !dbg !230
  br label %64, !dbg !231

64:                                               ; preds = %96, %55
  %65 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8, !dbg !232
  %66 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %65, i32 0, i32 1, !dbg !234
  %67 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %66, align 8, !dbg !234
  %68 = icmp ne %struct._xmlDictEntry* %67, null, !dbg !235
  br i1 %68, label %69, label %100, !dbg !236

69:                                               ; preds = %64
  %70 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8, !dbg !237
  %71 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %70, i32 0, i32 2, !dbg !240
  %72 = load i64, i64* %71, align 8, !dbg !240
  %73 = load i64, i64* %8, align 8, !dbg !241
  %74 = icmp eq i64 %72, %73, !dbg !242
  br i1 %74, label %75, label %95, !dbg !243

75:                                               ; preds = %69
  %76 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8, !dbg !244
  %77 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %76, i32 0, i32 3, !dbg !245
  %78 = load i32, i32* %77, align 8, !dbg !245
  %79 = load i32, i32* %7, align 4, !dbg !246
  %80 = icmp eq i32 %78, %79, !dbg !247
  br i1 %80, label %81, label %95, !dbg !248

81:                                               ; preds = %75
  %82 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8, !dbg !249
  %83 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %82, i32 0, i32 4, !dbg !252
  %84 = load i8*, i8** %83, align 8, !dbg !252
  %85 = load i8*, i8** %6, align 8, !dbg !253
  %86 = load i32, i32* %7, align 4, !dbg !254
  %87 = sext i32 %86 to i64, !dbg !254
  %88 = call i32 @memcmp(i8* noundef %84, i8* noundef %85, i64 noundef %87) #7, !dbg !255
  %89 = icmp ne i32 %88, 0, !dbg !255
  br i1 %89, label %94, label %90, !dbg !256

90:                                               ; preds = %81
  %91 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8, !dbg !257
  %92 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %91, i32 0, i32 4, !dbg !258
  %93 = load i8*, i8** %92, align 8, !dbg !258
  store i8* %93, i8** %4, align 8, !dbg !259
  br label %102, !dbg !259

94:                                               ; preds = %81
  br label %95, !dbg !260

95:                                               ; preds = %94, %75, %69
  br label %96, !dbg !261

96:                                               ; preds = %95
  %97 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %10, align 8, !dbg !262
  %98 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %97, i32 0, i32 1, !dbg !263
  %99 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %98, align 8, !dbg !263
  store %struct._xmlDictEntry* %99, %struct._xmlDictEntry** %10, align 8, !dbg !264
  br label %64, !dbg !265, !llvm.loop !266

100:                                              ; preds = %64
  br label %101, !dbg !268

101:                                              ; preds = %100, %34
  store i8* null, i8** %4, align 8, !dbg !269
  br label %102, !dbg !269

102:                                              ; preds = %101, %90
  %103 = load i8*, i8** %4, align 8, !dbg !270
  ret i8* %103, !dbg !270
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !271 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !279, metadata !DIExpression()), !dbg !280
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !281, metadata !DIExpression()), !dbg !282
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !283, metadata !DIExpression()), !dbg !284
  %10 = load i64, i64* %7, align 8, !dbg !285
  %11 = icmp ne i64 %10, 0, !dbg !287
  br i1 %11, label %12, label %39, !dbg !288

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !289, metadata !DIExpression()), !dbg !294
  %13 = load i8*, i8** %5, align 8, !dbg !295
  store i8* %13, i8** %8, align 8, !dbg !294
  call void @llvm.dbg.declare(metadata i8** %9, metadata !296, metadata !DIExpression()), !dbg !297
  %14 = load i8*, i8** %6, align 8, !dbg !298
  store i8* %14, i8** %9, align 8, !dbg !297
  br label %15, !dbg !299

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !300
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !300
  store i8* %17, i8** %8, align 8, !dbg !300
  %18 = load i8, i8* %16, align 1, !dbg !303
  %19 = zext i8 %18 to i32, !dbg !303
  %20 = load i8*, i8** %9, align 8, !dbg !304
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !304
  store i8* %21, i8** %9, align 8, !dbg !304
  %22 = load i8, i8* %20, align 1, !dbg !305
  %23 = zext i8 %22 to i32, !dbg !305
  %24 = icmp ne i32 %19, %23, !dbg !306
  br i1 %24, label %25, label %35, !dbg !307

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !308
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !308
  store i8* %27, i8** %8, align 8, !dbg !308
  %28 = load i8, i8* %27, align 1, !dbg !310
  %29 = zext i8 %28 to i32, !dbg !310
  %30 = load i8*, i8** %9, align 8, !dbg !311
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !311
  store i8* %31, i8** %9, align 8, !dbg !311
  %32 = load i8, i8* %31, align 1, !dbg !312
  %33 = zext i8 %32 to i32, !dbg !312
  %34 = sub nsw i32 %29, %33, !dbg !313
  store i32 %34, i32* %4, align 4, !dbg !314
  br label %40, !dbg !314

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !315
  %37 = add i64 %36, -1, !dbg !315
  store i64 %37, i64* %7, align 8, !dbg !315
  %38 = icmp ne i64 %37, 0, !dbg !316
  br i1 %38, label %15, label %39, !dbg !317, !llvm.loop !318

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !320
  br label %40, !dbg !320

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !321
  ret i32 %41, !dbg !321
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #5 !dbg !322 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !327, metadata !DIExpression()), !dbg !328
  %3 = load i64, i64* %2, align 8, !dbg !329
  %4 = icmp eq i64 %3, 0, !dbg !331
  br i1 %4, label %5, label %6, !dbg !332

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.11, i64 0, i64 0)) #8, !dbg !333
  unreachable, !dbg !333

6:                                                ; preds = %1
  ret void, !dbg !334
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
attributes #7 = { nounwind readonly willreturn }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/056_dict.c_942_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "0b75f8997a81f817b04bdb93f27f8abe")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = distinct !DICompileUnit(language: DW_LANG_C99, file: !5, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!5 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!6 = distinct !DICompileUnit(language: DW_LANG_C89, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee/build/runtime/Intrinsic", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!8 = !{i32 7, !"Dwarf Version", i32 5}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{i32 7, !"PIC Level", i32 2}
!12 = !{i32 7, !"PIE Level", i32 2}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{i32 7, !"frame-pointer", i32 2}
!15 = !{!"Ubuntu clang version 14.0.6"}
!16 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 34, type: !17, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!17 = !DISubroutineType(types: !18)
!18 = !{!19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{}
!21 = !DILocalVariable(name: "dict", scope: !16, file: !1, line: 36, type: !22)
!22 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 21, baseType: !23)
!23 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 24, size: 192, elements: !24)
!24 = !{!25, !28, !29}
!25 = !DIDerivedType(tag: DW_TAG_member, name: "subdict", scope: !23, file: !1, line: 25, baseType: !26, size: 64)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !1, line: 22, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !23, file: !1, line: 26, baseType: !19, size: 32, offset: 64)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !23, file: !1, line: 27, baseType: !30, size: 64, offset: 128)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictEntry", file: !1, line: 10, baseType: !32)
!32 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictEntry", file: !1, line: 13, size: 320, elements: !33)
!33 = !{!34, !36, !38, !40, !41}
!34 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !32, file: !1, line: 14, baseType: !35, size: 32)
!35 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!36 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !32, file: !1, line: 15, baseType: !37, size: 64, offset: 64)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictEntryPtr", file: !1, line: 11, baseType: !30)
!38 = !DIDerivedType(tag: DW_TAG_member, name: "okey", scope: !32, file: !1, line: 16, baseType: !39, size: 64, offset: 128)
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !32, file: !1, line: 17, baseType: !19, size: 32, offset: 192)
!41 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !32, file: !1, line: 18, baseType: !42, size: 64, offset: 256)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!44 = !DILocation(line: 36, column: 13, scope: !16)
!45 = !DILocalVariable(name: "subdict", scope: !16, file: !1, line: 37, type: !22)
!46 = !DILocation(line: 37, column: 13, scope: !16)
!47 = !DILocalVariable(name: "entry", scope: !16, file: !1, line: 38, type: !31)
!48 = !DILocation(line: 38, column: 18, scope: !16)
!49 = !DILocalVariable(name: "dict_array", scope: !16, file: !1, line: 39, type: !30)
!50 = !DILocation(line: 39, column: 19, scope: !16)
!51 = !DILocalVariable(name: "name", scope: !16, file: !1, line: 40, type: !42)
!52 = !DILocation(line: 40, column: 11, scope: !16)
!53 = !DILocalVariable(name: "len", scope: !16, file: !1, line: 41, type: !19)
!54 = !DILocation(line: 41, column: 9, scope: !16)
!55 = !DILocalVariable(name: "skey", scope: !16, file: !1, line: 42, type: !39)
!56 = !DILocation(line: 42, column: 19, scope: !16)
!57 = !DILocalVariable(name: "key", scope: !16, file: !1, line: 43, type: !35)
!58 = !DILocation(line: 43, column: 18, scope: !16)
!59 = !DILocation(line: 46, column: 18, scope: !16)
!60 = !DILocation(line: 46, column: 16, scope: !16)
!61 = !DILocation(line: 47, column: 10, scope: !62)
!62 = distinct !DILexicalBlock(scope: !16, file: !1, line: 47, column: 9)
!63 = !DILocation(line: 47, column: 9, scope: !16)
!64 = !DILocation(line: 47, column: 22, scope: !62)
!65 = !DILocation(line: 50, column: 10, scope: !16)
!66 = !DILocation(line: 50, column: 18, scope: !16)
!67 = !DILocation(line: 51, column: 13, scope: !16)
!68 = !DILocation(line: 51, column: 18, scope: !16)
!69 = !DILocation(line: 52, column: 20, scope: !16)
!70 = !DILocation(line: 52, column: 13, scope: !16)
!71 = !DILocation(line: 52, column: 18, scope: !16)
!72 = !DILocation(line: 55, column: 24, scope: !16)
!73 = !DILocation(line: 55, column: 5, scope: !16)
!74 = !DILocation(line: 56, column: 11, scope: !16)
!75 = !DILocation(line: 56, column: 26, scope: !16)
!76 = !DILocation(line: 56, column: 18, scope: !16)
!77 = !DILocation(line: 56, column: 16, scope: !16)
!78 = !{!"True"}
!79 = !DILocation(line: 56, column: 9, scope: !16)
!80 = !DILocation(line: 59, column: 17, scope: !16)
!81 = !DILocation(line: 59, column: 21, scope: !16)
!82 = !DILocation(line: 59, column: 5, scope: !16)
!83 = !DILocation(line: 62, column: 5, scope: !16)
!84 = !DILocation(line: 62, column: 16, scope: !16)
!85 = !DILocation(line: 62, column: 21, scope: !16)
!86 = !DILocation(line: 62, column: 27, scope: !16)
!87 = !DILocation(line: 63, column: 5, scope: !16)
!88 = !DILocation(line: 63, column: 16, scope: !16)
!89 = !DILocation(line: 63, column: 21, scope: !16)
!90 = !DILocation(line: 63, column: 26, scope: !16)
!91 = !DILocation(line: 66, column: 25, scope: !16)
!92 = !DILocation(line: 66, column: 36, scope: !16)
!93 = !DILocation(line: 66, column: 41, scope: !16)
!94 = !DILocation(line: 66, column: 24, scope: !16)
!95 = !DILocation(line: 66, column: 5, scope: !16)
!96 = !DILocation(line: 69, column: 24, scope: !16)
!97 = !DILocation(line: 69, column: 5, scope: !16)
!98 = !DILocation(line: 70, column: 27, scope: !16)
!99 = !DILocation(line: 70, column: 5, scope: !16)
!100 = !DILocation(line: 70, column: 16, scope: !16)
!101 = !DILocation(line: 70, column: 21, scope: !16)
!102 = !DILocation(line: 70, column: 25, scope: !16)
!103 = !DILocation(line: 73, column: 12, scope: !16)
!104 = !DILocation(line: 73, column: 10, scope: !16)
!105 = !DILocation(line: 74, column: 10, scope: !106)
!106 = distinct !DILexicalBlock(scope: !16, file: !1, line: 74, column: 9)
!107 = !DILocation(line: 74, column: 9, scope: !16)
!108 = !DILocation(line: 75, column: 14, scope: !109)
!109 = distinct !DILexicalBlock(scope: !106, file: !1, line: 74, column: 16)
!110 = !DILocation(line: 75, column: 9, scope: !109)
!111 = !DILocation(line: 76, column: 9, scope: !109)
!112 = !DILocation(line: 78, column: 24, scope: !16)
!113 = !DILocation(line: 78, column: 5, scope: !16)
!114 = !DILocation(line: 81, column: 28, scope: !16)
!115 = !DILocation(line: 81, column: 5, scope: !16)
!116 = !DILocation(line: 81, column: 16, scope: !16)
!117 = !DILocation(line: 81, column: 21, scope: !16)
!118 = !DILocation(line: 81, column: 26, scope: !16)
!119 = !DILocation(line: 82, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !16, file: !1, line: 82, column: 9)
!121 = !DILocation(line: 82, column: 21, scope: !120)
!122 = !DILocation(line: 82, column: 26, scope: !120)
!123 = !DILocation(line: 82, column: 9, scope: !16)
!124 = !DILocation(line: 83, column: 14, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 82, column: 32)
!126 = !DILocation(line: 83, column: 9, scope: !125)
!127 = !DILocation(line: 84, column: 14, scope: !125)
!128 = !DILocation(line: 84, column: 9, scope: !125)
!129 = !DILocation(line: 85, column: 9, scope: !125)
!130 = !DILocation(line: 87, column: 24, scope: !16)
!131 = !DILocation(line: 87, column: 35, scope: !16)
!132 = !DILocation(line: 87, column: 40, scope: !16)
!133 = !DILocation(line: 87, column: 5, scope: !16)
!134 = !DILocation(line: 90, column: 17, scope: !16)
!135 = !DILocation(line: 90, column: 21, scope: !16)
!136 = !DILocation(line: 90, column: 5, scope: !16)
!137 = !DILocation(line: 91, column: 17, scope: !16)
!138 = !DILocation(line: 91, column: 21, scope: !16)
!139 = !DILocation(line: 91, column: 5, scope: !16)
!140 = !DILocation(line: 94, column: 17, scope: !16)
!141 = !DILocation(line: 94, column: 28, scope: !16)
!142 = !DILocation(line: 94, column: 33, scope: !16)
!143 = !DILocation(line: 94, column: 41, scope: !16)
!144 = !DILocation(line: 94, column: 38, scope: !16)
!145 = !DILocation(line: 94, column: 5, scope: !16)
!146 = !DILocation(line: 95, column: 17, scope: !16)
!147 = !DILocation(line: 95, column: 28, scope: !16)
!148 = !DILocation(line: 95, column: 33, scope: !16)
!149 = !DILocation(line: 95, column: 40, scope: !16)
!150 = !DILocation(line: 95, column: 37, scope: !16)
!151 = !DILocation(line: 95, column: 5, scope: !16)
!152 = !DILocation(line: 98, column: 26, scope: !16)
!153 = !DILocation(line: 98, column: 32, scope: !16)
!154 = !DILocation(line: 98, column: 5, scope: !16)
!155 = !DILocation(line: 102, column: 5, scope: !16)
!156 = !DILocation(line: 105, column: 5, scope: !16)
!157 = !DILocation(line: 108, column: 10, scope: !16)
!158 = !DILocation(line: 108, column: 21, scope: !16)
!159 = !DILocation(line: 108, column: 26, scope: !16)
!160 = !DILocation(line: 108, column: 5, scope: !16)
!161 = !DILocation(line: 109, column: 10, scope: !16)
!162 = !DILocation(line: 109, column: 5, scope: !16)
!163 = !DILocation(line: 110, column: 10, scope: !16)
!164 = !DILocation(line: 110, column: 5, scope: !16)
!165 = !DILocation(line: 112, column: 5, scope: !16)
!166 = !DILocation(line: 113, column: 1, scope: !16)
!167 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 116, type: !168, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !20)
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !26, !170, !19}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!172 = !DILocalVariable(name: "dict", arg: 1, scope: !167, file: !1, line: 116, type: !26)
!173 = !DILocation(line: 116, column: 38, scope: !167)
!174 = !DILocalVariable(name: "name", arg: 2, scope: !167, file: !1, line: 116, type: !170)
!175 = !DILocation(line: 116, column: 56, scope: !167)
!176 = !DILocalVariable(name: "l", arg: 3, scope: !167, file: !1, line: 116, type: !19)
!177 = !DILocation(line: 116, column: 66, scope: !167)
!178 = !DILocalVariable(name: "skey", scope: !167, file: !1, line: 117, type: !39)
!179 = !DILocation(line: 117, column: 19, scope: !167)
!180 = !DILocalVariable(name: "key", scope: !167, file: !1, line: 118, type: !35)
!181 = !DILocation(line: 118, column: 18, scope: !167)
!182 = !DILocalVariable(name: "tmp", scope: !167, file: !1, line: 119, type: !37)
!183 = !DILocation(line: 119, column: 21, scope: !167)
!184 = !DILocalVariable(name: "i", scope: !185, file: !1, line: 122, type: !19)
!185 = distinct !DILexicalBlock(scope: !167, file: !1, line: 122, column: 5)
!186 = !DILocation(line: 122, column: 14, scope: !185)
!187 = !DILocation(line: 122, column: 10, scope: !185)
!188 = !DILocation(line: 122, column: 21, scope: !189)
!189 = distinct !DILexicalBlock(scope: !185, file: !1, line: 122, column: 5)
!190 = !DILocation(line: 122, column: 25, scope: !189)
!191 = !DILocation(line: 122, column: 23, scope: !189)
!192 = !DILocation(line: 122, column: 27, scope: !189)
!193 = !DILocation(line: 122, column: 30, scope: !189)
!194 = !DILocation(line: 122, column: 32, scope: !189)
!195 = !DILocation(line: 0, scope: !189)
!196 = !DILocation(line: 122, column: 5, scope: !185)
!197 = !DILocation(line: 123, column: 16, scope: !198)
!198 = distinct !DILexicalBlock(scope: !189, file: !1, line: 122, column: 44)
!199 = !DILocation(line: 123, column: 21, scope: !198)
!200 = !DILocation(line: 123, column: 28, scope: !198)
!201 = !DILocation(line: 123, column: 33, scope: !198)
!202 = !DILocation(line: 123, column: 26, scope: !198)
!203 = !DILocation(line: 123, column: 14, scope: !198)
!204 = !DILocation(line: 124, column: 5, scope: !198)
!205 = !DILocation(line: 122, column: 40, scope: !189)
!206 = !DILocation(line: 122, column: 5, scope: !189)
!207 = distinct !{!207, !196, !208, !209}
!208 = !DILocation(line: 124, column: 5, scope: !185)
!209 = !{!"llvm.loop.mustprogress"}
!210 = !DILocation(line: 126, column: 11, scope: !167)
!211 = !DILocation(line: 126, column: 18, scope: !167)
!212 = !DILocation(line: 126, column: 24, scope: !167)
!213 = !DILocation(line: 126, column: 33, scope: !167)
!214 = !DILocation(line: 126, column: 16, scope: !167)
!215 = !DILocation(line: 126, column: 9, scope: !167)
!216 = !DILocation(line: 128, column: 9, scope: !217)
!217 = distinct !DILexicalBlock(scope: !167, file: !1, line: 128, column: 9)
!218 = !DILocation(line: 128, column: 15, scope: !217)
!219 = !DILocation(line: 128, column: 24, scope: !217)
!220 = !DILocation(line: 128, column: 29, scope: !217)
!221 = !DILocation(line: 128, column: 34, scope: !217)
!222 = !DILocation(line: 128, column: 40, scope: !217)
!223 = !DILocation(line: 128, column: 9, scope: !167)
!224 = !DILocation(line: 129, column: 22, scope: !225)
!225 = distinct !DILexicalBlock(scope: !226, file: !1, line: 129, column: 9)
!226 = distinct !DILexicalBlock(scope: !217, file: !1, line: 128, column: 46)
!227 = !DILocation(line: 129, column: 28, scope: !225)
!228 = !DILocation(line: 129, column: 37, scope: !225)
!229 = !DILocation(line: 129, column: 42, scope: !225)
!230 = !DILocation(line: 129, column: 18, scope: !225)
!231 = !DILocation(line: 129, column: 14, scope: !225)
!232 = !DILocation(line: 129, column: 49, scope: !233)
!233 = distinct !DILexicalBlock(scope: !225, file: !1, line: 129, column: 9)
!234 = !DILocation(line: 129, column: 54, scope: !233)
!235 = !DILocation(line: 129, column: 59, scope: !233)
!236 = !DILocation(line: 129, column: 9, scope: !225)
!237 = !DILocation(line: 131, column: 18, scope: !238)
!238 = distinct !DILexicalBlock(scope: !239, file: !1, line: 131, column: 17)
!239 = distinct !DILexicalBlock(scope: !233, file: !1, line: 129, column: 85)
!240 = !DILocation(line: 131, column: 23, scope: !238)
!241 = !DILocation(line: 131, column: 31, scope: !238)
!242 = !DILocation(line: 131, column: 28, scope: !238)
!243 = !DILocation(line: 131, column: 37, scope: !238)
!244 = !DILocation(line: 131, column: 41, scope: !238)
!245 = !DILocation(line: 131, column: 46, scope: !238)
!246 = !DILocation(line: 131, column: 53, scope: !238)
!247 = !DILocation(line: 131, column: 50, scope: !238)
!248 = !DILocation(line: 131, column: 17, scope: !239)
!249 = !DILocation(line: 133, column: 29, scope: !250)
!250 = distinct !DILexicalBlock(scope: !251, file: !1, line: 133, column: 21)
!251 = distinct !DILexicalBlock(scope: !238, file: !1, line: 131, column: 57)
!252 = !DILocation(line: 133, column: 34, scope: !250)
!253 = !DILocation(line: 133, column: 40, scope: !250)
!254 = !DILocation(line: 133, column: 46, scope: !250)
!255 = !DILocation(line: 133, column: 22, scope: !250)
!256 = !DILocation(line: 133, column: 21, scope: !251)
!257 = !DILocation(line: 134, column: 28, scope: !250)
!258 = !DILocation(line: 134, column: 33, scope: !250)
!259 = !DILocation(line: 134, column: 21, scope: !250)
!260 = !DILocation(line: 135, column: 13, scope: !251)
!261 = !DILocation(line: 142, column: 9, scope: !239)
!262 = !DILocation(line: 129, column: 74, scope: !233)
!263 = !DILocation(line: 129, column: 79, scope: !233)
!264 = !DILocation(line: 129, column: 72, scope: !233)
!265 = !DILocation(line: 129, column: 9, scope: !233)
!266 = distinct !{!266, !236, !267, !209}
!267 = !DILocation(line: 142, column: 9, scope: !225)
!268 = !DILocation(line: 143, column: 5, scope: !226)
!269 = !DILocation(line: 145, column: 5, scope: !167)
!270 = !DILocation(line: 146, column: 1, scope: !167)
!271 = distinct !DISubprogram(name: "memcmp", scope: !272, file: !272, line: 42, type: !273, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !20)
!272 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!273 = !DISubroutineType(types: !274)
!274 = !{!19, !275, !275, !277}
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !278, line: 46, baseType: !39)
!278 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!279 = !DILocalVariable(name: "s1", arg: 1, scope: !271, file: !272, line: 42, type: !275)
!280 = !DILocation(line: 42, column: 24, scope: !271)
!281 = !DILocalVariable(name: "s2", arg: 2, scope: !271, file: !272, line: 42, type: !275)
!282 = !DILocation(line: 42, column: 40, scope: !271)
!283 = !DILocalVariable(name: "n", arg: 3, scope: !271, file: !272, line: 42, type: !277)
!284 = !DILocation(line: 42, column: 51, scope: !271)
!285 = !DILocation(line: 43, column: 7, scope: !286)
!286 = distinct !DILexicalBlock(scope: !271, file: !272, line: 43, column: 7)
!287 = !DILocation(line: 43, column: 9, scope: !286)
!288 = !DILocation(line: 43, column: 7, scope: !271)
!289 = !DILocalVariable(name: "p1", scope: !290, file: !272, line: 44, type: !291)
!290 = distinct !DILexicalBlock(scope: !286, file: !272, line: 43, column: 15)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !293)
!293 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!294 = !DILocation(line: 44, column: 26, scope: !290)
!295 = !DILocation(line: 44, column: 31, scope: !290)
!296 = !DILocalVariable(name: "p2", scope: !290, file: !272, line: 44, type: !291)
!297 = !DILocation(line: 44, column: 36, scope: !290)
!298 = !DILocation(line: 44, column: 41, scope: !290)
!299 = !DILocation(line: 46, column: 5, scope: !290)
!300 = !DILocation(line: 47, column: 14, scope: !301)
!301 = distinct !DILexicalBlock(scope: !302, file: !272, line: 47, column: 11)
!302 = distinct !DILexicalBlock(scope: !290, file: !272, line: 46, column: 8)
!303 = !DILocation(line: 47, column: 11, scope: !301)
!304 = !DILocation(line: 47, column: 23, scope: !301)
!305 = !DILocation(line: 47, column: 20, scope: !301)
!306 = !DILocation(line: 47, column: 17, scope: !301)
!307 = !DILocation(line: 47, column: 11, scope: !302)
!308 = !DILocation(line: 48, column: 18, scope: !309)
!309 = distinct !DILexicalBlock(scope: !301, file: !272, line: 47, column: 27)
!310 = !DILocation(line: 48, column: 17, scope: !309)
!311 = !DILocation(line: 48, column: 26, scope: !309)
!312 = !DILocation(line: 48, column: 25, scope: !309)
!313 = !DILocation(line: 48, column: 23, scope: !309)
!314 = !DILocation(line: 48, column: 9, scope: !309)
!315 = !DILocation(line: 50, column: 14, scope: !290)
!316 = !DILocation(line: 50, column: 18, scope: !290)
!317 = !DILocation(line: 50, column: 5, scope: !302)
!318 = distinct !{!318, !299, !319, !209}
!319 = !DILocation(line: 50, column: 22, scope: !290)
!320 = !DILocation(line: 52, column: 3, scope: !271)
!321 = !DILocation(line: 53, column: 1, scope: !271)
!322 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !323, file: !323, line: 12, type: !324, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !20)
!323 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!324 = !DISubroutineType(types: !325)
!325 = !{null, !326}
!326 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!327 = !DILocalVariable(name: "z", arg: 1, scope: !322, file: !323, line: 12, type: !326)
!328 = !DILocation(line: 12, column: 36, scope: !322)
!329 = !DILocation(line: 13, column: 7, scope: !330)
!330 = distinct !DILexicalBlock(scope: !322, file: !323, line: 13, column: 7)
!331 = !DILocation(line: 13, column: 9, scope: !330)
!332 = !DILocation(line: 13, column: 7, scope: !322)
!333 = !DILocation(line: 14, column: 5, scope: !330)
!334 = !DILocation(line: 15, column: 1, scope: !322)

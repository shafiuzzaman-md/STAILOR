; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/048_dict.c_1037_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/048_dict.c_1037_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { %struct._xmlDictEntry*, i32 }
%struct._xmlDictEntry = type { i8*, i32, i64, %struct._xmlDictEntry*, i32 }

@.str = private unnamed_addr constant [2 x i8] c"l\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"(l <= 256 && l <= (entry.name ? l + 1 : 0)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [103 x i8] c"se_runs/sa_llm/libxml2_55980_vul/048_dict.c_1037_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"/home/shafi/tools/klee/runtime/Intrinsic/klee_div_zero_check.c\00", align 1
@.str.1.7 = private unnamed_addr constant [15 x i8] c"divide by zero\00", align 1
@.str.2.8 = private unnamed_addr constant [8 x i8] c"div.err\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlStrncmp(i8* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !16 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !24, metadata !DIExpression()), !dbg !25
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !28, metadata !DIExpression()), !dbg !29
  %8 = load i32, i32* %7, align 4, !dbg !30
  %9 = icmp sle i32 %8, 0, !dbg !32
  br i1 %9, label %10, label %11, !dbg !33

10:                                               ; preds = %3
  store i32 0, i32* %4, align 4, !dbg !34
  br label %17, !dbg !34

11:                                               ; preds = %3
  %12 = load i8*, i8** %5, align 8, !dbg !35
  %13 = load i8*, i8** %6, align 8, !dbg !36
  %14 = load i32, i32* %7, align 4, !dbg !37
  %15 = sext i32 %14 to i64, !dbg !37
  %16 = call i32 @memcmp(i8* noundef %12, i8* noundef %13, i64 noundef %15) #6, !dbg !38
  store i32 %16, i32* %4, align 4, !dbg !39
  br label %17, !dbg !39

17:                                               ; preds = %11, %10
  %18 = load i32, i32* %4, align 4, !dbg !40
  ret i32 %18, !dbg !40
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !41 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlDict*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct._xmlDictEntry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct._xmlDict* %0, %struct._xmlDict** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %5, metadata !61, metadata !DIExpression()), !dbg !62
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 %2, i32* %7, align 4
  call void @llvm.dbg.declare(metadata i32* %7, metadata !65, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i64* %8, metadata !67, metadata !DIExpression()), !dbg !68
  store i64 0, i64* %8, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry** %9, metadata !69, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %10, metadata !71, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %11, metadata !73, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %11, align 4, !dbg !75
  br label %12, !dbg !76

12:                                               ; preds = %36, %3
  %13 = load i32, i32* %11, align 4, !dbg !77
  %14 = load i32, i32* %7, align 4, !dbg !79
  %15 = icmp slt i32 %13, %14, !dbg !80
  br i1 %15, label %16, label %24, !dbg !81

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8, !dbg !82
  %18 = load i32, i32* %11, align 4, !dbg !83
  %19 = sext i32 %18 to i64, !dbg !82
  %20 = getelementptr inbounds i8, i8* %17, i64 %19, !dbg !82
  %21 = load i8, i8* %20, align 1, !dbg !82
  %22 = sext i8 %21 to i32, !dbg !82
  %23 = icmp ne i32 %22, 0, !dbg !81
  br label %24

24:                                               ; preds = %16, %12
  %25 = phi i1 [ false, %12 ], [ %23, %16 ], !dbg !84
  br i1 %25, label %26, label %39, !dbg !85

26:                                               ; preds = %24
  %27 = load i64, i64* %8, align 8, !dbg !86
  %28 = mul i64 %27, 31, !dbg !88
  %29 = load i8*, i8** %6, align 8, !dbg !89
  %30 = load i32, i32* %11, align 4, !dbg !90
  %31 = sext i32 %30 to i64, !dbg !89
  %32 = getelementptr inbounds i8, i8* %29, i64 %31, !dbg !89
  %33 = load i8, i8* %32, align 1, !dbg !89
  %34 = sext i8 %33 to i64, !dbg !89
  %35 = add i64 %28, %34, !dbg !91
  store i64 %35, i64* %8, align 8, !dbg !92
  br label %36, !dbg !93

36:                                               ; preds = %26
  %37 = load i32, i32* %11, align 4, !dbg !94
  %38 = add nsw i32 %37, 1, !dbg !94
  store i32 %38, i32* %11, align 4, !dbg !94
  br label %12, !dbg !95, !llvm.loop !96

39:                                               ; preds = %24
  %40 = load i64, i64* %8, align 8, !dbg !99
  %41 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !100
  %42 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %41, i32 0, i32 1, !dbg !101
  %43 = load i32, i32* %42, align 8, !dbg !101
  %44 = sext i32 %43 to i64, !dbg !100
  call void @klee_div_zero_check(i64 %44), !dbg !102
  %45 = urem i64 %40, %44, !dbg !102, !klee.check.div !103
  %46 = trunc i64 %45 to i32, !dbg !99
  store i32 %46, i32* %10, align 4, !dbg !104
  %47 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !105
  %48 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %47, i32 0, i32 0, !dbg !107
  %49 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %48, align 8, !dbg !107
  %50 = load i32, i32* %10, align 4, !dbg !108
  %51 = sext i32 %50 to i64, !dbg !105
  %52 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %49, i64 %51, !dbg !105
  %53 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %52, i32 0, i32 4, !dbg !109
  %54 = load i32, i32* %53, align 8, !dbg !109
  %55 = icmp eq i32 %54, 0, !dbg !110
  br i1 %55, label %56, label %57, !dbg !111

56:                                               ; preds = %39
  store %struct._xmlDictEntry* null, %struct._xmlDictEntry** %9, align 8, !dbg !112
  br label %101, !dbg !114

57:                                               ; preds = %39
  %58 = load %struct._xmlDict*, %struct._xmlDict** %5, align 8, !dbg !115
  %59 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %58, i32 0, i32 0, !dbg !118
  %60 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %59, align 8, !dbg !118
  %61 = load i32, i32* %10, align 4, !dbg !119
  %62 = sext i32 %61 to i64, !dbg !115
  %63 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %60, i64 %62, !dbg !115
  store %struct._xmlDictEntry* %63, %struct._xmlDictEntry** %9, align 8, !dbg !120
  br label %64, !dbg !121

64:                                               ; preds = %96, %57
  %65 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %9, align 8, !dbg !122
  %66 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %65, i32 0, i32 3, !dbg !124
  %67 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %66, align 8, !dbg !124
  %68 = icmp ne %struct._xmlDictEntry* %67, null, !dbg !125
  br i1 %68, label %69, label %100, !dbg !126

69:                                               ; preds = %64
  %70 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %9, align 8, !dbg !127
  %71 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %70, i32 0, i32 2, !dbg !130
  %72 = load i64, i64* %71, align 8, !dbg !130
  %73 = load i64, i64* %8, align 8, !dbg !131
  %74 = icmp eq i64 %72, %73, !dbg !132
  br i1 %74, label %75, label %95, !dbg !133

75:                                               ; preds = %69
  %76 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %9, align 8, !dbg !134
  %77 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %76, i32 0, i32 1, !dbg !135
  %78 = load i32, i32* %77, align 8, !dbg !135
  %79 = load i32, i32* %7, align 4, !dbg !136
  %80 = icmp eq i32 %78, %79, !dbg !137
  br i1 %80, label %81, label %95, !dbg !138

81:                                               ; preds = %75
  %82 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %9, align 8, !dbg !139
  %83 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %82, i32 0, i32 0, !dbg !142
  %84 = load i8*, i8** %83, align 8, !dbg !142
  %85 = load i8*, i8** %6, align 8, !dbg !143
  %86 = load i32, i32* %7, align 4, !dbg !144
  %87 = sext i32 %86 to i64, !dbg !144
  %88 = call i32 @memcmp(i8* noundef %84, i8* noundef %85, i64 noundef %87) #6, !dbg !145
  %89 = icmp ne i32 %88, 0, !dbg !145
  br i1 %89, label %94, label %90, !dbg !146

90:                                               ; preds = %81
  %91 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %9, align 8, !dbg !147
  %92 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %91, i32 0, i32 0, !dbg !148
  %93 = load i8*, i8** %92, align 8, !dbg !148
  store i8* %93, i8** %4, align 8, !dbg !149
  br label %102, !dbg !149

94:                                               ; preds = %81
  br label %95, !dbg !150

95:                                               ; preds = %94, %75, %69
  br label %96, !dbg !151

96:                                               ; preds = %95
  %97 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %9, align 8, !dbg !152
  %98 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %97, i32 0, i32 3, !dbg !153
  %99 = load %struct._xmlDictEntry*, %struct._xmlDictEntry** %98, align 8, !dbg !153
  store %struct._xmlDictEntry* %99, %struct._xmlDictEntry** %9, align 8, !dbg !154
  br label %64, !dbg !155, !llvm.loop !156

100:                                              ; preds = %64
  br label %101

101:                                              ; preds = %100, %56
  store i8* null, i8** %4, align 8, !dbg !158
  br label %102, !dbg !158

102:                                              ; preds = %101, %90
  %103 = load i8*, i8** %4, align 8, !dbg !159
  ret i8* %103, !dbg !159
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !160 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca [256 x i8], align 16
  %4 = alloca %struct._xmlDict, align 8
  %5 = alloca %struct._xmlDictEntry, align 8
  %6 = alloca %struct._xmlDictEntry, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !163, metadata !DIExpression()), !dbg !164
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !165, metadata !DIExpression()), !dbg !169
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %4, metadata !170, metadata !DIExpression()), !dbg !171
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry* %5, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata %struct._xmlDictEntry* %6, metadata !174, metadata !DIExpression()), !dbg !175
  %10 = bitcast i32* %2 to i8*, !dbg !176
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0)), !dbg !177
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !178
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !179
  %12 = load i32, i32* %2, align 4, !dbg !180
  %13 = icmp sge i32 %12, 0, !dbg !181
  br i1 %13, label %14, label %17, !dbg !182

14:                                               ; preds = %0
  %15 = load i32, i32* %2, align 4, !dbg !183
  %16 = icmp slt i32 %15, 256, !dbg !184
  br label %17

17:                                               ; preds = %14, %0
  %18 = phi i1 [ false, %0 ], [ %16, %14 ], !dbg !185
  %19 = zext i1 %18 to i32, !dbg !182
  %20 = sext i32 %19 to i64, !dbg !180
  call void @klee_assume(i64 noundef %20), !dbg !186
  %21 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 4, !dbg !187
  store i32 1, i32* %21, align 8, !dbg !188
  %22 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 2, !dbg !189
  store i64 0, i64* %22, align 8, !dbg !190
  %23 = load i32, i32* %2, align 4, !dbg !191
  %24 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 1, !dbg !192
  store i32 %23, i32* %24, align 8, !dbg !193
  %25 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 3, !dbg !194
  store %struct._xmlDictEntry* %6, %struct._xmlDictEntry** %25, align 8, !dbg !195
  %26 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %6, i32 0, i32 3, !dbg !196
  store %struct._xmlDictEntry* null, %struct._xmlDictEntry** %26, align 8, !dbg !197
  call void @llvm.dbg.declare(metadata i32* %7, metadata !198, metadata !DIExpression()), !dbg !200
  store i32 0, i32* %7, align 4, !dbg !200
  br label %27, !dbg !201

27:                                               ; preds = %51, %17
  %28 = load i32, i32* %7, align 4, !dbg !202
  %29 = load i32, i32* %2, align 4, !dbg !204
  %30 = icmp slt i32 %28, %29, !dbg !205
  br i1 %30, label %31, label %38, !dbg !206

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4, !dbg !207
  %33 = sext i32 %32 to i64, !dbg !208
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %33, !dbg !208
  %35 = load i8, i8* %34, align 1, !dbg !208
  %36 = sext i8 %35 to i32, !dbg !208
  %37 = icmp ne i32 %36, 0, !dbg !206
  br label %38

38:                                               ; preds = %31, %27
  %39 = phi i1 [ false, %27 ], [ %37, %31 ], !dbg !209
  br i1 %39, label %40, label %54, !dbg !210

40:                                               ; preds = %38
  %41 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 2, !dbg !211
  %42 = load i64, i64* %41, align 8, !dbg !211
  %43 = mul i64 %42, 31, !dbg !213
  %44 = load i32, i32* %7, align 4, !dbg !214
  %45 = sext i32 %44 to i64, !dbg !215
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %45, !dbg !215
  %47 = load i8, i8* %46, align 1, !dbg !215
  %48 = sext i8 %47 to i64, !dbg !215
  %49 = add i64 %43, %48, !dbg !216
  %50 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 2, !dbg !217
  store i64 %49, i64* %50, align 8, !dbg !218
  br label %51, !dbg !219

51:                                               ; preds = %40
  %52 = load i32, i32* %7, align 4, !dbg !220
  %53 = add nsw i32 %52, 1, !dbg !220
  store i32 %53, i32* %7, align 4, !dbg !220
  br label %27, !dbg !221, !llvm.loop !222

54:                                               ; preds = %38
  %55 = load i32, i32* %2, align 4, !dbg !224
  %56 = add nsw i32 %55, 1, !dbg !225
  %57 = sext i32 %56 to i64, !dbg !224
  %58 = call noalias i8* @malloc(i64 noundef %57) #7, !dbg !226
  %59 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !227
  store i8* %58, i8** %59, align 8, !dbg !228
  %60 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !229
  %61 = load i8*, i8** %60, align 8, !dbg !229
  %62 = icmp ne i8* %61, null, !dbg !231
  br i1 %62, label %63, label %87, !dbg !232

63:                                               ; preds = %54
  call void @llvm.dbg.declare(metadata i32* %8, metadata !233, metadata !DIExpression()), !dbg !236
  store i32 0, i32* %8, align 4, !dbg !236
  br label %64, !dbg !237

64:                                               ; preds = %78, %63
  %65 = load i32, i32* %8, align 4, !dbg !238
  %66 = load i32, i32* %2, align 4, !dbg !240
  %67 = icmp slt i32 %65, %66, !dbg !241
  br i1 %67, label %68, label %81, !dbg !242

68:                                               ; preds = %64
  %69 = load i32, i32* %8, align 4, !dbg !243
  %70 = sext i32 %69 to i64, !dbg !245
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 %70, !dbg !245
  %72 = load i8, i8* %71, align 1, !dbg !245
  %73 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !246
  %74 = load i8*, i8** %73, align 8, !dbg !246
  %75 = load i32, i32* %8, align 4, !dbg !247
  %76 = sext i32 %75 to i64, !dbg !248
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !248
  store i8 %72, i8* %77, align 1, !dbg !249
  br label %78, !dbg !250

78:                                               ; preds = %68
  %79 = load i32, i32* %8, align 4, !dbg !251
  %80 = add nsw i32 %79, 1, !dbg !251
  store i32 %80, i32* %8, align 4, !dbg !251
  br label %64, !dbg !252, !llvm.loop !253

81:                                               ; preds = %64
  %82 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !255
  %83 = load i8*, i8** %82, align 8, !dbg !255
  %84 = load i32, i32* %2, align 4, !dbg !256
  %85 = sext i32 %84 to i64, !dbg !257
  %86 = getelementptr inbounds i8, i8* %83, i64 %85, !dbg !257
  store i8 0, i8* %86, align 1, !dbg !258
  br label %87, !dbg !259

87:                                               ; preds = %81, %54
  %88 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %4, i32 0, i32 1, !dbg !260
  store i32 1, i32* %88, align 8, !dbg !261
  %89 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %4, i32 0, i32 0, !dbg !262
  store %struct._xmlDictEntry* %5, %struct._xmlDictEntry** %89, align 8, !dbg !263
  call void @llvm.dbg.declare(metadata i8** %9, metadata !264, metadata !DIExpression()), !dbg !265
  %90 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !266
  %91 = load i32, i32* %2, align 4, !dbg !267
  %92 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %4, i8* noundef %90, i32 noundef %91), !dbg !268
  store i8* %92, i8** %9, align 8, !dbg !265
  %93 = load i32, i32* %2, align 4, !dbg !269
  %94 = icmp sle i32 %93, 256, !dbg !269
  br i1 %94, label %95, label %109, !dbg !269

95:                                               ; preds = %87
  %96 = load i32, i32* %2, align 4, !dbg !269
  %97 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !269
  %98 = load i8*, i8** %97, align 8, !dbg !269
  %99 = icmp ne i8* %98, null, !dbg !269
  br i1 %99, label %100, label %103, !dbg !269

100:                                              ; preds = %95
  %101 = load i32, i32* %2, align 4, !dbg !269
  %102 = add nsw i32 %101, 1, !dbg !269
  br label %104, !dbg !269

103:                                              ; preds = %95
  br label %104, !dbg !269

104:                                              ; preds = %103, %100
  %105 = phi i32 [ %102, %100 ], [ 0, %103 ], !dbg !269
  %106 = icmp sle i32 %96, %105, !dbg !269
  br i1 %106, label %107, label %109, !dbg !269

107:                                              ; preds = %104
  br i1 true, label %108, label %109, !dbg !269

108:                                              ; preds = %107
  br label %111, !dbg !269

109:                                              ; preds = %107, %104, %87
  %110 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 109, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !269
  br label %111, !dbg !269

111:                                              ; preds = %109, %108
  %112 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([103 x i8], [103 x i8]* @.str.4, i64 0, i64 0), i32 noundef 112, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !270
  %113 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !271
  %114 = load i8*, i8** %113, align 8, !dbg !271
  %115 = icmp ne i8* %114, null, !dbg !273
  br i1 %115, label %116, label %119, !dbg !274

116:                                              ; preds = %111
  %117 = getelementptr inbounds %struct._xmlDictEntry, %struct._xmlDictEntry* %5, i32 0, i32 0, !dbg !275
  %118 = load i8*, i8** %117, align 8, !dbg !275
  call void @free(i8* noundef %118) #7, !dbg !276
  br label %119, !dbg !276

119:                                              ; preds = %116, %111
  ret i32 0, !dbg !277
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @memcmp(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !278 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !286, metadata !DIExpression()), !dbg !287
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !288, metadata !DIExpression()), !dbg !289
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !290, metadata !DIExpression()), !dbg !291
  %10 = load i64, i64* %7, align 8, !dbg !292
  %11 = icmp ne i64 %10, 0, !dbg !294
  br i1 %11, label %12, label %39, !dbg !295

12:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i8** %8, metadata !296, metadata !DIExpression()), !dbg !301
  %13 = load i8*, i8** %5, align 8, !dbg !302
  store i8* %13, i8** %8, align 8, !dbg !301
  call void @llvm.dbg.declare(metadata i8** %9, metadata !303, metadata !DIExpression()), !dbg !304
  %14 = load i8*, i8** %6, align 8, !dbg !305
  store i8* %14, i8** %9, align 8, !dbg !304
  br label %15, !dbg !306

15:                                               ; preds = %35, %12
  %16 = load i8*, i8** %8, align 8, !dbg !307
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !307
  store i8* %17, i8** %8, align 8, !dbg !307
  %18 = load i8, i8* %16, align 1, !dbg !310
  %19 = zext i8 %18 to i32, !dbg !310
  %20 = load i8*, i8** %9, align 8, !dbg !311
  %21 = getelementptr inbounds i8, i8* %20, i32 1, !dbg !311
  store i8* %21, i8** %9, align 8, !dbg !311
  %22 = load i8, i8* %20, align 1, !dbg !312
  %23 = zext i8 %22 to i32, !dbg !312
  %24 = icmp ne i32 %19, %23, !dbg !313
  br i1 %24, label %25, label %35, !dbg !314

25:                                               ; preds = %15
  %26 = load i8*, i8** %8, align 8, !dbg !315
  %27 = getelementptr inbounds i8, i8* %26, i32 -1, !dbg !315
  store i8* %27, i8** %8, align 8, !dbg !315
  %28 = load i8, i8* %27, align 1, !dbg !317
  %29 = zext i8 %28 to i32, !dbg !317
  %30 = load i8*, i8** %9, align 8, !dbg !318
  %31 = getelementptr inbounds i8, i8* %30, i32 -1, !dbg !318
  store i8* %31, i8** %9, align 8, !dbg !318
  %32 = load i8, i8* %31, align 1, !dbg !319
  %33 = zext i8 %32 to i32, !dbg !319
  %34 = sub nsw i32 %29, %33, !dbg !320
  store i32 %34, i32* %4, align 4, !dbg !321
  br label %40, !dbg !321

35:                                               ; preds = %15
  %36 = load i64, i64* %7, align 8, !dbg !322
  %37 = add i64 %36, -1, !dbg !322
  store i64 %37, i64* %7, align 8, !dbg !322
  %38 = icmp ne i64 %37, 0, !dbg !323
  br i1 %38, label %15, label %39, !dbg !324, !llvm.loop !325

39:                                               ; preds = %35, %3
  store i32 0, i32* %4, align 4, !dbg !327
  br label %40, !dbg !327

40:                                               ; preds = %39, %25
  %41 = load i32, i32* %4, align 4, !dbg !328
  ret i32 %41, !dbg !328
}

; Function Attrs: noinline nounwind uwtable
define dso_local void @klee_div_zero_check(i64 noundef %0) #5 !dbg !329 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !334, metadata !DIExpression()), !dbg !335
  %3 = load i64, i64* %2, align 8, !dbg !336
  %4 = icmp eq i64 %3, 0, !dbg !338
  br i1 %4, label %5, label %6, !dbg !339

5:                                                ; preds = %1
  call void @klee_report_error(i8* noundef getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0), i32 noundef 14, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1.7, i64 0, i64 0), i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2.8, i64 0, i64 0)) #8, !dbg !340
  unreachable, !dbg !340

6:                                                ; preds = %1
  ret void, !dbg !341
}

; Function Attrs: noreturn
declare void @klee_report_error(i8* noundef, i32 noundef, i8* noundef, i8* noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind readonly willreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

!llvm.dbg.cu = !{!0, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14}
!llvm.ident = !{!15, !15, !15}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/048_dict.c_1037_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "395494381c475fa2f0fdd94166a4caf8")
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
!16 = distinct !DISubprogram(name: "xmlStrncmp", scope: !1, file: !1, line: 27, type: !17, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!17 = !DISubroutineType(types: !18)
!18 = !{!19, !20, !20, !19}
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!22 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!23 = !{}
!24 = !DILocalVariable(name: "str1", arg: 1, scope: !16, file: !1, line: 27, type: !20)
!25 = !DILocation(line: 27, column: 28, scope: !16)
!26 = !DILocalVariable(name: "str2", arg: 2, scope: !16, file: !1, line: 27, type: !20)
!27 = !DILocation(line: 27, column: 46, scope: !16)
!28 = !DILocalVariable(name: "len", arg: 3, scope: !16, file: !1, line: 27, type: !19)
!29 = !DILocation(line: 27, column: 56, scope: !16)
!30 = !DILocation(line: 28, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !16, file: !1, line: 28, column: 9)
!32 = !DILocation(line: 28, column: 13, scope: !31)
!33 = !DILocation(line: 28, column: 9, scope: !16)
!34 = !DILocation(line: 28, column: 19, scope: !31)
!35 = !DILocation(line: 29, column: 19, scope: !16)
!36 = !DILocation(line: 29, column: 25, scope: !16)
!37 = !DILocation(line: 29, column: 31, scope: !16)
!38 = !DILocation(line: 29, column: 12, scope: !16)
!39 = !DILocation(line: 29, column: 5, scope: !16)
!40 = !DILocation(line: 30, column: 1, scope: !16)
!41 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 33, type: !42, scopeLine: 33, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!42 = !DISubroutineType(types: !43)
!43 = !{!44, !45, !20, !19}
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictPtr", file: !1, line: 11, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !48)
!48 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 21, size: 128, elements: !49)
!49 = !{!50, !60}
!50 = !DIDerivedType(tag: DW_TAG_member, name: "dict", scope: !48, file: !1, line: 22, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictEntry", file: !1, line: 13, size: 320, elements: !53)
!53 = !{!54, !55, !56, !58, !59}
!54 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !52, file: !1, line: 14, baseType: !44, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !52, file: !1, line: 15, baseType: !19, size: 32, offset: 64)
!56 = !DIDerivedType(tag: DW_TAG_member, name: "okey", scope: !52, file: !1, line: 16, baseType: !57, size: 64, offset: 128)
!57 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!58 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !52, file: !1, line: 17, baseType: !51, size: 64, offset: 192)
!59 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !52, file: !1, line: 18, baseType: !19, size: 32, offset: 256)
!60 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !48, file: !1, line: 23, baseType: !19, size: 32, offset: 64)
!61 = !DILocalVariable(name: "dict", arg: 1, scope: !41, file: !1, line: 33, type: !45)
!62 = !DILocation(line: 33, column: 32, scope: !41)
!63 = !DILocalVariable(name: "name", arg: 2, scope: !41, file: !1, line: 33, type: !20)
!64 = !DILocation(line: 33, column: 50, scope: !41)
!65 = !DILocalVariable(name: "l", arg: 3, scope: !41, file: !1, line: 33, type: !19)
!66 = !DILocation(line: 33, column: 60, scope: !41)
!67 = !DILocalVariable(name: "okey", scope: !41, file: !1, line: 34, type: !57)
!68 = !DILocation(line: 34, column: 19, scope: !41)
!69 = !DILocalVariable(name: "insert", scope: !41, file: !1, line: 35, type: !51)
!70 = !DILocation(line: 35, column: 27, scope: !41)
!71 = !DILocalVariable(name: "key", scope: !41, file: !1, line: 36, type: !19)
!72 = !DILocation(line: 36, column: 9, scope: !41)
!73 = !DILocalVariable(name: "i", scope: !74, file: !1, line: 39, type: !19)
!74 = distinct !DILexicalBlock(scope: !41, file: !1, line: 39, column: 5)
!75 = !DILocation(line: 39, column: 14, scope: !74)
!76 = !DILocation(line: 39, column: 10, scope: !74)
!77 = !DILocation(line: 39, column: 21, scope: !78)
!78 = distinct !DILexicalBlock(scope: !74, file: !1, line: 39, column: 5)
!79 = !DILocation(line: 39, column: 25, scope: !78)
!80 = !DILocation(line: 39, column: 23, scope: !78)
!81 = !DILocation(line: 39, column: 27, scope: !78)
!82 = !DILocation(line: 39, column: 30, scope: !78)
!83 = !DILocation(line: 39, column: 35, scope: !78)
!84 = !DILocation(line: 0, scope: !78)
!85 = !DILocation(line: 39, column: 5, scope: !74)
!86 = !DILocation(line: 40, column: 16, scope: !87)
!87 = distinct !DILexicalBlock(scope: !78, file: !1, line: 39, column: 44)
!88 = !DILocation(line: 40, column: 21, scope: !87)
!89 = !DILocation(line: 40, column: 28, scope: !87)
!90 = !DILocation(line: 40, column: 33, scope: !87)
!91 = !DILocation(line: 40, column: 26, scope: !87)
!92 = !DILocation(line: 40, column: 14, scope: !87)
!93 = !DILocation(line: 41, column: 5, scope: !87)
!94 = !DILocation(line: 39, column: 40, scope: !78)
!95 = !DILocation(line: 39, column: 5, scope: !78)
!96 = distinct !{!96, !85, !97, !98}
!97 = !DILocation(line: 41, column: 5, scope: !74)
!98 = !{!"llvm.loop.mustprogress"}
!99 = !DILocation(line: 42, column: 11, scope: !41)
!100 = !DILocation(line: 42, column: 18, scope: !41)
!101 = !DILocation(line: 42, column: 24, scope: !41)
!102 = !DILocation(line: 42, column: 16, scope: !41)
!103 = !{!"True"}
!104 = !DILocation(line: 42, column: 9, scope: !41)
!105 = !DILocation(line: 44, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !41, file: !1, line: 44, column: 9)
!107 = !DILocation(line: 44, column: 15, scope: !106)
!108 = !DILocation(line: 44, column: 20, scope: !106)
!109 = !DILocation(line: 44, column: 25, scope: !106)
!110 = !DILocation(line: 44, column: 31, scope: !106)
!111 = !DILocation(line: 44, column: 9, scope: !41)
!112 = !DILocation(line: 45, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !106, file: !1, line: 44, column: 37)
!114 = !DILocation(line: 46, column: 5, scope: !113)
!115 = !DILocation(line: 47, column: 25, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !1, line: 47, column: 9)
!117 = distinct !DILexicalBlock(scope: !106, file: !1, line: 46, column: 12)
!118 = !DILocation(line: 47, column: 31, scope: !116)
!119 = !DILocation(line: 47, column: 36, scope: !116)
!120 = !DILocation(line: 47, column: 21, scope: !116)
!121 = !DILocation(line: 47, column: 14, scope: !116)
!122 = !DILocation(line: 47, column: 43, scope: !123)
!123 = distinct !DILexicalBlock(scope: !116, file: !1, line: 47, column: 9)
!124 = !DILocation(line: 47, column: 51, scope: !123)
!125 = !DILocation(line: 47, column: 56, scope: !123)
!126 = !DILocation(line: 47, column: 9, scope: !116)
!127 = !DILocation(line: 50, column: 18, scope: !128)
!128 = distinct !DILexicalBlock(scope: !129, file: !1, line: 50, column: 17)
!129 = distinct !DILexicalBlock(scope: !123, file: !1, line: 48, column: 37)
!130 = !DILocation(line: 50, column: 26, scope: !128)
!131 = !DILocation(line: 50, column: 34, scope: !128)
!132 = !DILocation(line: 50, column: 31, scope: !128)
!133 = !DILocation(line: 50, column: 40, scope: !128)
!134 = !DILocation(line: 50, column: 44, scope: !128)
!135 = !DILocation(line: 50, column: 52, scope: !128)
!136 = !DILocation(line: 50, column: 59, scope: !128)
!137 = !DILocation(line: 50, column: 56, scope: !128)
!138 = !DILocation(line: 50, column: 17, scope: !129)
!139 = !DILocation(line: 51, column: 29, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 51, column: 21)
!141 = distinct !DILexicalBlock(scope: !128, file: !1, line: 50, column: 63)
!142 = !DILocation(line: 51, column: 37, scope: !140)
!143 = !DILocation(line: 51, column: 43, scope: !140)
!144 = !DILocation(line: 51, column: 49, scope: !140)
!145 = !DILocation(line: 51, column: 22, scope: !140)
!146 = !DILocation(line: 51, column: 21, scope: !141)
!147 = !DILocation(line: 52, column: 28, scope: !140)
!148 = !DILocation(line: 52, column: 36, scope: !140)
!149 = !DILocation(line: 52, column: 21, scope: !140)
!150 = !DILocation(line: 53, column: 13, scope: !141)
!151 = !DILocation(line: 59, column: 9, scope: !129)
!152 = !DILocation(line: 48, column: 23, scope: !123)
!153 = !DILocation(line: 48, column: 31, scope: !123)
!154 = !DILocation(line: 48, column: 21, scope: !123)
!155 = !DILocation(line: 47, column: 9, scope: !123)
!156 = distinct !{!156, !126, !157, !98}
!157 = !DILocation(line: 59, column: 9, scope: !116)
!158 = !DILocation(line: 61, column: 5, scope: !41)
!159 = !DILocation(line: 62, column: 1, scope: !41)
!160 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !161, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!161 = !DISubroutineType(types: !162)
!162 = !{!19}
!163 = !DILocalVariable(name: "l", scope: !160, file: !1, line: 66, type: !19)
!164 = !DILocation(line: 66, column: 9, scope: !160)
!165 = !DILocalVariable(name: "name", scope: !160, file: !1, line: 67, type: !166)
!166 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 2048, elements: !167)
!167 = !{!168}
!168 = !DISubrange(count: 256)
!169 = !DILocation(line: 67, column: 10, scope: !160)
!170 = !DILocalVariable(name: "dict", scope: !160, file: !1, line: 68, type: !47)
!171 = !DILocation(line: 68, column: 13, scope: !160)
!172 = !DILocalVariable(name: "entry", scope: !160, file: !1, line: 69, type: !52)
!173 = !DILocation(line: 69, column: 26, scope: !160)
!174 = !DILocalVariable(name: "next_entry", scope: !160, file: !1, line: 70, type: !52)
!175 = !DILocation(line: 70, column: 26, scope: !160)
!176 = !DILocation(line: 73, column: 24, scope: !160)
!177 = !DILocation(line: 73, column: 5, scope: !160)
!178 = !DILocation(line: 74, column: 24, scope: !160)
!179 = !DILocation(line: 74, column: 5, scope: !160)
!180 = !DILocation(line: 77, column: 17, scope: !160)
!181 = !DILocation(line: 77, column: 19, scope: !160)
!182 = !DILocation(line: 77, column: 24, scope: !160)
!183 = !DILocation(line: 77, column: 27, scope: !160)
!184 = !DILocation(line: 77, column: 29, scope: !160)
!185 = !DILocation(line: 0, scope: !160)
!186 = !DILocation(line: 77, column: 5, scope: !160)
!187 = !DILocation(line: 80, column: 11, scope: !160)
!188 = !DILocation(line: 80, column: 17, scope: !160)
!189 = !DILocation(line: 81, column: 11, scope: !160)
!190 = !DILocation(line: 81, column: 16, scope: !160)
!191 = !DILocation(line: 82, column: 17, scope: !160)
!192 = !DILocation(line: 82, column: 11, scope: !160)
!193 = !DILocation(line: 82, column: 15, scope: !160)
!194 = !DILocation(line: 83, column: 11, scope: !160)
!195 = !DILocation(line: 83, column: 16, scope: !160)
!196 = !DILocation(line: 84, column: 16, scope: !160)
!197 = !DILocation(line: 84, column: 21, scope: !160)
!198 = !DILocalVariable(name: "i", scope: !199, file: !1, line: 87, type: !19)
!199 = distinct !DILexicalBlock(scope: !160, file: !1, line: 87, column: 5)
!200 = !DILocation(line: 87, column: 14, scope: !199)
!201 = !DILocation(line: 87, column: 10, scope: !199)
!202 = !DILocation(line: 87, column: 21, scope: !203)
!203 = distinct !DILexicalBlock(scope: !199, file: !1, line: 87, column: 5)
!204 = !DILocation(line: 87, column: 25, scope: !203)
!205 = !DILocation(line: 87, column: 23, scope: !203)
!206 = !DILocation(line: 87, column: 27, scope: !203)
!207 = !DILocation(line: 87, column: 35, scope: !203)
!208 = !DILocation(line: 87, column: 30, scope: !203)
!209 = !DILocation(line: 0, scope: !203)
!210 = !DILocation(line: 87, column: 5, scope: !199)
!211 = !DILocation(line: 88, column: 28, scope: !212)
!212 = distinct !DILexicalBlock(scope: !203, file: !1, line: 87, column: 44)
!213 = !DILocation(line: 88, column: 33, scope: !212)
!214 = !DILocation(line: 88, column: 45, scope: !212)
!215 = !DILocation(line: 88, column: 40, scope: !212)
!216 = !DILocation(line: 88, column: 38, scope: !212)
!217 = !DILocation(line: 88, column: 15, scope: !212)
!218 = !DILocation(line: 88, column: 20, scope: !212)
!219 = !DILocation(line: 89, column: 5, scope: !212)
!220 = !DILocation(line: 87, column: 40, scope: !203)
!221 = !DILocation(line: 87, column: 5, scope: !203)
!222 = distinct !{!222, !210, !223, !98}
!223 = !DILocation(line: 89, column: 5, scope: !199)
!224 = !DILocation(line: 92, column: 25, scope: !160)
!225 = !DILocation(line: 92, column: 27, scope: !160)
!226 = !DILocation(line: 92, column: 18, scope: !160)
!227 = !DILocation(line: 92, column: 11, scope: !160)
!228 = !DILocation(line: 92, column: 16, scope: !160)
!229 = !DILocation(line: 93, column: 15, scope: !230)
!230 = distinct !DILexicalBlock(scope: !160, file: !1, line: 93, column: 9)
!231 = !DILocation(line: 93, column: 9, scope: !230)
!232 = !DILocation(line: 93, column: 9, scope: !160)
!233 = !DILocalVariable(name: "i", scope: !234, file: !1, line: 94, type: !19)
!234 = distinct !DILexicalBlock(scope: !235, file: !1, line: 94, column: 9)
!235 = distinct !DILexicalBlock(scope: !230, file: !1, line: 93, column: 21)
!236 = !DILocation(line: 94, column: 18, scope: !234)
!237 = !DILocation(line: 94, column: 14, scope: !234)
!238 = !DILocation(line: 94, column: 25, scope: !239)
!239 = distinct !DILexicalBlock(scope: !234, file: !1, line: 94, column: 9)
!240 = !DILocation(line: 94, column: 29, scope: !239)
!241 = !DILocation(line: 94, column: 27, scope: !239)
!242 = !DILocation(line: 94, column: 9, scope: !234)
!243 = !DILocation(line: 95, column: 34, scope: !244)
!244 = distinct !DILexicalBlock(scope: !239, file: !1, line: 94, column: 37)
!245 = !DILocation(line: 95, column: 29, scope: !244)
!246 = !DILocation(line: 95, column: 19, scope: !244)
!247 = !DILocation(line: 95, column: 24, scope: !244)
!248 = !DILocation(line: 95, column: 13, scope: !244)
!249 = !DILocation(line: 95, column: 27, scope: !244)
!250 = !DILocation(line: 96, column: 9, scope: !244)
!251 = !DILocation(line: 94, column: 33, scope: !239)
!252 = !DILocation(line: 94, column: 9, scope: !239)
!253 = distinct !{!253, !242, !254, !98}
!254 = !DILocation(line: 96, column: 9, scope: !234)
!255 = !DILocation(line: 97, column: 15, scope: !235)
!256 = !DILocation(line: 97, column: 20, scope: !235)
!257 = !DILocation(line: 97, column: 9, scope: !235)
!258 = !DILocation(line: 97, column: 23, scope: !235)
!259 = !DILocation(line: 98, column: 5, scope: !235)
!260 = !DILocation(line: 101, column: 10, scope: !160)
!261 = !DILocation(line: 101, column: 15, scope: !160)
!262 = !DILocation(line: 102, column: 10, scope: !160)
!263 = !DILocation(line: 102, column: 15, scope: !160)
!264 = !DILocalVariable(name: "result", scope: !160, file: !1, line: 105, type: !44)
!265 = !DILocation(line: 105, column: 11, scope: !160)
!266 = !DILocation(line: 105, column: 41, scope: !160)
!267 = !DILocation(line: 105, column: 47, scope: !160)
!268 = !DILocation(line: 105, column: 20, scope: !160)
!269 = !DILocation(line: 109, column: 5, scope: !160)
!270 = !DILocation(line: 112, column: 5, scope: !160)
!271 = !DILocation(line: 115, column: 15, scope: !272)
!272 = distinct !DILexicalBlock(scope: !160, file: !1, line: 115, column: 9)
!273 = !DILocation(line: 115, column: 9, scope: !272)
!274 = !DILocation(line: 115, column: 9, scope: !160)
!275 = !DILocation(line: 115, column: 32, scope: !272)
!276 = !DILocation(line: 115, column: 21, scope: !272)
!277 = !DILocation(line: 117, column: 5, scope: !160)
!278 = distinct !DISubprogram(name: "memcmp", scope: !279, file: !279, line: 42, type: !280, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !4, retainedNodes: !23)
!279 = !DIFile(filename: "runtime/Freestanding/memcmp.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6a01b8a9953e07eca8ec791434d4f8e8")
!280 = !DISubroutineType(types: !281)
!281 = !{!19, !282, !282, !284}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !285, line: 46, baseType: !57)
!285 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!286 = !DILocalVariable(name: "s1", arg: 1, scope: !278, file: !279, line: 42, type: !282)
!287 = !DILocation(line: 42, column: 24, scope: !278)
!288 = !DILocalVariable(name: "s2", arg: 2, scope: !278, file: !279, line: 42, type: !282)
!289 = !DILocation(line: 42, column: 40, scope: !278)
!290 = !DILocalVariable(name: "n", arg: 3, scope: !278, file: !279, line: 42, type: !284)
!291 = !DILocation(line: 42, column: 51, scope: !278)
!292 = !DILocation(line: 43, column: 7, scope: !293)
!293 = distinct !DILexicalBlock(scope: !278, file: !279, line: 43, column: 7)
!294 = !DILocation(line: 43, column: 9, scope: !293)
!295 = !DILocation(line: 43, column: 7, scope: !278)
!296 = !DILocalVariable(name: "p1", scope: !297, file: !279, line: 44, type: !298)
!297 = distinct !DILexicalBlock(scope: !293, file: !279, line: 43, column: 15)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !300)
!300 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!301 = !DILocation(line: 44, column: 26, scope: !297)
!302 = !DILocation(line: 44, column: 31, scope: !297)
!303 = !DILocalVariable(name: "p2", scope: !297, file: !279, line: 44, type: !298)
!304 = !DILocation(line: 44, column: 36, scope: !297)
!305 = !DILocation(line: 44, column: 41, scope: !297)
!306 = !DILocation(line: 46, column: 5, scope: !297)
!307 = !DILocation(line: 47, column: 14, scope: !308)
!308 = distinct !DILexicalBlock(scope: !309, file: !279, line: 47, column: 11)
!309 = distinct !DILexicalBlock(scope: !297, file: !279, line: 46, column: 8)
!310 = !DILocation(line: 47, column: 11, scope: !308)
!311 = !DILocation(line: 47, column: 23, scope: !308)
!312 = !DILocation(line: 47, column: 20, scope: !308)
!313 = !DILocation(line: 47, column: 17, scope: !308)
!314 = !DILocation(line: 47, column: 11, scope: !309)
!315 = !DILocation(line: 48, column: 18, scope: !316)
!316 = distinct !DILexicalBlock(scope: !308, file: !279, line: 47, column: 27)
!317 = !DILocation(line: 48, column: 17, scope: !316)
!318 = !DILocation(line: 48, column: 26, scope: !316)
!319 = !DILocation(line: 48, column: 25, scope: !316)
!320 = !DILocation(line: 48, column: 23, scope: !316)
!321 = !DILocation(line: 48, column: 9, scope: !316)
!322 = !DILocation(line: 50, column: 14, scope: !297)
!323 = !DILocation(line: 50, column: 18, scope: !297)
!324 = !DILocation(line: 50, column: 5, scope: !309)
!325 = distinct !{!325, !306, !326, !98}
!326 = !DILocation(line: 50, column: 22, scope: !297)
!327 = !DILocation(line: 52, column: 3, scope: !278)
!328 = !DILocation(line: 53, column: 1, scope: !278)
!329 = distinct !DISubprogram(name: "klee_div_zero_check", scope: !330, file: !330, line: 12, type: !331, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !23)
!330 = !DIFile(filename: "runtime/Intrinsic/klee_div_zero_check.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "ac97458b4bebcea5cefe50ebb216db13")
!331 = !DISubroutineType(types: !332)
!332 = !{null, !333}
!333 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!334 = !DILocalVariable(name: "z", arg: 1, scope: !329, file: !330, line: 12, type: !333)
!335 = !DILocation(line: 12, column: 36, scope: !329)
!336 = !DILocation(line: 13, column: 7, scope: !337)
!337 = distinct !DILexicalBlock(scope: !329, file: !330, line: 13, column: 7)
!338 = !DILocation(line: 13, column: 9, scope: !337)
!339 = !DILocation(line: 13, column: 7, scope: !329)
!340 = !DILocation(line: 14, column: 5, scope: !337)
!341 = !DILocation(line: 15, column: 1, scope: !329)

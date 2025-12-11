; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/166_dict.c_232_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/166_dict.c_232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlDict = type { %struct._xmlDictStrings* }
%struct._xmlDictStrings = type { %struct._xmlDictStrings*, i8*, i8*, [1 x i8] }

@.str = private unnamed_addr constant [10 x i8] c"pool_size\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"plen\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"namelen\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [46 x i8] c"(namelen <= available) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [102 x i8] c"se_runs/sa_llm/libxml2_62911_vul/166_dict.c_232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlDictLookup(%struct._xmlDict* noundef %0, i8* noundef %1, i32 noundef %2, i8* noundef %3, i32 noundef %4) #0 !dbg !27 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct._xmlDict*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct._xmlDictStrings*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct._xmlDict* %0, %struct._xmlDict** %7, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlDict** %7, metadata !39, metadata !DIExpression()), !dbg !40
  store i8* %1, i8** %8, align 8
  call void @llvm.dbg.declare(metadata i8** %8, metadata !41, metadata !DIExpression()), !dbg !42
  store i32 %2, i32* %9, align 4
  call void @llvm.dbg.declare(metadata i32* %9, metadata !43, metadata !DIExpression()), !dbg !44
  store i8* %3, i8** %10, align 8
  call void @llvm.dbg.declare(metadata i8** %10, metadata !45, metadata !DIExpression()), !dbg !46
  store i32 %4, i32* %11, align 4
  call void @llvm.dbg.declare(metadata i32* %11, metadata !47, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings** %12, metadata !49, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i8** %13, metadata !51, metadata !DIExpression()), !dbg !52
  %16 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !53
  %17 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %16, i32 0, i32 0, !dbg !54
  %18 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %17, align 8, !dbg !54
  store %struct._xmlDictStrings* %18, %struct._xmlDictStrings** %12, align 8, !dbg !55
  %19 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !56
  %20 = icmp eq %struct._xmlDictStrings* %19, null, !dbg !58
  br i1 %20, label %21, label %51, !dbg !59

21:                                               ; preds = %5
  call void @llvm.dbg.declare(metadata i64* %14, metadata !60, metadata !DIExpression()), !dbg !65
  store i64 4096, i64* %14, align 8, !dbg !65
  %22 = load i64, i64* %14, align 8, !dbg !66
  %23 = add i64 32, %22, !dbg !67
  %24 = sub i64 %23, 1, !dbg !68
  %25 = call noalias i8* @malloc(i64 noundef %24) #7, !dbg !69
  %26 = bitcast i8* %25 to %struct._xmlDictStrings*, !dbg !70
  store %struct._xmlDictStrings* %26, %struct._xmlDictStrings** %12, align 8, !dbg !71
  %27 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !72
  %28 = icmp eq %struct._xmlDictStrings* %27, null, !dbg !74
  br i1 %28, label %29, label %30, !dbg !75

29:                                               ; preds = %21
  store i8* null, i8** %6, align 8, !dbg !76
  br label %107, !dbg !76

30:                                               ; preds = %21
  %31 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !77
  %32 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %31, i32 0, i32 0, !dbg !78
  %33 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %32, align 8, !dbg !78
  %34 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !79
  %35 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %34, i32 0, i32 0, !dbg !80
  store %struct._xmlDictStrings* %33, %struct._xmlDictStrings** %35, align 8, !dbg !81
  %36 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !82
  %37 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %36, i32 0, i32 3, !dbg !83
  %38 = getelementptr inbounds [1 x i8], [1 x i8]* %37, i64 0, i64 0, !dbg !82
  %39 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !84
  %40 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %39, i32 0, i32 1, !dbg !85
  store i8* %38, i8** %40, align 8, !dbg !86
  %41 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !87
  %42 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %41, i32 0, i32 3, !dbg !88
  %43 = getelementptr inbounds [1 x i8], [1 x i8]* %42, i64 0, i64 0, !dbg !87
  %44 = load i64, i64* %14, align 8, !dbg !89
  %45 = getelementptr inbounds i8, i8* %43, i64 %44, !dbg !90
  %46 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !91
  %47 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %46, i32 0, i32 2, !dbg !92
  store i8* %45, i8** %47, align 8, !dbg !93
  %48 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !94
  %49 = load %struct._xmlDict*, %struct._xmlDict** %7, align 8, !dbg !95
  %50 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %49, i32 0, i32 0, !dbg !96
  store %struct._xmlDictStrings* %48, %struct._xmlDictStrings** %50, align 8, !dbg !97
  br label %51, !dbg !98

51:                                               ; preds = %30, %5
  call void @llvm.dbg.declare(metadata i64* %15, metadata !99, metadata !DIExpression()), !dbg !100
  %52 = load i32, i32* %9, align 4, !dbg !101
  %53 = load i32, i32* %11, align 4, !dbg !102
  %54 = add nsw i32 %52, %53, !dbg !103
  %55 = add nsw i32 %54, 2, !dbg !104
  %56 = sext i32 %55 to i64, !dbg !101
  store i64 %56, i64* %15, align 8, !dbg !100
  %57 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !105
  %58 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %57, i32 0, i32 1, !dbg !107
  %59 = load i8*, i8** %58, align 8, !dbg !107
  %60 = load i64, i64* %15, align 8, !dbg !108
  %61 = getelementptr inbounds i8, i8* %59, i64 %60, !dbg !109
  %62 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !110
  %63 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %62, i32 0, i32 2, !dbg !111
  %64 = load i8*, i8** %63, align 8, !dbg !111
  %65 = icmp ugt i8* %61, %64, !dbg !112
  br i1 %65, label %66, label %67, !dbg !113

66:                                               ; preds = %51
  store i8* null, i8** %6, align 8, !dbg !114
  br label %107, !dbg !114

67:                                               ; preds = %51
  br label %68, !dbg !111

68:                                               ; preds = %67
  call void @llvm.dbg.label(metadata !116), !dbg !117
  %69 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !118
  %70 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %69, i32 0, i32 1, !dbg !119
  %71 = load i8*, i8** %70, align 8, !dbg !119
  store i8* %71, i8** %13, align 8, !dbg !120
  %72 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !121
  %73 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %72, i32 0, i32 1, !dbg !122
  %74 = load i8*, i8** %73, align 8, !dbg !122
  %75 = load i8*, i8** %8, align 8, !dbg !123
  %76 = load i32, i32* %9, align 4, !dbg !124
  %77 = sext i32 %76 to i64, !dbg !124
  %78 = call i8* @memcpy(i8* %74, i8* %75, i64 %77), !dbg !125
  %79 = load i32, i32* %9, align 4, !dbg !126
  %80 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !127
  %81 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %80, i32 0, i32 1, !dbg !128
  %82 = load i8*, i8** %81, align 8, !dbg !129
  %83 = sext i32 %79 to i64, !dbg !129
  %84 = getelementptr inbounds i8, i8* %82, i64 %83, !dbg !129
  store i8* %84, i8** %81, align 8, !dbg !129
  %85 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !130
  %86 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %85, i32 0, i32 1, !dbg !131
  %87 = load i8*, i8** %86, align 8, !dbg !132
  %88 = getelementptr inbounds i8, i8* %87, i32 1, !dbg !132
  store i8* %88, i8** %86, align 8, !dbg !132
  store i8 58, i8* %87, align 1, !dbg !133
  %89 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !134
  %90 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %89, i32 0, i32 1, !dbg !135
  %91 = load i8*, i8** %90, align 8, !dbg !135
  %92 = load i8*, i8** %10, align 8, !dbg !136
  %93 = load i32, i32* %11, align 4, !dbg !137
  %94 = sext i32 %93 to i64, !dbg !137
  %95 = call i8* @memcpy(i8* %91, i8* %92, i64 %94), !dbg !138
  %96 = load i32, i32* %11, align 4, !dbg !139
  %97 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !140
  %98 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %97, i32 0, i32 1, !dbg !141
  %99 = load i8*, i8** %98, align 8, !dbg !142
  %100 = sext i32 %96 to i64, !dbg !142
  %101 = getelementptr inbounds i8, i8* %99, i64 %100, !dbg !142
  store i8* %101, i8** %98, align 8, !dbg !142
  %102 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %12, align 8, !dbg !143
  %103 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %102, i32 0, i32 1, !dbg !144
  %104 = load i8*, i8** %103, align 8, !dbg !145
  %105 = getelementptr inbounds i8, i8* %104, i32 1, !dbg !145
  store i8* %105, i8** %103, align 8, !dbg !145
  store i8 0, i8* %104, align 1, !dbg !146
  %106 = load i8*, i8** %13, align 8, !dbg !147
  store i8* %106, i8** %6, align 8, !dbg !148
  br label %107, !dbg !148

107:                                              ; preds = %68, %66, %29
  %108 = load i8*, i8** %6, align 8, !dbg !149
  ret i8* %108, !dbg !149
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !150 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlDict, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._xmlDictStrings*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlDict* %2, metadata !153, metadata !DIExpression()), !dbg !154
  %12 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 0, !dbg !155
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** %12, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i64* %3, metadata !157, metadata !DIExpression()), !dbg !158
  %13 = bitcast i64* %3 to i8*, !dbg !159
  call void @klee_make_symbolic(i8* noundef %13, i64 noundef 8, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !160
  %14 = load i64, i64* %3, align 8, !dbg !161
  %15 = icmp uge i64 %14, 100, !dbg !162
  br i1 %15, label %16, label %19, !dbg !163

16:                                               ; preds = %0
  %17 = load i64, i64* %3, align 8, !dbg !164
  %18 = icmp ule i64 %17, 4096, !dbg !165
  br label %19

19:                                               ; preds = %16, %0
  %20 = phi i1 [ false, %0 ], [ %18, %16 ], !dbg !166
  %21 = zext i1 %20 to i32, !dbg !163
  %22 = sext i32 %21 to i64, !dbg !161
  call void @klee_assume(i64 noundef %22), !dbg !167
  call void @llvm.dbg.declare(metadata %struct._xmlDictStrings** %4, metadata !168, metadata !DIExpression()), !dbg !169
  %23 = load i64, i64* %3, align 8, !dbg !170
  %24 = add i64 32, %23, !dbg !171
  %25 = sub i64 %24, 1, !dbg !172
  %26 = call noalias i8* @malloc(i64 noundef %25) #7, !dbg !173
  %27 = bitcast i8* %26 to %struct._xmlDictStrings*, !dbg !174
  store %struct._xmlDictStrings* %27, %struct._xmlDictStrings** %4, align 8, !dbg !169
  %28 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !175
  %29 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %28, i32 0, i32 0, !dbg !176
  store %struct._xmlDictStrings* null, %struct._xmlDictStrings** %29, align 8, !dbg !177
  %30 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !178
  %31 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %30, i32 0, i32 3, !dbg !179
  %32 = getelementptr inbounds [1 x i8], [1 x i8]* %31, i64 0, i64 0, !dbg !178
  %33 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !180
  %34 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %33, i32 0, i32 1, !dbg !181
  store i8* %32, i8** %34, align 8, !dbg !182
  %35 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !183
  %36 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %35, i32 0, i32 3, !dbg !184
  %37 = getelementptr inbounds [1 x i8], [1 x i8]* %36, i64 0, i64 0, !dbg !183
  %38 = load i64, i64* %3, align 8, !dbg !185
  %39 = getelementptr inbounds i8, i8* %37, i64 %38, !dbg !186
  %40 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !187
  %41 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %40, i32 0, i32 2, !dbg !188
  store i8* %39, i8** %41, align 8, !dbg !189
  %42 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !190
  %43 = getelementptr inbounds %struct._xmlDict, %struct._xmlDict* %2, i32 0, i32 0, !dbg !191
  store %struct._xmlDictStrings* %42, %struct._xmlDictStrings** %43, align 8, !dbg !192
  call void @llvm.dbg.declare(metadata i32* %5, metadata !193, metadata !DIExpression()), !dbg !194
  call void @llvm.dbg.declare(metadata i32* %6, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata [100 x i8]* %7, metadata !197, metadata !DIExpression()), !dbg !201
  call void @llvm.dbg.declare(metadata [100 x i8]* %8, metadata !202, metadata !DIExpression()), !dbg !203
  %44 = bitcast i32* %5 to i8*, !dbg !204
  call void @klee_make_symbolic(i8* noundef %44, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !205
  %45 = bitcast i32* %6 to i8*, !dbg !206
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !207
  %46 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !208
  call void @klee_make_symbolic(i8* noundef %46, i64 noundef 100, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !209
  %47 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0, !dbg !210
  call void @klee_make_symbolic(i8* noundef %47, i64 noundef 100, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)), !dbg !211
  %48 = load i32, i32* %5, align 4, !dbg !212
  %49 = icmp sge i32 %48, 0, !dbg !213
  br i1 %49, label %50, label %53, !dbg !214

50:                                               ; preds = %19
  %51 = load i32, i32* %5, align 4, !dbg !215
  %52 = icmp slt i32 %51, 100, !dbg !216
  br label %53

53:                                               ; preds = %50, %19
  %54 = phi i1 [ false, %19 ], [ %52, %50 ], !dbg !166
  %55 = zext i1 %54 to i32, !dbg !214
  %56 = sext i32 %55 to i64, !dbg !212
  call void @klee_assume(i64 noundef %56), !dbg !217
  %57 = load i32, i32* %6, align 4, !dbg !218
  %58 = icmp sge i32 %57, 0, !dbg !219
  br i1 %58, label %59, label %62, !dbg !220

59:                                               ; preds = %53
  %60 = load i32, i32* %6, align 4, !dbg !221
  %61 = icmp slt i32 %60, 100, !dbg !222
  br label %62

62:                                               ; preds = %59, %53
  %63 = phi i1 [ false, %53 ], [ %61, %59 ], !dbg !166
  %64 = zext i1 %63 to i32, !dbg !220
  %65 = sext i32 %64 to i64, !dbg !218
  call void @klee_assume(i64 noundef %65), !dbg !223
  %66 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !224
  %67 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %66, i32 0, i32 1, !dbg !225
  %68 = load i8*, i8** %67, align 8, !dbg !225
  %69 = load i32, i32* %5, align 4, !dbg !226
  %70 = sext i32 %69 to i64, !dbg !227
  %71 = getelementptr inbounds i8, i8* %68, i64 %70, !dbg !227
  %72 = getelementptr inbounds i8, i8* %71, i64 1, !dbg !228
  %73 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !229
  %74 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %73, i32 0, i32 2, !dbg !230
  %75 = load i8*, i8** %74, align 8, !dbg !230
  %76 = icmp ule i8* %72, %75, !dbg !231
  %77 = zext i1 %76 to i32, !dbg !231
  %78 = sext i32 %77 to i64, !dbg !224
  call void @klee_assume(i64 noundef %78), !dbg !232
  call void @llvm.dbg.declare(metadata i8** %9, metadata !233, metadata !DIExpression()), !dbg !234
  %79 = getelementptr inbounds [100 x i8], [100 x i8]* %7, i64 0, i64 0, !dbg !235
  %80 = load i32, i32* %5, align 4, !dbg !236
  %81 = getelementptr inbounds [100 x i8], [100 x i8]* %8, i64 0, i64 0, !dbg !237
  %82 = load i32, i32* %6, align 4, !dbg !238
  %83 = call i8* @xmlDictLookup(%struct._xmlDict* noundef %2, i8* noundef %79, i32 noundef %80, i8* noundef %81, i32 noundef %82), !dbg !239
  store i8* %83, i8** %9, align 8, !dbg !234
  call void @llvm.dbg.declare(metadata i8** %10, metadata !240, metadata !DIExpression()), !dbg !241
  %84 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !242
  %85 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %84, i32 0, i32 1, !dbg !243
  %86 = load i8*, i8** %85, align 8, !dbg !243
  %87 = getelementptr inbounds i8, i8* %86, i64 -1, !dbg !244
  store i8* %87, i8** %10, align 8, !dbg !241
  call void @llvm.dbg.declare(metadata i64* %11, metadata !245, metadata !DIExpression()), !dbg !246
  %88 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !247
  %89 = getelementptr inbounds %struct._xmlDictStrings, %struct._xmlDictStrings* %88, i32 0, i32 2, !dbg !248
  %90 = load i8*, i8** %89, align 8, !dbg !248
  %91 = load i8*, i8** %10, align 8, !dbg !249
  %92 = ptrtoint i8* %90 to i64, !dbg !250
  %93 = ptrtoint i8* %91 to i64, !dbg !250
  %94 = sub i64 %92, %93, !dbg !250
  store i64 %94, i64* %11, align 8, !dbg !246
  %95 = load i32, i32* %6, align 4, !dbg !251
  %96 = sext i32 %95 to i64, !dbg !251
  %97 = load i64, i64* %11, align 8, !dbg !251
  %98 = icmp ule i64 %96, %97, !dbg !251
  br i1 %98, label %99, label %101, !dbg !251

99:                                               ; preds = %62
  br i1 true, label %100, label %101, !dbg !251

100:                                              ; preds = %99
  br label %103, !dbg !251

101:                                              ; preds = %99, %62
  %102 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([46 x i8], [46 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i32 noundef 105, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !251
  br label %103, !dbg !251

103:                                              ; preds = %101, %100
  %104 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([102 x i8], [102 x i8]* @.str.7, i64 0, i64 0), i32 noundef 108, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !252
  %105 = load %struct._xmlDictStrings*, %struct._xmlDictStrings** %4, align 8, !dbg !253
  %106 = bitcast %struct._xmlDictStrings* %105 to i8*, !dbg !253
  call void @free(i8* noundef %106) #7, !dbg !254
  ret i32 0, !dbg !255
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #4

declare void @klee_assume(i64 noundef) #4

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !256 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !262, metadata !DIExpression()), !dbg !263
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !264, metadata !DIExpression()), !dbg !265
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !266, metadata !DIExpression()), !dbg !267
  call void @llvm.dbg.declare(metadata i8** %7, metadata !268, metadata !DIExpression()), !dbg !269
  %9 = load i8*, i8** %4, align 8, !dbg !270
  store i8* %9, i8** %7, align 8, !dbg !269
  call void @llvm.dbg.declare(metadata i8** %8, metadata !271, metadata !DIExpression()), !dbg !272
  %10 = load i8*, i8** %5, align 8, !dbg !273
  store i8* %10, i8** %8, align 8, !dbg !272
  br label %11, !dbg !274

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !275
  %13 = add i64 %12, -1, !dbg !275
  store i64 %13, i64* %6, align 8, !dbg !275
  %14 = icmp ugt i64 %12, 0, !dbg !276
  br i1 %14, label %15, label %21, !dbg !274

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !277
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !277
  store i8* %17, i8** %8, align 8, !dbg !277
  %18 = load i8, i8* %16, align 1, !dbg !278
  %19 = load i8*, i8** %7, align 8, !dbg !279
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !279
  store i8* %20, i8** %7, align 8, !dbg !279
  store i8 %18, i8* %19, align 1, !dbg !280
  br label %11, !dbg !274, !llvm.loop !281

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !283
  ret i8* %22, !dbg !284
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26, !26}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/166_dict.c_232_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "420e7e23073fd1fbea374bc1b6eb2401")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDictStrings", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDictStrings", file: !1, line: 13, size: 256, elements: !7)
!7 = !{!8, !9, !12, !13}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !6, file: !1, line: 14, baseType: !4, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !6, file: !1, line: 15, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !6, file: !1, line: 16, baseType: !10, size: 64, offset: 128)
!13 = !DIDerivedType(tag: DW_TAG_member, name: "array", scope: !6, file: !1, line: 17, baseType: !14, size: 8, offset: 192)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 8, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 1)
!17 = distinct !DICompileUnit(language: DW_LANG_C99, file: !18, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!18 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!19 = !{i32 7, !"Dwarf Version", i32 5}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{i32 7, !"PIC Level", i32 2}
!23 = !{i32 7, !"PIE Level", i32 2}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"Ubuntu clang version 14.0.6"}
!27 = distinct !DISubprogram(name: "xmlDictLookup", scope: !1, file: !1, line: 26, type: !28, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!28 = !DISubroutineType(types: !29)
!29 = !{!30, !32, !30, !37, !30, !37}
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlDict", file: !1, line: 10, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlDict", file: !1, line: 20, size: 64, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "strings", scope: !34, file: !1, line: 21, baseType: !4, size: 64)
!37 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!38 = !{}
!39 = !DILocalVariable(name: "dict", arg: 1, scope: !27, file: !1, line: 26, type: !32)
!40 = !DILocation(line: 26, column: 36, scope: !27)
!41 = !DILocalVariable(name: "prefix", arg: 2, scope: !27, file: !1, line: 26, type: !30)
!42 = !DILocation(line: 26, column: 54, scope: !27)
!43 = !DILocalVariable(name: "plen", arg: 3, scope: !27, file: !1, line: 26, type: !37)
!44 = !DILocation(line: 26, column: 66, scope: !27)
!45 = !DILocalVariable(name: "name", arg: 4, scope: !27, file: !1, line: 26, type: !30)
!46 = !DILocation(line: 26, column: 84, scope: !27)
!47 = !DILocalVariable(name: "namelen", arg: 5, scope: !27, file: !1, line: 26, type: !37)
!48 = !DILocation(line: 26, column: 94, scope: !27)
!49 = !DILocalVariable(name: "pool", scope: !27, file: !1, line: 27, type: !4)
!50 = !DILocation(line: 27, column: 21, scope: !27)
!51 = !DILocalVariable(name: "ret", scope: !27, file: !1, line: 28, type: !30)
!52 = !DILocation(line: 28, column: 17, scope: !27)
!53 = !DILocation(line: 31, column: 12, scope: !27)
!54 = !DILocation(line: 31, column: 18, scope: !27)
!55 = !DILocation(line: 31, column: 10, scope: !27)
!56 = !DILocation(line: 32, column: 9, scope: !57)
!57 = distinct !DILexicalBlock(scope: !27, file: !1, line: 32, column: 9)
!58 = !DILocation(line: 32, column: 14, scope: !57)
!59 = !DILocation(line: 32, column: 9, scope: !27)
!60 = !DILocalVariable(name: "pool_size", scope: !61, file: !1, line: 34, type: !62)
!61 = distinct !DILexicalBlock(scope: !57, file: !1, line: 32, column: 23)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !63, line: 46, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!64 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!65 = !DILocation(line: 34, column: 16, scope: !61)
!66 = !DILocation(line: 35, column: 65, scope: !61)
!67 = !DILocation(line: 35, column: 63, scope: !61)
!68 = !DILocation(line: 35, column: 75, scope: !61)
!69 = !DILocation(line: 35, column: 33, scope: !61)
!70 = !DILocation(line: 35, column: 16, scope: !61)
!71 = !DILocation(line: 35, column: 14, scope: !61)
!72 = !DILocation(line: 36, column: 13, scope: !73)
!73 = distinct !DILexicalBlock(scope: !61, file: !1, line: 36, column: 13)
!74 = !DILocation(line: 36, column: 18, scope: !73)
!75 = !DILocation(line: 36, column: 13, scope: !61)
!76 = !DILocation(line: 36, column: 27, scope: !73)
!77 = !DILocation(line: 37, column: 22, scope: !61)
!78 = !DILocation(line: 37, column: 28, scope: !61)
!79 = !DILocation(line: 37, column: 9, scope: !61)
!80 = !DILocation(line: 37, column: 15, scope: !61)
!81 = !DILocation(line: 37, column: 20, scope: !61)
!82 = !DILocation(line: 38, column: 22, scope: !61)
!83 = !DILocation(line: 38, column: 28, scope: !61)
!84 = !DILocation(line: 38, column: 9, scope: !61)
!85 = !DILocation(line: 38, column: 15, scope: !61)
!86 = !DILocation(line: 38, column: 20, scope: !61)
!87 = !DILocation(line: 39, column: 21, scope: !61)
!88 = !DILocation(line: 39, column: 27, scope: !61)
!89 = !DILocation(line: 39, column: 35, scope: !61)
!90 = !DILocation(line: 39, column: 33, scope: !61)
!91 = !DILocation(line: 39, column: 9, scope: !61)
!92 = !DILocation(line: 39, column: 15, scope: !61)
!93 = !DILocation(line: 39, column: 19, scope: !61)
!94 = !DILocation(line: 40, column: 25, scope: !61)
!95 = !DILocation(line: 40, column: 9, scope: !61)
!96 = !DILocation(line: 40, column: 15, scope: !61)
!97 = !DILocation(line: 40, column: 23, scope: !61)
!98 = !DILocation(line: 41, column: 5, scope: !61)
!99 = !DILocalVariable(name: "needed", scope: !27, file: !1, line: 44, type: !62)
!100 = !DILocation(line: 44, column: 12, scope: !27)
!101 = !DILocation(line: 44, column: 21, scope: !27)
!102 = !DILocation(line: 44, column: 28, scope: !27)
!103 = !DILocation(line: 44, column: 26, scope: !27)
!104 = !DILocation(line: 44, column: 36, scope: !27)
!105 = !DILocation(line: 45, column: 9, scope: !106)
!106 = distinct !DILexicalBlock(scope: !27, file: !1, line: 45, column: 9)
!107 = !DILocation(line: 45, column: 15, scope: !106)
!108 = !DILocation(line: 45, column: 22, scope: !106)
!109 = !DILocation(line: 45, column: 20, scope: !106)
!110 = !DILocation(line: 45, column: 31, scope: !106)
!111 = !DILocation(line: 45, column: 37, scope: !106)
!112 = !DILocation(line: 45, column: 29, scope: !106)
!113 = !DILocation(line: 45, column: 9, scope: !27)
!114 = !DILocation(line: 47, column: 9, scope: !115)
!115 = distinct !DILexicalBlock(scope: !106, file: !1, line: 45, column: 42)
!116 = !DILabel(scope: !27, name: "found_pool", file: !1, line: 50)
!117 = !DILocation(line: 50, column: 1, scope: !27)
!118 = !DILocation(line: 51, column: 11, scope: !27)
!119 = !DILocation(line: 51, column: 17, scope: !27)
!120 = !DILocation(line: 51, column: 9, scope: !27)
!121 = !DILocation(line: 54, column: 12, scope: !27)
!122 = !DILocation(line: 54, column: 18, scope: !27)
!123 = !DILocation(line: 54, column: 24, scope: !27)
!124 = !DILocation(line: 54, column: 32, scope: !27)
!125 = !DILocation(line: 54, column: 5, scope: !27)
!126 = !DILocation(line: 55, column: 19, scope: !27)
!127 = !DILocation(line: 55, column: 5, scope: !27)
!128 = !DILocation(line: 55, column: 11, scope: !27)
!129 = !DILocation(line: 55, column: 16, scope: !27)
!130 = !DILocation(line: 56, column: 7, scope: !27)
!131 = !DILocation(line: 56, column: 13, scope: !27)
!132 = !DILocation(line: 56, column: 17, scope: !27)
!133 = !DILocation(line: 56, column: 21, scope: !27)
!134 = !DILocation(line: 57, column: 12, scope: !27)
!135 = !DILocation(line: 57, column: 18, scope: !27)
!136 = !DILocation(line: 57, column: 24, scope: !27)
!137 = !DILocation(line: 57, column: 30, scope: !27)
!138 = !DILocation(line: 57, column: 5, scope: !27)
!139 = !DILocation(line: 58, column: 19, scope: !27)
!140 = !DILocation(line: 58, column: 5, scope: !27)
!141 = !DILocation(line: 58, column: 11, scope: !27)
!142 = !DILocation(line: 58, column: 16, scope: !27)
!143 = !DILocation(line: 59, column: 7, scope: !27)
!144 = !DILocation(line: 59, column: 13, scope: !27)
!145 = !DILocation(line: 59, column: 17, scope: !27)
!146 = !DILocation(line: 59, column: 21, scope: !27)
!147 = !DILocation(line: 61, column: 12, scope: !27)
!148 = !DILocation(line: 61, column: 5, scope: !27)
!149 = !DILocation(line: 62, column: 1, scope: !27)
!150 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 64, type: !151, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !38)
!151 = !DISubroutineType(types: !152)
!152 = !{!37}
!153 = !DILocalVariable(name: "dict", scope: !150, file: !1, line: 66, type: !33)
!154 = !DILocation(line: 66, column: 13, scope: !150)
!155 = !DILocation(line: 67, column: 10, scope: !150)
!156 = !DILocation(line: 67, column: 18, scope: !150)
!157 = !DILocalVariable(name: "pool_size", scope: !150, file: !1, line: 70, type: !62)
!158 = !DILocation(line: 70, column: 12, scope: !150)
!159 = !DILocation(line: 71, column: 24, scope: !150)
!160 = !DILocation(line: 71, column: 5, scope: !150)
!161 = !DILocation(line: 72, column: 17, scope: !150)
!162 = !DILocation(line: 72, column: 27, scope: !150)
!163 = !DILocation(line: 72, column: 34, scope: !150)
!164 = !DILocation(line: 72, column: 37, scope: !150)
!165 = !DILocation(line: 72, column: 47, scope: !150)
!166 = !DILocation(line: 0, scope: !150)
!167 = !DILocation(line: 72, column: 5, scope: !150)
!168 = !DILocalVariable(name: "pool", scope: !150, file: !1, line: 74, type: !4)
!169 = !DILocation(line: 74, column: 21, scope: !150)
!170 = !DILocation(line: 74, column: 77, scope: !150)
!171 = !DILocation(line: 74, column: 75, scope: !150)
!172 = !DILocation(line: 74, column: 87, scope: !150)
!173 = !DILocation(line: 74, column: 45, scope: !150)
!174 = !DILocation(line: 74, column: 28, scope: !150)
!175 = !DILocation(line: 75, column: 5, scope: !150)
!176 = !DILocation(line: 75, column: 11, scope: !150)
!177 = !DILocation(line: 75, column: 16, scope: !150)
!178 = !DILocation(line: 76, column: 18, scope: !150)
!179 = !DILocation(line: 76, column: 24, scope: !150)
!180 = !DILocation(line: 76, column: 5, scope: !150)
!181 = !DILocation(line: 76, column: 11, scope: !150)
!182 = !DILocation(line: 76, column: 16, scope: !150)
!183 = !DILocation(line: 77, column: 17, scope: !150)
!184 = !DILocation(line: 77, column: 23, scope: !150)
!185 = !DILocation(line: 77, column: 31, scope: !150)
!186 = !DILocation(line: 77, column: 29, scope: !150)
!187 = !DILocation(line: 77, column: 5, scope: !150)
!188 = !DILocation(line: 77, column: 11, scope: !150)
!189 = !DILocation(line: 77, column: 15, scope: !150)
!190 = !DILocation(line: 78, column: 20, scope: !150)
!191 = !DILocation(line: 78, column: 10, scope: !150)
!192 = !DILocation(line: 78, column: 18, scope: !150)
!193 = !DILocalVariable(name: "plen", scope: !150, file: !1, line: 81, type: !37)
!194 = !DILocation(line: 81, column: 9, scope: !150)
!195 = !DILocalVariable(name: "namelen", scope: !150, file: !1, line: 81, type: !37)
!196 = !DILocation(line: 81, column: 15, scope: !150)
!197 = !DILocalVariable(name: "prefix", scope: !150, file: !1, line: 82, type: !198)
!198 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 800, elements: !199)
!199 = !{!200}
!200 = !DISubrange(count: 100)
!201 = !DILocation(line: 82, column: 10, scope: !150)
!202 = !DILocalVariable(name: "name", scope: !150, file: !1, line: 82, type: !198)
!203 = !DILocation(line: 82, column: 23, scope: !150)
!204 = !DILocation(line: 84, column: 24, scope: !150)
!205 = !DILocation(line: 84, column: 5, scope: !150)
!206 = !DILocation(line: 85, column: 24, scope: !150)
!207 = !DILocation(line: 85, column: 5, scope: !150)
!208 = !DILocation(line: 86, column: 24, scope: !150)
!209 = !DILocation(line: 86, column: 5, scope: !150)
!210 = !DILocation(line: 87, column: 24, scope: !150)
!211 = !DILocation(line: 87, column: 5, scope: !150)
!212 = !DILocation(line: 90, column: 17, scope: !150)
!213 = !DILocation(line: 90, column: 22, scope: !150)
!214 = !DILocation(line: 90, column: 27, scope: !150)
!215 = !DILocation(line: 90, column: 30, scope: !150)
!216 = !DILocation(line: 90, column: 35, scope: !150)
!217 = !DILocation(line: 90, column: 5, scope: !150)
!218 = !DILocation(line: 91, column: 17, scope: !150)
!219 = !DILocation(line: 91, column: 25, scope: !150)
!220 = !DILocation(line: 91, column: 30, scope: !150)
!221 = !DILocation(line: 91, column: 33, scope: !150)
!222 = !DILocation(line: 91, column: 41, scope: !150)
!223 = !DILocation(line: 91, column: 5, scope: !150)
!224 = !DILocation(line: 94, column: 17, scope: !150)
!225 = !DILocation(line: 94, column: 23, scope: !150)
!226 = !DILocation(line: 94, column: 30, scope: !150)
!227 = !DILocation(line: 94, column: 28, scope: !150)
!228 = !DILocation(line: 94, column: 35, scope: !150)
!229 = !DILocation(line: 94, column: 42, scope: !150)
!230 = !DILocation(line: 94, column: 48, scope: !150)
!231 = !DILocation(line: 94, column: 39, scope: !150)
!232 = !DILocation(line: 94, column: 5, scope: !150)
!233 = !DILocalVariable(name: "result", scope: !150, file: !1, line: 97, type: !30)
!234 = !DILocation(line: 97, column: 17, scope: !150)
!235 = !DILocation(line: 97, column: 47, scope: !150)
!236 = !DILocation(line: 97, column: 55, scope: !150)
!237 = !DILocation(line: 97, column: 61, scope: !150)
!238 = !DILocation(line: 97, column: 67, scope: !150)
!239 = !DILocation(line: 97, column: 26, scope: !150)
!240 = !DILocalVariable(name: "after_prefix", scope: !150, file: !1, line: 101, type: !10)
!241 = !DILocation(line: 101, column: 11, scope: !150)
!242 = !DILocation(line: 101, column: 26, scope: !150)
!243 = !DILocation(line: 101, column: 32, scope: !150)
!244 = !DILocation(line: 101, column: 37, scope: !150)
!245 = !DILocalVariable(name: "available", scope: !150, file: !1, line: 102, type: !62)
!246 = !DILocation(line: 102, column: 12, scope: !150)
!247 = !DILocation(line: 102, column: 24, scope: !150)
!248 = !DILocation(line: 102, column: 30, scope: !150)
!249 = !DILocation(line: 102, column: 36, scope: !150)
!250 = !DILocation(line: 102, column: 34, scope: !150)
!251 = !DILocation(line: 105, column: 5, scope: !150)
!252 = !DILocation(line: 108, column: 5, scope: !150)
!253 = !DILocation(line: 111, column: 10, scope: !150)
!254 = !DILocation(line: 111, column: 5, scope: !150)
!255 = !DILocation(line: 113, column: 5, scope: !150)
!256 = distinct !DISubprogram(name: "memcpy", scope: !257, file: !257, line: 12, type: !258, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !17, retainedNodes: !38)
!257 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!258 = !DISubroutineType(types: !259)
!259 = !{!3, !3, !260, !62}
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!262 = !DILocalVariable(name: "destaddr", arg: 1, scope: !256, file: !257, line: 12, type: !3)
!263 = !DILocation(line: 12, column: 20, scope: !256)
!264 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !256, file: !257, line: 12, type: !260)
!265 = !DILocation(line: 12, column: 42, scope: !256)
!266 = !DILocalVariable(name: "len", arg: 3, scope: !256, file: !257, line: 12, type: !62)
!267 = !DILocation(line: 12, column: 58, scope: !256)
!268 = !DILocalVariable(name: "dest", scope: !256, file: !257, line: 13, type: !10)
!269 = !DILocation(line: 13, column: 9, scope: !256)
!270 = !DILocation(line: 13, column: 16, scope: !256)
!271 = !DILocalVariable(name: "src", scope: !256, file: !257, line: 14, type: !30)
!272 = !DILocation(line: 14, column: 15, scope: !256)
!273 = !DILocation(line: 14, column: 21, scope: !256)
!274 = !DILocation(line: 16, column: 3, scope: !256)
!275 = !DILocation(line: 16, column: 13, scope: !256)
!276 = !DILocation(line: 16, column: 16, scope: !256)
!277 = !DILocation(line: 17, column: 19, scope: !256)
!278 = !DILocation(line: 17, column: 15, scope: !256)
!279 = !DILocation(line: 17, column: 10, scope: !256)
!280 = !DILocation(line: 17, column: 13, scope: !256)
!281 = distinct !{!281, !274, !277, !282}
!282 = !{!"llvm.loop.mustprogress"}
!283 = !DILocation(line: 18, column: 10, scope: !256)
!284 = !DILocation(line: 18, column: 3, scope: !256)

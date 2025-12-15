; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/234_xmlschemastypes.c_5931_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/234_xmlschemastypes.c_5931_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.dec_struct = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"bufsize\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"dec_total\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"buf\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [78 x i8] c"(offs + move_dest_offset + move_size <= buf + bufsize) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/234_xmlschemastypes.c_5931_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dec_struct, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i32* %2, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i8** %3, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i8** %4, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %5, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata %struct.dec_struct* %6, metadata !32, metadata !DIExpression()), !dbg !37
  %10 = bitcast i32* %2 to i8*, !dbg !38
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !39
  %11 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %6, i32 0, i32 0, !dbg !40
  %12 = bitcast i32* %11 to i8*, !dbg !41
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !42
  %13 = load i32, i32* %2, align 4, !dbg !43
  %14 = icmp ugt i32 %13, 0, !dbg !44
  br i1 %14, label %15, label %18, !dbg !45

15:                                               ; preds = %0
  %16 = load i32, i32* %2, align 4, !dbg !46
  %17 = icmp ule i32 %16, 1024, !dbg !47
  br label %18

18:                                               ; preds = %15, %0
  %19 = phi i1 [ false, %0 ], [ %17, %15 ], !dbg !48
  %20 = zext i1 %19 to i32, !dbg !45
  %21 = sext i32 %20 to i64, !dbg !43
  call void @klee_assume(i64 noundef %21), !dbg !49
  %22 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %6, i32 0, i32 0, !dbg !50
  %23 = load i32, i32* %22, align 4, !dbg !50
  %24 = icmp ugt i32 %23, 0, !dbg !51
  br i1 %24, label %25, label %30, !dbg !52

25:                                               ; preds = %18
  %26 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %6, i32 0, i32 0, !dbg !53
  %27 = load i32, i32* %26, align 4, !dbg !53
  %28 = load i32, i32* %2, align 4, !dbg !54
  %29 = icmp ule i32 %27, %28, !dbg !55
  br label %30

30:                                               ; preds = %25, %18
  %31 = phi i1 [ false, %18 ], [ %29, %25 ], !dbg !48
  %32 = zext i1 %31 to i32, !dbg !52
  %33 = sext i32 %32 to i64, !dbg !56
  call void @klee_assume(i64 noundef %33), !dbg !57
  %34 = load i32, i32* %2, align 4, !dbg !58
  %35 = zext i32 %34 to i64, !dbg !58
  %36 = call noalias i8* @malloc(i64 noundef %35) #8, !dbg !59
  store i8* %36, i8** %3, align 8, !dbg !60
  %37 = load i8*, i8** %3, align 8, !dbg !61
  %38 = icmp ne i8* %37, null, !dbg !62
  %39 = zext i1 %38 to i32, !dbg !62
  %40 = sext i32 %39 to i64, !dbg !61
  call void @klee_assume(i64 noundef %40), !dbg !63
  %41 = load i8*, i8** %3, align 8, !dbg !64
  %42 = load i32, i32* %2, align 4, !dbg !65
  %43 = zext i32 %42 to i64, !dbg !65
  call void @klee_make_symbolic(i8* noundef %41, i64 noundef %43, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !66
  %44 = load i8*, i8** %3, align 8, !dbg !67
  %45 = load i32, i32* %2, align 4, !dbg !68
  %46 = udiv i32 %45, 2, !dbg !69
  %47 = zext i32 %46 to i64, !dbg !70
  %48 = getelementptr inbounds i8, i8* %44, i64 %47, !dbg !70
  store i8* %48, i8** %4, align 8, !dbg !71
  %49 = load i8*, i8** %4, align 8, !dbg !72
  %50 = load i8*, i8** %3, align 8, !dbg !73
  %51 = icmp uge i8* %49, %50, !dbg !74
  br i1 %51, label %52, label %59, !dbg !75

52:                                               ; preds = %30
  %53 = load i8*, i8** %4, align 8, !dbg !76
  %54 = load i8*, i8** %3, align 8, !dbg !77
  %55 = load i32, i32* %2, align 4, !dbg !78
  %56 = zext i32 %55 to i64, !dbg !79
  %57 = getelementptr inbounds i8, i8* %54, i64 %56, !dbg !79
  %58 = icmp ult i8* %53, %57, !dbg !80
  br label %59

59:                                               ; preds = %52, %30
  %60 = phi i1 [ false, %30 ], [ %58, %52 ], !dbg !48
  %61 = zext i1 %60 to i32, !dbg !75
  %62 = sext i32 %61 to i64, !dbg !72
  call void @klee_assume(i64 noundef %62), !dbg !81
  store i32 0, i32* %5, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %7, metadata !83, metadata !DIExpression()), !dbg !84
  %63 = load i8*, i8** %3, align 8, !dbg !85
  %64 = load i32, i32* %2, align 4, !dbg !86
  %65 = zext i32 %64 to i64, !dbg !87
  %66 = getelementptr inbounds i8, i8* %63, i64 %65, !dbg !87
  %67 = load i8*, i8** %4, align 8, !dbg !88
  %68 = ptrtoint i8* %66 to i64, !dbg !89
  %69 = ptrtoint i8* %67 to i64, !dbg !89
  %70 = sub i64 %68, %69, !dbg !89
  %71 = sub nsw i64 %70, 1, !dbg !90
  %72 = trunc i64 %71 to i32, !dbg !91
  store i32 %72, i32* %7, align 4, !dbg !84
  %73 = load i32, i32* %7, align 4, !dbg !92
  %74 = icmp ugt i32 %73, 0, !dbg !93
  %75 = zext i1 %74 to i32, !dbg !93
  %76 = sext i32 %75 to i64, !dbg !92
  call void @klee_assume(i64 noundef %76), !dbg !94
  br label %77, !dbg !95

77:                                               ; preds = %85, %59
  %78 = load i8*, i8** %4, align 8, !dbg !96
  %79 = load i32, i32* %5, align 4, !dbg !97
  %80 = zext i32 %79 to i64, !dbg !98
  %81 = getelementptr inbounds i8, i8* %78, i64 %80, !dbg !98
  %82 = load i8, i8* %81, align 1, !dbg !99
  %83 = sext i8 %82 to i32, !dbg !99
  %84 = icmp ne i32 %83, 0, !dbg !100
  br i1 %84, label %85, label %93, !dbg !95

85:                                               ; preds = %77
  %86 = load i32, i32* %5, align 4, !dbg !101
  %87 = load i32, i32* %7, align 4, !dbg !103
  %88 = icmp ult i32 %86, %87, !dbg !104
  %89 = zext i1 %88 to i32, !dbg !104
  %90 = sext i32 %89 to i64, !dbg !101
  call void @klee_assume(i64 noundef %90), !dbg !105
  %91 = load i32, i32* %5, align 4, !dbg !106
  %92 = add i32 %91, 1, !dbg !106
  store i32 %92, i32* %5, align 4, !dbg !106
  br label %77, !dbg !95, !llvm.loop !107

93:                                               ; preds = %77
  %94 = load i32, i32* %5, align 4, !dbg !110
  %95 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %6, i32 0, i32 0, !dbg !112
  %96 = load i32, i32* %95, align 4, !dbg !112
  %97 = icmp ult i32 %94, %96, !dbg !113
  br i1 %97, label %98, label %135, !dbg !114

98:                                               ; preds = %93
  call void @llvm.dbg.declare(metadata i32* %8, metadata !115, metadata !DIExpression()), !dbg !117
  %99 = getelementptr inbounds %struct.dec_struct, %struct.dec_struct* %6, i32 0, i32 0, !dbg !118
  %100 = load i32, i32* %99, align 4, !dbg !118
  %101 = load i32, i32* %5, align 4, !dbg !119
  %102 = sub i32 %100, %101, !dbg !120
  store i32 %102, i32* %8, align 4, !dbg !117
  call void @llvm.dbg.declare(metadata i32* %9, metadata !121, metadata !DIExpression()), !dbg !122
  %103 = load i32, i32* %5, align 4, !dbg !123
  %104 = add i32 %103, 1, !dbg !124
  store i32 %104, i32* %9, align 4, !dbg !122
  %105 = load i8*, i8** %4, align 8, !dbg !125
  %106 = load i32, i32* %8, align 4, !dbg !125
  %107 = zext i32 %106 to i64, !dbg !125
  %108 = getelementptr inbounds i8, i8* %105, i64 %107, !dbg !125
  %109 = load i32, i32* %9, align 4, !dbg !125
  %110 = zext i32 %109 to i64, !dbg !125
  %111 = getelementptr inbounds i8, i8* %108, i64 %110, !dbg !125
  %112 = load i8*, i8** %3, align 8, !dbg !125
  %113 = load i32, i32* %2, align 4, !dbg !125
  %114 = zext i32 %113 to i64, !dbg !125
  %115 = getelementptr inbounds i8, i8* %112, i64 %114, !dbg !125
  %116 = icmp ule i8* %111, %115, !dbg !125
  br i1 %116, label %117, label %119, !dbg !125

117:                                              ; preds = %98
  br i1 true, label %118, label %119, !dbg !125

118:                                              ; preds = %117
  br label %121, !dbg !125

119:                                              ; preds = %117, %98
  %120 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([78 x i8], [78 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 noundef 47, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !125
  br label %121, !dbg !125

121:                                              ; preds = %119, %118
  %122 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.5, i64 0, i64 0), i32 noundef 48, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !126
  %123 = load i8*, i8** %4, align 8, !dbg !127
  %124 = load i32, i32* %8, align 4, !dbg !128
  %125 = zext i32 %124 to i64, !dbg !129
  %126 = getelementptr inbounds i8, i8* %123, i64 %125, !dbg !129
  %127 = load i8*, i8** %4, align 8, !dbg !130
  %128 = load i32, i32* %9, align 4, !dbg !131
  %129 = zext i32 %128 to i64, !dbg !131
  %130 = call i8* @memmove(i8* %126, i8* %127, i64 %129), !dbg !132
  %131 = load i8*, i8** %4, align 8, !dbg !133
  %132 = load i32, i32* %8, align 4, !dbg !134
  %133 = zext i32 %132 to i64, !dbg !134
  %134 = call i8* @memset(i8* %131, i32 48, i64 %133), !dbg !135
  br label %135, !dbg !136

135:                                              ; preds = %121, %93
  %136 = load i8*, i8** %3, align 8, !dbg !137
  call void @free(i8* noundef %136) #8, !dbg !138
  ret i32 0, !dbg !139
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !140 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !149, metadata !DIExpression()), !dbg !150
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !151, metadata !DIExpression()), !dbg !152
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !153, metadata !DIExpression()), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %8, metadata !155, metadata !DIExpression()), !dbg !156
  %10 = load i8*, i8** %5, align 8, !dbg !157
  store i8* %10, i8** %8, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i8** %9, metadata !158, metadata !DIExpression()), !dbg !161
  %11 = load i8*, i8** %6, align 8, !dbg !162
  store i8* %11, i8** %9, align 8, !dbg !161
  %12 = load i8*, i8** %6, align 8, !dbg !163
  %13 = load i8*, i8** %5, align 8, !dbg !165
  %14 = icmp eq i8* %12, %13, !dbg !166
  br i1 %14, label %15, label %17, !dbg !167

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !168
  store i8* %16, i8** %4, align 8, !dbg !169
  br label %52, !dbg !169

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !170
  %19 = load i8*, i8** %5, align 8, !dbg !172
  %20 = icmp ugt i8* %18, %19, !dbg !173
  br i1 %20, label %21, label %31, !dbg !174

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !175
  %23 = add i64 %22, -1, !dbg !175
  store i64 %23, i64* %7, align 8, !dbg !175
  %24 = icmp ne i64 %22, 0, !dbg !177
  br i1 %24, label %25, label %50, !dbg !177

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !178
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !178
  store i8* %27, i8** %9, align 8, !dbg !178
  %28 = load i8, i8* %26, align 1, !dbg !179
  %29 = load i8*, i8** %8, align 8, !dbg !180
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !180
  store i8* %30, i8** %8, align 8, !dbg !180
  store i8 %28, i8* %29, align 1, !dbg !181
  br label %21, !dbg !177, !llvm.loop !182

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !183
  %33 = sub i64 %32, 1, !dbg !185
  %34 = load i8*, i8** %8, align 8, !dbg !186
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !186
  store i8* %35, i8** %8, align 8, !dbg !186
  %36 = load i64, i64* %7, align 8, !dbg !187
  %37 = sub i64 %36, 1, !dbg !188
  %38 = load i8*, i8** %9, align 8, !dbg !189
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !189
  store i8* %39, i8** %9, align 8, !dbg !189
  br label %40, !dbg !190

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !191
  %42 = add i64 %41, -1, !dbg !191
  store i64 %42, i64* %7, align 8, !dbg !191
  %43 = icmp ne i64 %41, 0, !dbg !190
  br i1 %43, label %44, label %50, !dbg !190

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !192
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !192
  store i8* %46, i8** %9, align 8, !dbg !192
  %47 = load i8, i8* %45, align 1, !dbg !193
  %48 = load i8*, i8** %8, align 8, !dbg !194
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !194
  store i8* %49, i8** %8, align 8, !dbg !194
  store i8 %47, i8* %48, align 1, !dbg !195
  br label %40, !dbg !190, !llvm.loop !196

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !197
  store i8* %51, i8** %4, align 8, !dbg !198
  br label %52, !dbg !198

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %53, !dbg !199
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #7 !dbg !200 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !204, metadata !DIExpression()), !dbg !205
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !206, metadata !DIExpression()), !dbg !207
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !208, metadata !DIExpression()), !dbg !209
  call void @llvm.dbg.declare(metadata i8** %7, metadata !210, metadata !DIExpression()), !dbg !211
  %8 = load i8*, i8** %4, align 8, !dbg !212
  store i8* %8, i8** %7, align 8, !dbg !211
  br label %9, !dbg !213

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !214
  %11 = add i64 %10, -1, !dbg !214
  store i64 %11, i64* %6, align 8, !dbg !214
  %12 = icmp ugt i64 %10, 0, !dbg !215
  br i1 %12, label %13, label %18, !dbg !213

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !216
  %15 = trunc i32 %14 to i8, !dbg !216
  %16 = load i8*, i8** %7, align 8, !dbg !217
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !217
  store i8* %17, i8** %7, align 8, !dbg !217
  store i8 %15, i8* %16, align 1, !dbg !218
  br label %9, !dbg !213, !llvm.loop !219

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !220
  ret i8* %19, !dbg !221
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { argmemonly nofree nounwind willreturn writeonly }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16}
!llvm.ident = !{!17, !17, !17}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/234_xmlschemastypes.c_5931_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "21b2130e5a1c6532cfd86ecd64bd3496")
!2 = !{!3, !5}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !7, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!7 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!8 = distinct !DICompileUnit(language: DW_LANG_C99, file: !9, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!9 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{i32 7, !"PIC Level", i32 2}
!14 = !{i32 7, !"PIE Level", i32 2}
!15 = !{i32 7, !"uwtable", i32 1}
!16 = !{i32 7, !"frame-pointer", i32 2}
!17 = !{!"Ubuntu clang version 14.0.6"}
!18 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !19, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !22)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !{}
!23 = !DILocalVariable(name: "bufsize", scope: !18, file: !1, line: 14, type: !24)
!24 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!25 = !DILocation(line: 14, column: 18, scope: !18)
!26 = !DILocalVariable(name: "buf", scope: !18, file: !1, line: 15, type: !3)
!27 = !DILocation(line: 15, column: 11, scope: !18)
!28 = !DILocalVariable(name: "offs", scope: !18, file: !1, line: 16, type: !3)
!29 = !DILocation(line: 16, column: 11, scope: !18)
!30 = !DILocalVariable(name: "i", scope: !18, file: !1, line: 17, type: !24)
!31 = !DILocation(line: 17, column: 18, scope: !18)
!32 = !DILocalVariable(name: "dec", scope: !18, file: !1, line: 18, type: !33)
!33 = !DIDerivedType(tag: DW_TAG_typedef, name: "dec_struct", file: !1, line: 11, baseType: !34)
!34 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 32, elements: !35)
!35 = !{!36}
!36 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !34, file: !1, line: 10, baseType: !24, size: 32)
!37 = !DILocation(line: 18, column: 16, scope: !18)
!38 = !DILocation(line: 20, column: 24, scope: !18)
!39 = !DILocation(line: 20, column: 5, scope: !18)
!40 = !DILocation(line: 21, column: 29, scope: !18)
!41 = !DILocation(line: 21, column: 24, scope: !18)
!42 = !DILocation(line: 21, column: 5, scope: !18)
!43 = !DILocation(line: 23, column: 17, scope: !18)
!44 = !DILocation(line: 23, column: 25, scope: !18)
!45 = !DILocation(line: 23, column: 29, scope: !18)
!46 = !DILocation(line: 23, column: 32, scope: !18)
!47 = !DILocation(line: 23, column: 40, scope: !18)
!48 = !DILocation(line: 0, scope: !18)
!49 = !DILocation(line: 23, column: 5, scope: !18)
!50 = !DILocation(line: 24, column: 21, scope: !18)
!51 = !DILocation(line: 24, column: 27, scope: !18)
!52 = !DILocation(line: 24, column: 31, scope: !18)
!53 = !DILocation(line: 24, column: 38, scope: !18)
!54 = !DILocation(line: 24, column: 47, scope: !18)
!55 = !DILocation(line: 24, column: 44, scope: !18)
!56 = !DILocation(line: 24, column: 17, scope: !18)
!57 = !DILocation(line: 24, column: 5, scope: !18)
!58 = !DILocation(line: 26, column: 26, scope: !18)
!59 = !DILocation(line: 26, column: 19, scope: !18)
!60 = !DILocation(line: 26, column: 9, scope: !18)
!61 = !DILocation(line: 27, column: 17, scope: !18)
!62 = !DILocation(line: 27, column: 21, scope: !18)
!63 = !DILocation(line: 27, column: 5, scope: !18)
!64 = !DILocation(line: 29, column: 24, scope: !18)
!65 = !DILocation(line: 29, column: 29, scope: !18)
!66 = !DILocation(line: 29, column: 5, scope: !18)
!67 = !DILocation(line: 31, column: 12, scope: !18)
!68 = !DILocation(line: 31, column: 19, scope: !18)
!69 = !DILocation(line: 31, column: 27, scope: !18)
!70 = !DILocation(line: 31, column: 16, scope: !18)
!71 = !DILocation(line: 31, column: 10, scope: !18)
!72 = !DILocation(line: 32, column: 17, scope: !18)
!73 = !DILocation(line: 32, column: 25, scope: !18)
!74 = !DILocation(line: 32, column: 22, scope: !18)
!75 = !DILocation(line: 32, column: 29, scope: !18)
!76 = !DILocation(line: 32, column: 32, scope: !18)
!77 = !DILocation(line: 32, column: 39, scope: !18)
!78 = !DILocation(line: 32, column: 45, scope: !18)
!79 = !DILocation(line: 32, column: 43, scope: !18)
!80 = !DILocation(line: 32, column: 37, scope: !18)
!81 = !DILocation(line: 32, column: 5, scope: !18)
!82 = !DILocation(line: 34, column: 7, scope: !18)
!83 = !DILocalVariable(name: "max_i", scope: !18, file: !1, line: 35, type: !24)
!84 = !DILocation(line: 35, column: 18, scope: !18)
!85 = !DILocation(line: 35, column: 27, scope: !18)
!86 = !DILocation(line: 35, column: 33, scope: !18)
!87 = !DILocation(line: 35, column: 31, scope: !18)
!88 = !DILocation(line: 35, column: 44, scope: !18)
!89 = !DILocation(line: 35, column: 42, scope: !18)
!90 = !DILocation(line: 35, column: 49, scope: !18)
!91 = !DILocation(line: 35, column: 26, scope: !18)
!92 = !DILocation(line: 36, column: 17, scope: !18)
!93 = !DILocation(line: 36, column: 23, scope: !18)
!94 = !DILocation(line: 36, column: 5, scope: !18)
!95 = !DILocation(line: 38, column: 5, scope: !18)
!96 = !DILocation(line: 38, column: 14, scope: !18)
!97 = !DILocation(line: 38, column: 21, scope: !18)
!98 = !DILocation(line: 38, column: 19, scope: !18)
!99 = !DILocation(line: 38, column: 12, scope: !18)
!100 = !DILocation(line: 38, column: 24, scope: !18)
!101 = !DILocation(line: 39, column: 21, scope: !102)
!102 = distinct !DILexicalBlock(scope: !18, file: !1, line: 38, column: 30)
!103 = !DILocation(line: 39, column: 25, scope: !102)
!104 = !DILocation(line: 39, column: 23, scope: !102)
!105 = !DILocation(line: 39, column: 9, scope: !102)
!106 = !DILocation(line: 40, column: 10, scope: !102)
!107 = distinct !{!107, !95, !108, !109}
!108 = !DILocation(line: 41, column: 5, scope: !18)
!109 = !{!"llvm.loop.mustprogress"}
!110 = !DILocation(line: 43, column: 9, scope: !111)
!111 = distinct !DILexicalBlock(scope: !18, file: !1, line: 43, column: 9)
!112 = !DILocation(line: 43, column: 17, scope: !111)
!113 = !DILocation(line: 43, column: 11, scope: !111)
!114 = !DILocation(line: 43, column: 9, scope: !18)
!115 = !DILocalVariable(name: "move_dest_offset", scope: !116, file: !1, line: 44, type: !24)
!116 = distinct !DILexicalBlock(scope: !111, file: !1, line: 43, column: 24)
!117 = !DILocation(line: 44, column: 22, scope: !116)
!118 = !DILocation(line: 44, column: 45, scope: !116)
!119 = !DILocation(line: 44, column: 53, scope: !116)
!120 = !DILocation(line: 44, column: 51, scope: !116)
!121 = !DILocalVariable(name: "move_size", scope: !116, file: !1, line: 45, type: !24)
!122 = !DILocation(line: 45, column: 22, scope: !116)
!123 = !DILocation(line: 45, column: 34, scope: !116)
!124 = !DILocation(line: 45, column: 36, scope: !116)
!125 = !DILocation(line: 47, column: 9, scope: !116)
!126 = !DILocation(line: 48, column: 9, scope: !116)
!127 = !DILocation(line: 50, column: 17, scope: !116)
!128 = !DILocation(line: 50, column: 24, scope: !116)
!129 = !DILocation(line: 50, column: 22, scope: !116)
!130 = !DILocation(line: 50, column: 42, scope: !116)
!131 = !DILocation(line: 50, column: 48, scope: !116)
!132 = !DILocation(line: 50, column: 9, scope: !116)
!133 = !DILocation(line: 51, column: 16, scope: !116)
!134 = !DILocation(line: 51, column: 27, scope: !116)
!135 = !DILocation(line: 51, column: 9, scope: !116)
!136 = !DILocation(line: 52, column: 5, scope: !116)
!137 = !DILocation(line: 54, column: 10, scope: !18)
!138 = !DILocation(line: 54, column: 5, scope: !18)
!139 = !DILocation(line: 55, column: 5, scope: !18)
!140 = distinct !DISubprogram(name: "memmove", scope: !141, file: !141, line: 12, type: !142, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !6, retainedNodes: !22)
!141 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!142 = !DISubroutineType(types: !143)
!143 = !{!5, !5, !144, !146}
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!146 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !147, line: 46, baseType: !148)
!147 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!148 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!149 = !DILocalVariable(name: "dst", arg: 1, scope: !140, file: !141, line: 12, type: !5)
!150 = !DILocation(line: 12, column: 21, scope: !140)
!151 = !DILocalVariable(name: "src", arg: 2, scope: !140, file: !141, line: 12, type: !144)
!152 = !DILocation(line: 12, column: 38, scope: !140)
!153 = !DILocalVariable(name: "count", arg: 3, scope: !140, file: !141, line: 12, type: !146)
!154 = !DILocation(line: 12, column: 50, scope: !140)
!155 = !DILocalVariable(name: "a", scope: !140, file: !141, line: 13, type: !3)
!156 = !DILocation(line: 13, column: 9, scope: !140)
!157 = !DILocation(line: 13, column: 13, scope: !140)
!158 = !DILocalVariable(name: "b", scope: !140, file: !141, line: 14, type: !159)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!161 = !DILocation(line: 14, column: 15, scope: !140)
!162 = !DILocation(line: 14, column: 19, scope: !140)
!163 = !DILocation(line: 16, column: 7, scope: !164)
!164 = distinct !DILexicalBlock(scope: !140, file: !141, line: 16, column: 7)
!165 = !DILocation(line: 16, column: 14, scope: !164)
!166 = !DILocation(line: 16, column: 11, scope: !164)
!167 = !DILocation(line: 16, column: 7, scope: !140)
!168 = !DILocation(line: 17, column: 12, scope: !164)
!169 = !DILocation(line: 17, column: 5, scope: !164)
!170 = !DILocation(line: 19, column: 7, scope: !171)
!171 = distinct !DILexicalBlock(scope: !140, file: !141, line: 19, column: 7)
!172 = !DILocation(line: 19, column: 13, scope: !171)
!173 = !DILocation(line: 19, column: 11, scope: !171)
!174 = !DILocation(line: 19, column: 7, scope: !140)
!175 = !DILocation(line: 20, column: 17, scope: !176)
!176 = distinct !DILexicalBlock(scope: !171, file: !141, line: 19, column: 18)
!177 = !DILocation(line: 20, column: 5, scope: !176)
!178 = !DILocation(line: 21, column: 16, scope: !176)
!179 = !DILocation(line: 21, column: 14, scope: !176)
!180 = !DILocation(line: 21, column: 9, scope: !176)
!181 = !DILocation(line: 21, column: 12, scope: !176)
!182 = distinct !{!182, !177, !178, !109}
!183 = !DILocation(line: 23, column: 10, scope: !184)
!184 = distinct !DILexicalBlock(scope: !171, file: !141, line: 22, column: 10)
!185 = !DILocation(line: 23, column: 16, scope: !184)
!186 = !DILocation(line: 23, column: 7, scope: !184)
!187 = !DILocation(line: 24, column: 10, scope: !184)
!188 = !DILocation(line: 24, column: 16, scope: !184)
!189 = !DILocation(line: 24, column: 7, scope: !184)
!190 = !DILocation(line: 25, column: 5, scope: !184)
!191 = !DILocation(line: 25, column: 17, scope: !184)
!192 = !DILocation(line: 26, column: 16, scope: !184)
!193 = !DILocation(line: 26, column: 14, scope: !184)
!194 = !DILocation(line: 26, column: 9, scope: !184)
!195 = !DILocation(line: 26, column: 12, scope: !184)
!196 = distinct !{!196, !190, !192, !109}
!197 = !DILocation(line: 29, column: 10, scope: !140)
!198 = !DILocation(line: 29, column: 3, scope: !140)
!199 = !DILocation(line: 30, column: 1, scope: !140)
!200 = distinct !DISubprogram(name: "memset", scope: !201, file: !201, line: 12, type: !202, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !8, retainedNodes: !22)
!201 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!202 = !DISubroutineType(types: !203)
!203 = !{!5, !5, !21, !146}
!204 = !DILocalVariable(name: "dst", arg: 1, scope: !200, file: !201, line: 12, type: !5)
!205 = !DILocation(line: 12, column: 20, scope: !200)
!206 = !DILocalVariable(name: "s", arg: 2, scope: !200, file: !201, line: 12, type: !21)
!207 = !DILocation(line: 12, column: 29, scope: !200)
!208 = !DILocalVariable(name: "count", arg: 3, scope: !200, file: !201, line: 12, type: !146)
!209 = !DILocation(line: 12, column: 39, scope: !200)
!210 = !DILocalVariable(name: "a", scope: !200, file: !201, line: 13, type: !3)
!211 = !DILocation(line: 13, column: 9, scope: !200)
!212 = !DILocation(line: 13, column: 13, scope: !200)
!213 = !DILocation(line: 14, column: 3, scope: !200)
!214 = !DILocation(line: 14, column: 15, scope: !200)
!215 = !DILocation(line: 14, column: 18, scope: !200)
!216 = !DILocation(line: 15, column: 12, scope: !200)
!217 = !DILocation(line: 15, column: 7, scope: !200)
!218 = !DILocation(line: 15, column: 10, scope: !200)
!219 = distinct !{!219, !213, !216, !109}
!220 = !DILocation(line: 16, column: 10, scope: !200)
!221 = !DILocation(line: 16, column: 3, scope: !200)

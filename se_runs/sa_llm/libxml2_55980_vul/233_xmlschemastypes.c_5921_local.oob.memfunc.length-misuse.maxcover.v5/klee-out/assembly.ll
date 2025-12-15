; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/233_xmlschemastypes.c_5921_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/233_xmlschemastypes.c_5921_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.xmlSchemaDecimal = type { i64, i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"dec\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [163 x i8] c"((diff >= 0) && (diff < buf_size) && (diff + 1 < buf_size) && (dec.frac + 1 <= buf_size - (diff + 1)) && (dec.frac + 1 <= buf_size - diff)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [114 x i8] c"se_runs/sa_llm/libxml2_55980_vul/233_xmlschemastypes.c_5921_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !15 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.xmlSchemaDecimal, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaDecimal* %2, metadata !20, metadata !DIExpression()), !dbg !29
  %8 = bitcast %struct.xmlSchemaDecimal* %2 to i8*, !dbg !30
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 16, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0)), !dbg !31
  %9 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !32
  %10 = load i32, i32* %9, align 8, !dbg !32
  %11 = icmp ne i32 %10, 0, !dbg !33
  %12 = zext i1 %11 to i32, !dbg !33
  %13 = sext i32 %12 to i64, !dbg !34
  call void @klee_assume(i64 noundef %13), !dbg !35
  %14 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !36
  %15 = load i32, i32* %14, align 8, !dbg !36
  %16 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 2, !dbg !37
  %17 = load i32, i32* %16, align 4, !dbg !37
  %18 = icmp ne i32 %15, %17, !dbg !38
  %19 = zext i1 %18 to i32, !dbg !38
  %20 = sext i32 %19 to i64, !dbg !39
  call void @klee_assume(i64 noundef %20), !dbg !40
  %21 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 2, !dbg !41
  %22 = load i32, i32* %21, align 4, !dbg !41
  %23 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !42
  %24 = load i32, i32* %23, align 8, !dbg !42
  %25 = icmp ugt i32 %22, %24, !dbg !43
  %26 = zext i1 %25 to i32, !dbg !43
  %27 = sext i32 %26 to i64, !dbg !44
  call void @klee_assume(i64 noundef %27), !dbg !45
  %28 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 2, !dbg !46
  %29 = load i32, i32* %28, align 4, !dbg !46
  %30 = icmp ult i32 %29, 1024, !dbg !47
  %31 = zext i1 %30 to i32, !dbg !47
  %32 = sext i32 %31 to i64, !dbg !48
  call void @klee_assume(i64 noundef %32), !dbg !49
  %33 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !50
  %34 = load i32, i32* %33, align 8, !dbg !50
  %35 = icmp ult i32 %34, 1024, !dbg !51
  %36 = zext i1 %35 to i32, !dbg !51
  %37 = sext i32 %36 to i64, !dbg !52
  call void @klee_assume(i64 noundef %37), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %3, metadata !54, metadata !DIExpression()), !dbg !55
  %38 = bitcast i32* %3 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %38, i64 noundef 4, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %39 = load i32, i32* %3, align 4, !dbg !58
  %40 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 2, !dbg !59
  %41 = load i32, i32* %40, align 4, !dbg !59
  %42 = add i32 %41, 2, !dbg !60
  %43 = icmp uge i32 %39, %42, !dbg !61
  %44 = zext i1 %43 to i32, !dbg !61
  %45 = sext i32 %44 to i64, !dbg !58
  call void @klee_assume(i64 noundef %45), !dbg !62
  %46 = load i32, i32* %3, align 4, !dbg !63
  %47 = icmp ult i32 %46, 2048, !dbg !64
  %48 = zext i1 %47 to i32, !dbg !64
  %49 = sext i32 %48 to i64, !dbg !63
  call void @klee_assume(i64 noundef %49), !dbg !65
  call void @llvm.dbg.declare(metadata i8** %4, metadata !66, metadata !DIExpression()), !dbg !67
  %50 = load i32, i32* %3, align 4, !dbg !68
  %51 = zext i32 %50 to i64, !dbg !68
  %52 = call noalias i8* @malloc(i64 noundef %51) #7, !dbg !69
  store i8* %52, i8** %4, align 8, !dbg !67
  %53 = load i8*, i8** %4, align 8, !dbg !70
  %54 = icmp ne i8* %53, null, !dbg !70
  br i1 %54, label %56, label %55, !dbg !72

55:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !73
  br label %132, !dbg !73

56:                                               ; preds = %0
  call void @llvm.dbg.declare(metadata i32* %5, metadata !74, metadata !DIExpression()), !dbg !75
  %57 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 2, !dbg !76
  %58 = load i32, i32* %57, align 4, !dbg !76
  store i32 %58, i32* %5, align 4, !dbg !75
  %59 = load i32, i32* %5, align 4, !dbg !77
  %60 = load i32, i32* %3, align 4, !dbg !78
  %61 = sub i32 %60, 1, !dbg !79
  %62 = icmp ule i32 %59, %61, !dbg !80
  %63 = zext i1 %62 to i32, !dbg !80
  %64 = sext i32 %63 to i64, !dbg !77
  call void @klee_assume(i64 noundef %64), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %6, metadata !82, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %6, align 4, !dbg !84
  br label %65, !dbg !85

65:                                               ; preds = %78, %56
  %66 = load i32, i32* %6, align 4, !dbg !86
  %67 = load i32, i32* %5, align 4, !dbg !88
  %68 = icmp ult i32 %66, %67, !dbg !89
  br i1 %68, label %69, label %81, !dbg !90

69:                                               ; preds = %65
  %70 = load i32, i32* %6, align 4, !dbg !91
  %71 = urem i32 %70, 10, !dbg !93
  %72 = add i32 48, %71, !dbg !94
  %73 = trunc i32 %72 to i8, !dbg !95
  %74 = load i8*, i8** %4, align 8, !dbg !96
  %75 = load i32, i32* %6, align 4, !dbg !97
  %76 = zext i32 %75 to i64, !dbg !96
  %77 = getelementptr inbounds i8, i8* %74, i64 %76, !dbg !96
  store i8 %73, i8* %77, align 1, !dbg !98
  br label %78, !dbg !99

78:                                               ; preds = %69
  %79 = load i32, i32* %6, align 4, !dbg !100
  %80 = add i32 %79, 1, !dbg !100
  store i32 %80, i32* %6, align 4, !dbg !100
  br label %65, !dbg !101, !llvm.loop !102

81:                                               ; preds = %65
  %82 = load i8*, i8** %4, align 8, !dbg !105
  %83 = load i32, i32* %5, align 4, !dbg !106
  %84 = zext i32 %83 to i64, !dbg !105
  %85 = getelementptr inbounds i8, i8* %82, i64 %84, !dbg !105
  store i8 0, i8* %85, align 1, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %7, metadata !108, metadata !DIExpression()), !dbg !109
  %86 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 2, !dbg !110
  %87 = load i32, i32* %86, align 4, !dbg !110
  %88 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !111
  %89 = load i32, i32* %88, align 8, !dbg !111
  %90 = sub i32 %87, %89, !dbg !112
  store i32 %90, i32* %7, align 4, !dbg !109
  %91 = load i32, i32* %7, align 4, !dbg !113
  %92 = icmp sge i32 %91, 0, !dbg !113
  br i1 %92, label %93, label %121, !dbg !113

93:                                               ; preds = %81
  %94 = load i32, i32* %7, align 4, !dbg !113
  %95 = load i32, i32* %3, align 4, !dbg !113
  %96 = icmp ult i32 %94, %95, !dbg !113
  br i1 %96, label %97, label %121, !dbg !113

97:                                               ; preds = %93
  %98 = load i32, i32* %7, align 4, !dbg !113
  %99 = add nsw i32 %98, 1, !dbg !113
  %100 = load i32, i32* %3, align 4, !dbg !113
  %101 = icmp ult i32 %99, %100, !dbg !113
  br i1 %101, label %102, label %121, !dbg !113

102:                                              ; preds = %97
  %103 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !113
  %104 = load i32, i32* %103, align 8, !dbg !113
  %105 = add i32 %104, 1, !dbg !113
  %106 = load i32, i32* %3, align 4, !dbg !113
  %107 = load i32, i32* %7, align 4, !dbg !113
  %108 = add nsw i32 %107, 1, !dbg !113
  %109 = sub i32 %106, %108, !dbg !113
  %110 = icmp ule i32 %105, %109, !dbg !113
  br i1 %110, label %111, label %121, !dbg !113

111:                                              ; preds = %102
  %112 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %2, i32 0, i32 1, !dbg !113
  %113 = load i32, i32* %112, align 8, !dbg !113
  %114 = add i32 %113, 1, !dbg !113
  %115 = load i32, i32* %3, align 4, !dbg !113
  %116 = load i32, i32* %7, align 4, !dbg !113
  %117 = sub i32 %115, %116, !dbg !113
  %118 = icmp ule i32 %114, %117, !dbg !113
  br i1 %118, label %119, label %121, !dbg !113

119:                                              ; preds = %111
  br i1 true, label %120, label %121, !dbg !113

120:                                              ; preds = %119
  br label %123, !dbg !113

121:                                              ; preds = %119, %111, %102, %97, %93, %81
  %122 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([163 x i8], [163 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 71, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !113
  br label %123, !dbg !113

123:                                              ; preds = %121, %120
  %124 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([114 x i8], [114 x i8]* @.str.4, i64 0, i64 0), i32 noundef 74, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !114
  %125 = load i8*, i8** %4, align 8, !dbg !115
  %126 = bitcast %struct.xmlSchemaDecimal* %2 to { i64, i64 }*, !dbg !116
  %127 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 0, !dbg !116
  %128 = load i64, i64* %127, align 8, !dbg !116
  %129 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %126, i32 0, i32 1, !dbg !116
  %130 = load i64, i64* %129, align 8, !dbg !116
  call void @target_function(i8* noundef %125, i64 %128, i64 %130), !dbg !116
  %131 = load i8*, i8** %4, align 8, !dbg !117
  call void @free(i8* noundef %131) #7, !dbg !118
  store i32 0, i32* %1, align 4, !dbg !119
  br label %132, !dbg !119

132:                                              ; preds = %123, %55
  %133 = load i32, i32* %1, align 4, !dbg !120
  ret i32 %133, !dbg !120
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @target_function(i8* noundef %0, i64 %1, i64 %2) #0 !dbg !121 {
  %4 = alloca %struct.xmlSchemaDecimal, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = bitcast %struct.xmlSchemaDecimal* %4 to { i64, i64 }*
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  store i64 %1, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  store i64 %2, i64* %10, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !124, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata %struct.xmlSchemaDecimal* %4, metadata !126, metadata !DIExpression()), !dbg !127
  %11 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 1, !dbg !128
  %12 = load i32, i32* %11, align 8, !dbg !128
  %13 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 2, !dbg !130
  %14 = load i32, i32* %13, align 4, !dbg !130
  %15 = icmp ne i32 %12, %14, !dbg !131
  br i1 %15, label %16, label %40, !dbg !132

16:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %6, metadata !133, metadata !DIExpression()), !dbg !135
  %17 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 2, !dbg !136
  %18 = load i32, i32* %17, align 4, !dbg !136
  %19 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 1, !dbg !137
  %20 = load i32, i32* %19, align 8, !dbg !137
  %21 = sub i32 %18, %20, !dbg !138
  store i32 %21, i32* %6, align 4, !dbg !135
  %22 = load i8*, i8** %5, align 8, !dbg !139
  %23 = load i32, i32* %6, align 4, !dbg !140
  %24 = sext i32 %23 to i64, !dbg !141
  %25 = getelementptr inbounds i8, i8* %22, i64 %24, !dbg !141
  %26 = getelementptr inbounds i8, i8* %25, i64 1, !dbg !142
  %27 = load i8*, i8** %5, align 8, !dbg !143
  %28 = load i32, i32* %6, align 4, !dbg !144
  %29 = sext i32 %28 to i64, !dbg !145
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !145
  %31 = getelementptr inbounds %struct.xmlSchemaDecimal, %struct.xmlSchemaDecimal* %4, i32 0, i32 1, !dbg !146
  %32 = load i32, i32* %31, align 8, !dbg !146
  %33 = add i32 %32, 1, !dbg !147
  %34 = zext i32 %33 to i64, !dbg !148
  %35 = call i8* @memmove(i8* %26, i8* %30, i64 %34), !dbg !149
  %36 = load i8*, i8** %5, align 8, !dbg !150
  %37 = load i32, i32* %6, align 4, !dbg !151
  %38 = sext i32 %37 to i64, !dbg !150
  %39 = getelementptr inbounds i8, i8* %36, i64 %38, !dbg !150
  store i8 46, i8* %39, align 1, !dbg !152
  br label %53, !dbg !153

40:                                               ; preds = %3
  call void @llvm.dbg.declare(metadata i32* %7, metadata !154, metadata !DIExpression()), !dbg !156
  store i32 0, i32* %7, align 4, !dbg !156
  br label %41, !dbg !157

41:                                               ; preds = %49, %40
  %42 = load i8*, i8** %5, align 8, !dbg !158
  %43 = load i32, i32* %7, align 4, !dbg !159
  %44 = zext i32 %43 to i64, !dbg !160
  %45 = getelementptr inbounds i8, i8* %42, i64 %44, !dbg !160
  %46 = load i8, i8* %45, align 1, !dbg !161
  %47 = sext i8 %46 to i32, !dbg !161
  %48 = icmp ne i32 %47, 0, !dbg !162
  br i1 %48, label %49, label %52, !dbg !157

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4, !dbg !163
  %51 = add i32 %50, 1, !dbg !163
  store i32 %51, i32* %7, align 4, !dbg !163
  br label %41, !dbg !157, !llvm.loop !164

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %52, %16
  ret void, !dbg !165
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memmove.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memmove(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !166 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  store i8* %0, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !175, metadata !DIExpression()), !dbg !176
  store i8* %1, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !177, metadata !DIExpression()), !dbg !178
  store i64 %2, i64* %7, align 8
  call void @llvm.dbg.declare(metadata i64* %7, metadata !179, metadata !DIExpression()), !dbg !180
  call void @llvm.dbg.declare(metadata i8** %8, metadata !181, metadata !DIExpression()), !dbg !182
  %10 = load i8*, i8** %5, align 8, !dbg !183
  store i8* %10, i8** %8, align 8, !dbg !182
  call void @llvm.dbg.declare(metadata i8** %9, metadata !184, metadata !DIExpression()), !dbg !187
  %11 = load i8*, i8** %6, align 8, !dbg !188
  store i8* %11, i8** %9, align 8, !dbg !187
  %12 = load i8*, i8** %6, align 8, !dbg !189
  %13 = load i8*, i8** %5, align 8, !dbg !191
  %14 = icmp eq i8* %12, %13, !dbg !192
  br i1 %14, label %15, label %17, !dbg !193

15:                                               ; preds = %3
  %16 = load i8*, i8** %5, align 8, !dbg !194
  store i8* %16, i8** %4, align 8, !dbg !195
  br label %52, !dbg !195

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8, !dbg !196
  %19 = load i8*, i8** %5, align 8, !dbg !198
  %20 = icmp ugt i8* %18, %19, !dbg !199
  br i1 %20, label %21, label %31, !dbg !200

21:                                               ; preds = %17, %25
  %22 = load i64, i64* %7, align 8, !dbg !201
  %23 = add i64 %22, -1, !dbg !201
  store i64 %23, i64* %7, align 8, !dbg !201
  %24 = icmp ne i64 %22, 0, !dbg !203
  br i1 %24, label %25, label %50, !dbg !203

25:                                               ; preds = %21
  %26 = load i8*, i8** %9, align 8, !dbg !204
  %27 = getelementptr inbounds i8, i8* %26, i32 1, !dbg !204
  store i8* %27, i8** %9, align 8, !dbg !204
  %28 = load i8, i8* %26, align 1, !dbg !205
  %29 = load i8*, i8** %8, align 8, !dbg !206
  %30 = getelementptr inbounds i8, i8* %29, i32 1, !dbg !206
  store i8* %30, i8** %8, align 8, !dbg !206
  store i8 %28, i8* %29, align 1, !dbg !207
  br label %21, !dbg !203, !llvm.loop !208

31:                                               ; preds = %17
  %32 = load i64, i64* %7, align 8, !dbg !209
  %33 = sub i64 %32, 1, !dbg !211
  %34 = load i8*, i8** %8, align 8, !dbg !212
  %35 = getelementptr inbounds i8, i8* %34, i64 %33, !dbg !212
  store i8* %35, i8** %8, align 8, !dbg !212
  %36 = load i64, i64* %7, align 8, !dbg !213
  %37 = sub i64 %36, 1, !dbg !214
  %38 = load i8*, i8** %9, align 8, !dbg !215
  %39 = getelementptr inbounds i8, i8* %38, i64 %37, !dbg !215
  store i8* %39, i8** %9, align 8, !dbg !215
  br label %40, !dbg !216

40:                                               ; preds = %44, %31
  %41 = load i64, i64* %7, align 8, !dbg !217
  %42 = add i64 %41, -1, !dbg !217
  store i64 %42, i64* %7, align 8, !dbg !217
  %43 = icmp ne i64 %41, 0, !dbg !216
  br i1 %43, label %44, label %50, !dbg !216

44:                                               ; preds = %40
  %45 = load i8*, i8** %9, align 8, !dbg !218
  %46 = getelementptr inbounds i8, i8* %45, i32 -1, !dbg !218
  store i8* %46, i8** %9, align 8, !dbg !218
  %47 = load i8, i8* %45, align 1, !dbg !219
  %48 = load i8*, i8** %8, align 8, !dbg !220
  %49 = getelementptr inbounds i8, i8* %48, i32 -1, !dbg !220
  store i8* %49, i8** %8, align 8, !dbg !220
  store i8 %47, i8* %48, align 1, !dbg !221
  br label %40, !dbg !216, !llvm.loop !222

50:                                               ; preds = %40, %21
  %51 = load i8*, i8** %5, align 8, !dbg !223
  store i8* %51, i8** %4, align 8, !dbg !224
  br label %52, !dbg !224

52:                                               ; preds = %50, %15
  %53 = load i8*, i8** %4, align 8, !dbg !225
  ret i8* %53, !dbg !225
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !5}
!llvm.module.flags = !{!7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14, !14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/233_xmlschemastypes.c_5921_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "b9f55548f41552979f631a671745b5be")
!2 = !{!3}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = distinct !DICompileUnit(language: DW_LANG_C99, file: !6, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!6 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!7 = !{i32 7, !"Dwarf Version", i32 5}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{i32 7, !"PIC Level", i32 2}
!11 = !{i32 7, !"PIE Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"Ubuntu clang version 14.0.6"}
!15 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 31, type: !16, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{}
!20 = !DILocalVariable(name: "dec", scope: !15, file: !1, line: 33, type: !21)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlSchemaDecimal", file: !1, line: 14, baseType: !22)
!22 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 10, size: 128, elements: !23)
!23 = !{!24, !26, !28}
!24 = !DIDerivedType(tag: DW_TAG_member, name: "lo", scope: !22, file: !1, line: 11, baseType: !25, size: 64)
!25 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "frac", scope: !22, file: !1, line: 12, baseType: !27, size: 32, offset: 64)
!27 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!28 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !22, file: !1, line: 13, baseType: !27, size: 32, offset: 96)
!29 = !DILocation(line: 33, column: 22, scope: !15)
!30 = !DILocation(line: 34, column: 24, scope: !15)
!31 = !DILocation(line: 34, column: 5, scope: !15)
!32 = !DILocation(line: 37, column: 21, scope: !15)
!33 = !DILocation(line: 37, column: 26, scope: !15)
!34 = !DILocation(line: 37, column: 17, scope: !15)
!35 = !DILocation(line: 37, column: 5, scope: !15)
!36 = !DILocation(line: 38, column: 21, scope: !15)
!37 = !DILocation(line: 38, column: 33, scope: !15)
!38 = !DILocation(line: 38, column: 26, scope: !15)
!39 = !DILocation(line: 38, column: 17, scope: !15)
!40 = !DILocation(line: 38, column: 5, scope: !15)
!41 = !DILocation(line: 39, column: 21, scope: !15)
!42 = !DILocation(line: 39, column: 33, scope: !15)
!43 = !DILocation(line: 39, column: 27, scope: !15)
!44 = !DILocation(line: 39, column: 17, scope: !15)
!45 = !DILocation(line: 39, column: 5, scope: !15)
!46 = !DILocation(line: 40, column: 21, scope: !15)
!47 = !DILocation(line: 40, column: 27, scope: !15)
!48 = !DILocation(line: 40, column: 17, scope: !15)
!49 = !DILocation(line: 40, column: 5, scope: !15)
!50 = !DILocation(line: 41, column: 21, scope: !15)
!51 = !DILocation(line: 41, column: 26, scope: !15)
!52 = !DILocation(line: 41, column: 17, scope: !15)
!53 = !DILocation(line: 41, column: 5, scope: !15)
!54 = !DILocalVariable(name: "buf_size", scope: !15, file: !1, line: 44, type: !27)
!55 = !DILocation(line: 44, column: 18, scope: !15)
!56 = !DILocation(line: 45, column: 24, scope: !15)
!57 = !DILocation(line: 45, column: 5, scope: !15)
!58 = !DILocation(line: 46, column: 17, scope: !15)
!59 = !DILocation(line: 46, column: 33, scope: !15)
!60 = !DILocation(line: 46, column: 39, scope: !15)
!61 = !DILocation(line: 46, column: 26, scope: !15)
!62 = !DILocation(line: 46, column: 5, scope: !15)
!63 = !DILocation(line: 47, column: 17, scope: !15)
!64 = !DILocation(line: 47, column: 26, scope: !15)
!65 = !DILocation(line: 47, column: 5, scope: !15)
!66 = !DILocalVariable(name: "offs", scope: !15, file: !1, line: 49, type: !3)
!67 = !DILocation(line: 49, column: 11, scope: !15)
!68 = !DILocation(line: 49, column: 33, scope: !15)
!69 = !DILocation(line: 49, column: 26, scope: !15)
!70 = !DILocation(line: 50, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !15, file: !1, line: 50, column: 9)
!72 = !DILocation(line: 50, column: 9, scope: !15)
!73 = !DILocation(line: 50, column: 16, scope: !71)
!74 = !DILocalVariable(name: "written", scope: !15, file: !1, line: 54, type: !27)
!75 = !DILocation(line: 54, column: 18, scope: !15)
!76 = !DILocation(line: 54, column: 32, scope: !15)
!77 = !DILocation(line: 55, column: 17, scope: !15)
!78 = !DILocation(line: 55, column: 28, scope: !15)
!79 = !DILocation(line: 55, column: 37, scope: !15)
!80 = !DILocation(line: 55, column: 25, scope: !15)
!81 = !DILocation(line: 55, column: 5, scope: !15)
!82 = !DILocalVariable(name: "i", scope: !83, file: !1, line: 56, type: !27)
!83 = distinct !DILexicalBlock(scope: !15, file: !1, line: 56, column: 5)
!84 = !DILocation(line: 56, column: 23, scope: !83)
!85 = !DILocation(line: 56, column: 10, scope: !83)
!86 = !DILocation(line: 56, column: 30, scope: !87)
!87 = distinct !DILexicalBlock(scope: !83, file: !1, line: 56, column: 5)
!88 = !DILocation(line: 56, column: 34, scope: !87)
!89 = !DILocation(line: 56, column: 32, scope: !87)
!90 = !DILocation(line: 56, column: 5, scope: !83)
!91 = !DILocation(line: 57, column: 26, scope: !92)
!92 = distinct !DILexicalBlock(scope: !87, file: !1, line: 56, column: 48)
!93 = !DILocation(line: 57, column: 28, scope: !92)
!94 = !DILocation(line: 57, column: 23, scope: !92)
!95 = !DILocation(line: 57, column: 19, scope: !92)
!96 = !DILocation(line: 57, column: 9, scope: !92)
!97 = !DILocation(line: 57, column: 14, scope: !92)
!98 = !DILocation(line: 57, column: 17, scope: !92)
!99 = !DILocation(line: 58, column: 5, scope: !92)
!100 = !DILocation(line: 56, column: 44, scope: !87)
!101 = !DILocation(line: 56, column: 5, scope: !87)
!102 = distinct !{!102, !90, !103, !104}
!103 = !DILocation(line: 58, column: 5, scope: !83)
!104 = !{!"llvm.loop.mustprogress"}
!105 = !DILocation(line: 59, column: 5, scope: !15)
!106 = !DILocation(line: 59, column: 10, scope: !15)
!107 = !DILocation(line: 59, column: 19, scope: !15)
!108 = !DILocalVariable(name: "diff", scope: !15, file: !1, line: 64, type: !18)
!109 = !DILocation(line: 64, column: 9, scope: !15)
!110 = !DILocation(line: 64, column: 20, scope: !15)
!111 = !DILocation(line: 64, column: 32, scope: !15)
!112 = !DILocation(line: 64, column: 26, scope: !15)
!113 = !DILocation(line: 65, column: 5, scope: !15)
!114 = !DILocation(line: 74, column: 5, scope: !15)
!115 = !DILocation(line: 77, column: 21, scope: !15)
!116 = !DILocation(line: 77, column: 5, scope: !15)
!117 = !DILocation(line: 79, column: 10, scope: !15)
!118 = !DILocation(line: 79, column: 5, scope: !15)
!119 = !DILocation(line: 80, column: 5, scope: !15)
!120 = !DILocation(line: 81, column: 1, scope: !15)
!121 = distinct !DISubprogram(name: "target_function", scope: !1, file: !1, line: 17, type: !122, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !3, !21}
!124 = !DILocalVariable(name: "offs", arg: 1, scope: !121, file: !1, line: 17, type: !3)
!125 = !DILocation(line: 17, column: 35, scope: !121)
!126 = !DILocalVariable(name: "dec", arg: 2, scope: !121, file: !1, line: 17, type: !21)
!127 = !DILocation(line: 17, column: 58, scope: !121)
!128 = !DILocation(line: 18, column: 13, scope: !129)
!129 = distinct !DILexicalBlock(scope: !121, file: !1, line: 18, column: 9)
!130 = !DILocation(line: 18, column: 25, scope: !129)
!131 = !DILocation(line: 18, column: 18, scope: !129)
!132 = !DILocation(line: 18, column: 9, scope: !121)
!133 = !DILocalVariable(name: "diff", scope: !134, file: !1, line: 19, type: !18)
!134 = distinct !DILexicalBlock(scope: !129, file: !1, line: 18, column: 32)
!135 = !DILocation(line: 19, column: 13, scope: !134)
!136 = !DILocation(line: 19, column: 24, scope: !134)
!137 = !DILocation(line: 19, column: 36, scope: !134)
!138 = !DILocation(line: 19, column: 30, scope: !134)
!139 = !DILocation(line: 21, column: 17, scope: !134)
!140 = !DILocation(line: 21, column: 24, scope: !134)
!141 = !DILocation(line: 21, column: 22, scope: !134)
!142 = !DILocation(line: 21, column: 29, scope: !134)
!143 = !DILocation(line: 21, column: 34, scope: !134)
!144 = !DILocation(line: 21, column: 41, scope: !134)
!145 = !DILocation(line: 21, column: 39, scope: !134)
!146 = !DILocation(line: 21, column: 51, scope: !134)
!147 = !DILocation(line: 21, column: 56, scope: !134)
!148 = !DILocation(line: 21, column: 47, scope: !134)
!149 = !DILocation(line: 21, column: 9, scope: !134)
!150 = !DILocation(line: 22, column: 9, scope: !134)
!151 = !DILocation(line: 22, column: 14, scope: !134)
!152 = !DILocation(line: 22, column: 20, scope: !134)
!153 = !DILocation(line: 23, column: 5, scope: !134)
!154 = !DILocalVariable(name: "i", scope: !155, file: !1, line: 24, type: !27)
!155 = distinct !DILexicalBlock(scope: !129, file: !1, line: 23, column: 12)
!156 = !DILocation(line: 24, column: 22, scope: !155)
!157 = !DILocation(line: 26, column: 9, scope: !155)
!158 = !DILocation(line: 26, column: 18, scope: !155)
!159 = !DILocation(line: 26, column: 25, scope: !155)
!160 = !DILocation(line: 26, column: 23, scope: !155)
!161 = !DILocation(line: 26, column: 16, scope: !155)
!162 = !DILocation(line: 26, column: 28, scope: !155)
!163 = !DILocation(line: 27, column: 14, scope: !155)
!164 = distinct !{!164, !157, !163, !104}
!165 = !DILocation(line: 29, column: 1, scope: !121)
!166 = distinct !DISubprogram(name: "memmove", scope: !167, file: !167, line: 12, type: !168, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !5, retainedNodes: !19)
!167 = !DIFile(filename: "runtime/Freestanding/memmove.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "6cd27189cdce56ce74ae860a315e13f2")
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !170, !171, !173}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !174, line: 46, baseType: !25)
!174 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!175 = !DILocalVariable(name: "dst", arg: 1, scope: !166, file: !167, line: 12, type: !170)
!176 = !DILocation(line: 12, column: 21, scope: !166)
!177 = !DILocalVariable(name: "src", arg: 2, scope: !166, file: !167, line: 12, type: !171)
!178 = !DILocation(line: 12, column: 38, scope: !166)
!179 = !DILocalVariable(name: "count", arg: 3, scope: !166, file: !167, line: 12, type: !173)
!180 = !DILocation(line: 12, column: 50, scope: !166)
!181 = !DILocalVariable(name: "a", scope: !166, file: !167, line: 13, type: !3)
!182 = !DILocation(line: 13, column: 9, scope: !166)
!183 = !DILocation(line: 13, column: 13, scope: !166)
!184 = !DILocalVariable(name: "b", scope: !166, file: !167, line: 14, type: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!187 = !DILocation(line: 14, column: 15, scope: !166)
!188 = !DILocation(line: 14, column: 19, scope: !166)
!189 = !DILocation(line: 16, column: 7, scope: !190)
!190 = distinct !DILexicalBlock(scope: !166, file: !167, line: 16, column: 7)
!191 = !DILocation(line: 16, column: 14, scope: !190)
!192 = !DILocation(line: 16, column: 11, scope: !190)
!193 = !DILocation(line: 16, column: 7, scope: !166)
!194 = !DILocation(line: 17, column: 12, scope: !190)
!195 = !DILocation(line: 17, column: 5, scope: !190)
!196 = !DILocation(line: 19, column: 7, scope: !197)
!197 = distinct !DILexicalBlock(scope: !166, file: !167, line: 19, column: 7)
!198 = !DILocation(line: 19, column: 13, scope: !197)
!199 = !DILocation(line: 19, column: 11, scope: !197)
!200 = !DILocation(line: 19, column: 7, scope: !166)
!201 = !DILocation(line: 20, column: 17, scope: !202)
!202 = distinct !DILexicalBlock(scope: !197, file: !167, line: 19, column: 18)
!203 = !DILocation(line: 20, column: 5, scope: !202)
!204 = !DILocation(line: 21, column: 16, scope: !202)
!205 = !DILocation(line: 21, column: 14, scope: !202)
!206 = !DILocation(line: 21, column: 9, scope: !202)
!207 = !DILocation(line: 21, column: 12, scope: !202)
!208 = distinct !{!208, !203, !204, !104}
!209 = !DILocation(line: 23, column: 10, scope: !210)
!210 = distinct !DILexicalBlock(scope: !197, file: !167, line: 22, column: 10)
!211 = !DILocation(line: 23, column: 16, scope: !210)
!212 = !DILocation(line: 23, column: 7, scope: !210)
!213 = !DILocation(line: 24, column: 10, scope: !210)
!214 = !DILocation(line: 24, column: 16, scope: !210)
!215 = !DILocation(line: 24, column: 7, scope: !210)
!216 = !DILocation(line: 25, column: 5, scope: !210)
!217 = !DILocation(line: 25, column: 17, scope: !210)
!218 = !DILocation(line: 26, column: 16, scope: !210)
!219 = !DILocation(line: 26, column: 14, scope: !210)
!220 = !DILocation(line: 26, column: 9, scope: !210)
!221 = !DILocation(line: 26, column: 12, scope: !210)
!222 = distinct !{!222, !216, !218, !104}
!223 = !DILocation(line: 29, column: 10, scope: !166)
!224 = !DILocation(line: 29, column: 3, scope: !166)
!225 = !DILocation(line: 30, column: 1, scope: !166)

; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlCharEncodingHandler = type { i8* }

@.str = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.1 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"enc_alloc_fails\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"name_alloc_fails\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"icv_in_valid\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"icv_out_valid\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"ISO-8859-1\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !23 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !30, metadata !DIExpression()), !dbg !31
  %3 = load i64, i64* %2, align 8, !dbg !32
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !33
  ret i8* %4, !dbg !34
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !35 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !38, metadata !DIExpression()), !dbg !39
  %3 = load i8*, i8** %2, align 8, !dbg !40
  call void @free(i8* noundef %3) #9, !dbg !41
  ret void, !dbg !42
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMemStrdup(i8* noundef %0) #0 !dbg !43 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !48, metadata !DIExpression()), !dbg !49
  %6 = load i8*, i8** %3, align 8, !dbg !50
  %7 = icmp ne i8* %6, null, !dbg !50
  br i1 %7, label %9, label %8, !dbg !52

8:                                                ; preds = %1
  store i8* null, i8** %2, align 8, !dbg !53
  br label %24, !dbg !53

9:                                                ; preds = %1
  call void @llvm.dbg.declare(metadata i64* %4, metadata !54, metadata !DIExpression()), !dbg !55
  %10 = load i8*, i8** %3, align 8, !dbg !56
  %11 = call i64 @strlen(i8* noundef %10) #10, !dbg !57
  %12 = add i64 %11, 1, !dbg !58
  store i64 %12, i64* %4, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i8** %5, metadata !59, metadata !DIExpression()), !dbg !60
  %13 = load i64, i64* %4, align 8, !dbg !61
  %14 = call noalias i8* @malloc(i64 noundef %13) #9, !dbg !62
  store i8* %14, i8** %5, align 8, !dbg !60
  %15 = load i8*, i8** %5, align 8, !dbg !63
  %16 = icmp ne i8* %15, null, !dbg !63
  br i1 %16, label %17, label %22, !dbg !65

17:                                               ; preds = %9
  %18 = load i8*, i8** %5, align 8, !dbg !66
  %19 = load i8*, i8** %3, align 8, !dbg !67
  %20 = load i64, i64* %4, align 8, !dbg !68
  %21 = call i8* @memcpy(i8* %18, i8* %19, i64 %20), !dbg !69
  br label %22, !dbg !69

22:                                               ; preds = %17, %9
  %23 = load i8*, i8** %5, align 8, !dbg !70
  store i8* %23, i8** %2, align 8, !dbg !71
  br label %24, !dbg !71

24:                                               ; preds = %22, %8
  %25 = load i8*, i8** %2, align 8, !dbg !72
  ret i8* %25, !dbg !72
}

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !73 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlCharEncodingHandler*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %2, metadata !77, metadata !DIExpression()), !dbg !78
  %3 = call %struct._xmlCharEncodingHandler* @isolat1ToUTF8(), !dbg !79
  store %struct._xmlCharEncodingHandler* %3, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !78
  %4 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.1, i64 0, i64 0), i32 noundef 66, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !80
  %5 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !81
  %6 = icmp ne %struct._xmlCharEncodingHandler* %5, null, !dbg !81
  br i1 %6, label %7, label %19, !dbg !83

7:                                                ; preds = %0
  %8 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !84
  %9 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %8, i32 0, i32 0, !dbg !87
  %10 = load i8*, i8** %9, align 8, !dbg !87
  %11 = icmp ne i8* %10, null, !dbg !84
  br i1 %11, label %12, label %16, !dbg !88

12:                                               ; preds = %7
  %13 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !89
  %14 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %13, i32 0, i32 0, !dbg !90
  %15 = load i8*, i8** %14, align 8, !dbg !90
  call void @free(i8* noundef %15) #9, !dbg !91
  br label %16, !dbg !91

16:                                               ; preds = %12, %7
  %17 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %2, align 8, !dbg !92
  %18 = bitcast %struct._xmlCharEncodingHandler* %17 to i8*, !dbg !92
  call void @free(i8* noundef %18) #9, !dbg !93
  br label %19, !dbg !94

19:                                               ; preds = %16, %0
  ret i32 0, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlCharEncodingHandler* @isolat1ToUTF8() #0 !dbg !96 {
  %1 = alloca %struct._xmlCharEncodingHandler*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct._xmlCharEncodingHandler*, align 8
  call void @llvm.dbg.declare(metadata i32* %2, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %3, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i32* %4, metadata !103, metadata !DIExpression()), !dbg !104
  call void @llvm.dbg.declare(metadata i32* %5, metadata !105, metadata !DIExpression()), !dbg !106
  %7 = bitcast i32* %2 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 4, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0)), !dbg !108
  %8 = bitcast i32* %3 to i8*, !dbg !109
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)), !dbg !110
  %9 = bitcast i32* %4 to i8*, !dbg !111
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0)), !dbg !112
  %10 = bitcast i32* %5 to i8*, !dbg !113
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0)), !dbg !114
  %11 = load i32, i32* %4, align 4, !dbg !115
  %12 = icmp sge i32 %11, 0, !dbg !116
  %13 = zext i1 %12 to i32, !dbg !116
  %14 = sext i32 %13 to i64, !dbg !115
  call void @klee_assume(i64 noundef %14), !dbg !117
  %15 = load i32, i32* %5, align 4, !dbg !118
  %16 = icmp sge i32 %15, 0, !dbg !119
  %17 = zext i1 %16 to i32, !dbg !119
  %18 = sext i32 %17 to i64, !dbg !118
  call void @klee_assume(i64 noundef %18), !dbg !120
  call void @llvm.dbg.declare(metadata %struct._xmlCharEncodingHandler** %6, metadata !121, metadata !DIExpression()), !dbg !122
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !122
  %19 = load i32, i32* %2, align 4, !dbg !123
  %20 = icmp ne i32 %19, 0, !dbg !123
  br i1 %20, label %24, label %21, !dbg !125

21:                                               ; preds = %0
  %22 = call i8* @xmlMalloc(i64 noundef 8), !dbg !126
  %23 = bitcast i8* %22 to %struct._xmlCharEncodingHandler*, !dbg !128
  store %struct._xmlCharEncodingHandler* %23, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !129
  br label %24, !dbg !130

24:                                               ; preds = %21, %0
  %25 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !131
  %26 = icmp eq %struct._xmlCharEncodingHandler* %25, null, !dbg !133
  br i1 %26, label %27, label %36, !dbg !134

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4, !dbg !135
  %29 = sext i32 %28 to i64, !dbg !135
  %30 = inttoptr i64 %29 to i8*, !dbg !135
  %31 = call i32 @iconv_close(i8* noundef %30), !dbg !137
  %32 = load i32, i32* %5, align 4, !dbg !138
  %33 = sext i32 %32 to i64, !dbg !138
  %34 = inttoptr i64 %33 to i8*, !dbg !138
  %35 = call i32 @iconv_close(i8* noundef %34), !dbg !139
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !140
  br label %67, !dbg !140

36:                                               ; preds = %24
  %37 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !141
  %38 = bitcast %struct._xmlCharEncodingHandler* %37 to i8*, !dbg !142
  %39 = call i8* @memset(i8* %38, i32 0, i64 8), !dbg !142
  %40 = load i32, i32* %3, align 4, !dbg !143
  %41 = icmp ne i32 %40, 0, !dbg !143
  br i1 %41, label %46, label %42, !dbg !145

42:                                               ; preds = %36
  %43 = call i8* @xmlMemStrdup(i8* noundef getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0)), !dbg !146
  %44 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !148
  %45 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %44, i32 0, i32 0, !dbg !149
  store i8* %43, i8** %45, align 8, !dbg !150
  br label %49, !dbg !151

46:                                               ; preds = %36
  %47 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !152
  %48 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %47, i32 0, i32 0, !dbg !154
  store i8* null, i8** %48, align 8, !dbg !155
  br label %49

49:                                               ; preds = %46, %42
  %50 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !156
  %51 = getelementptr inbounds %struct._xmlCharEncodingHandler, %struct._xmlCharEncodingHandler* %50, i32 0, i32 0, !dbg !158
  %52 = load i8*, i8** %51, align 8, !dbg !158
  %53 = icmp eq i8* %52, null, !dbg !159
  br i1 %53, label %54, label %65, !dbg !160

54:                                               ; preds = %49
  %55 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !161
  %56 = bitcast %struct._xmlCharEncodingHandler* %55 to i8*, !dbg !161
  call void @xmlFree(i8* noundef %56), !dbg !163
  %57 = load i32, i32* %4, align 4, !dbg !164
  %58 = sext i32 %57 to i64, !dbg !164
  %59 = inttoptr i64 %58 to i8*, !dbg !164
  %60 = call i32 @iconv_close(i8* noundef %59), !dbg !165
  %61 = load i32, i32* %5, align 4, !dbg !166
  %62 = sext i32 %61 to i64, !dbg !166
  %63 = inttoptr i64 %62 to i8*, !dbg !166
  %64 = call i32 @iconv_close(i8* noundef %63), !dbg !167
  store %struct._xmlCharEncodingHandler* null, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !168
  br label %67, !dbg !168

65:                                               ; preds = %49
  %66 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %6, align 8, !dbg !169
  store %struct._xmlCharEncodingHandler* %66, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !170
  br label %67, !dbg !170

67:                                               ; preds = %65, %54, %27
  %68 = load %struct._xmlCharEncodingHandler*, %struct._xmlCharEncodingHandler** %1, align 8, !dbg !171
  ret %struct._xmlCharEncodingHandler* %68, !dbg !171
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #5

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #6

declare void @klee_assume(i64 noundef) #6

declare i32 @iconv_close(i8* noundef) #6

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !172 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !178, metadata !DIExpression()), !dbg !179
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !180, metadata !DIExpression()), !dbg !181
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i8** %7, metadata !184, metadata !DIExpression()), !dbg !185
  %9 = load i8*, i8** %4, align 8, !dbg !186
  store i8* %9, i8** %7, align 8, !dbg !185
  call void @llvm.dbg.declare(metadata i8** %8, metadata !187, metadata !DIExpression()), !dbg !188
  %10 = load i8*, i8** %5, align 8, !dbg !189
  store i8* %10, i8** %8, align 8, !dbg !188
  br label %11, !dbg !190

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !191
  %13 = add i64 %12, -1, !dbg !191
  store i64 %13, i64* %6, align 8, !dbg !191
  %14 = icmp ugt i64 %12, 0, !dbg !192
  br i1 %14, label %15, label %21, !dbg !190

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !193
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !193
  store i8* %17, i8** %8, align 8, !dbg !193
  %18 = load i8, i8* %16, align 1, !dbg !194
  %19 = load i8*, i8** %7, align 8, !dbg !195
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !195
  store i8* %20, i8** %7, align 8, !dbg !195
  store i8 %18, i8* %19, align 1, !dbg !196
  br label %11, !dbg !190, !llvm.loop !197

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !199
  ret i8* %22, !dbg !200
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !201 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !205, metadata !DIExpression()), !dbg !206
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !207, metadata !DIExpression()), !dbg !208
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !209, metadata !DIExpression()), !dbg !210
  call void @llvm.dbg.declare(metadata i8** %7, metadata !211, metadata !DIExpression()), !dbg !212
  %8 = load i8*, i8** %4, align 8, !dbg !213
  store i8* %8, i8** %7, align 8, !dbg !212
  br label %9, !dbg !214

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !215
  %11 = add i64 %10, -1, !dbg !215
  store i64 %11, i64* %6, align 8, !dbg !215
  %12 = icmp ugt i64 %10, 0, !dbg !216
  br i1 %12, label %13, label %18, !dbg !214

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !217
  %15 = trunc i32 %14 to i8, !dbg !217
  %16 = load i8*, i8** %7, align 8, !dbg !218
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !218
  store i8* %17, i8** %7, align 8, !dbg !218
  store i8 %15, i8* %16, align 1, !dbg !219
  br label %9, !dbg !214, !llvm.loop !220

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !221
  ret i8* %19, !dbg !222
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { argmemonly nofree nounwind willreturn writeonly }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/015_encoding.c_1743_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "e60c91aab1bc1894dd35aa73f6be2c06")
!2 = !{!3, !5, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlCharEncodingHandler", file: !1, line: 11, baseType: !7)
!7 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlCharEncodingHandler", file: !1, line: 12, size: 64, elements: !8)
!8 = !{!9}
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !7, file: !1, line: 13, baseType: !3, size: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 18, type: !24, scopeLine: 18, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!10, !26}
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !27, line: 46, baseType: !28)
!27 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!28 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!29 = !{}
!30 = !DILocalVariable(name: "size", arg: 1, scope: !23, file: !1, line: 18, type: !26)
!31 = !DILocation(line: 18, column: 24, scope: !23)
!32 = !DILocation(line: 19, column: 19, scope: !23)
!33 = !DILocation(line: 19, column: 12, scope: !23)
!34 = !DILocation(line: 19, column: 5, scope: !23)
!35 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 22, type: !36, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !10}
!38 = !DILocalVariable(name: "ptr", arg: 1, scope: !35, file: !1, line: 22, type: !10)
!39 = !DILocation(line: 22, column: 20, scope: !35)
!40 = !DILocation(line: 23, column: 10, scope: !35)
!41 = !DILocation(line: 23, column: 5, scope: !35)
!42 = !DILocation(line: 24, column: 1, scope: !35)
!43 = distinct !DISubprogram(name: "xmlMemStrdup", scope: !1, file: !1, line: 26, type: !44, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!44 = !DISubroutineType(types: !45)
!45 = !{!3, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!48 = !DILocalVariable(name: "str", arg: 1, scope: !43, file: !1, line: 26, type: !46)
!49 = !DILocation(line: 26, column: 32, scope: !43)
!50 = !DILocation(line: 27, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !43, file: !1, line: 27, column: 9)
!52 = !DILocation(line: 27, column: 9, scope: !43)
!53 = !DILocation(line: 27, column: 15, scope: !51)
!54 = !DILocalVariable(name: "len", scope: !43, file: !1, line: 28, type: !26)
!55 = !DILocation(line: 28, column: 12, scope: !43)
!56 = !DILocation(line: 28, column: 25, scope: !43)
!57 = !DILocation(line: 28, column: 18, scope: !43)
!58 = !DILocation(line: 28, column: 30, scope: !43)
!59 = !DILocalVariable(name: "copy", scope: !43, file: !1, line: 29, type: !3)
!60 = !DILocation(line: 29, column: 11, scope: !43)
!61 = !DILocation(line: 29, column: 32, scope: !43)
!62 = !DILocation(line: 29, column: 25, scope: !43)
!63 = !DILocation(line: 30, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !43, file: !1, line: 30, column: 9)
!65 = !DILocation(line: 30, column: 9, scope: !43)
!66 = !DILocation(line: 30, column: 22, scope: !64)
!67 = !DILocation(line: 30, column: 28, scope: !64)
!68 = !DILocation(line: 30, column: 33, scope: !64)
!69 = !DILocation(line: 30, column: 15, scope: !64)
!70 = !DILocation(line: 31, column: 12, scope: !43)
!71 = !DILocation(line: 31, column: 5, scope: !43)
!72 = !DILocation(line: 32, column: 1, scope: !43)
!73 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 38, type: !74, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!74 = !DISubroutineType(types: !75)
!75 = !{!76}
!76 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!77 = !DILocalVariable(name: "result", scope: !73, file: !1, line: 40, type: !5)
!78 = !DILocation(line: 40, column: 29, scope: !73)
!79 = !DILocation(line: 40, column: 38, scope: !73)
!80 = !DILocation(line: 66, column: 5, scope: !73)
!81 = !DILocation(line: 69, column: 9, scope: !82)
!82 = distinct !DILexicalBlock(scope: !73, file: !1, line: 69, column: 9)
!83 = !DILocation(line: 69, column: 9, scope: !73)
!84 = !DILocation(line: 70, column: 13, scope: !85)
!85 = distinct !DILexicalBlock(scope: !86, file: !1, line: 70, column: 13)
!86 = distinct !DILexicalBlock(scope: !82, file: !1, line: 69, column: 17)
!87 = !DILocation(line: 70, column: 21, scope: !85)
!88 = !DILocation(line: 70, column: 13, scope: !86)
!89 = !DILocation(line: 70, column: 32, scope: !85)
!90 = !DILocation(line: 70, column: 40, scope: !85)
!91 = !DILocation(line: 70, column: 27, scope: !85)
!92 = !DILocation(line: 71, column: 14, scope: !86)
!93 = !DILocation(line: 71, column: 9, scope: !86)
!94 = !DILocation(line: 72, column: 5, scope: !86)
!95 = !DILocation(line: 74, column: 5, scope: !73)
!96 = distinct !DISubprogram(name: "isolat1ToUTF8", scope: !1, file: !1, line: 78, type: !97, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !29)
!97 = !DISubroutineType(types: !98)
!98 = !{!5}
!99 = !DILocalVariable(name: "enc_alloc_fails", scope: !96, file: !1, line: 80, type: !76)
!100 = !DILocation(line: 80, column: 9, scope: !96)
!101 = !DILocalVariable(name: "name_alloc_fails", scope: !96, file: !1, line: 81, type: !76)
!102 = !DILocation(line: 81, column: 9, scope: !96)
!103 = !DILocalVariable(name: "icv_in_valid", scope: !96, file: !1, line: 82, type: !76)
!104 = !DILocation(line: 82, column: 9, scope: !96)
!105 = !DILocalVariable(name: "icv_out_valid", scope: !96, file: !1, line: 83, type: !76)
!106 = !DILocation(line: 83, column: 9, scope: !96)
!107 = !DILocation(line: 85, column: 24, scope: !96)
!108 = !DILocation(line: 85, column: 5, scope: !96)
!109 = !DILocation(line: 86, column: 24, scope: !96)
!110 = !DILocation(line: 86, column: 5, scope: !96)
!111 = !DILocation(line: 87, column: 24, scope: !96)
!112 = !DILocation(line: 87, column: 5, scope: !96)
!113 = !DILocation(line: 88, column: 24, scope: !96)
!114 = !DILocation(line: 88, column: 5, scope: !96)
!115 = !DILocation(line: 91, column: 17, scope: !96)
!116 = !DILocation(line: 91, column: 30, scope: !96)
!117 = !DILocation(line: 91, column: 5, scope: !96)
!118 = !DILocation(line: 92, column: 17, scope: !96)
!119 = !DILocation(line: 92, column: 31, scope: !96)
!120 = !DILocation(line: 92, column: 5, scope: !96)
!121 = !DILocalVariable(name: "enc", scope: !96, file: !1, line: 95, type: !5)
!122 = !DILocation(line: 95, column: 29, scope: !96)
!123 = !DILocation(line: 96, column: 10, scope: !124)
!124 = distinct !DILexicalBlock(scope: !96, file: !1, line: 96, column: 9)
!125 = !DILocation(line: 96, column: 9, scope: !96)
!126 = !DILocation(line: 97, column: 40, scope: !127)
!127 = distinct !DILexicalBlock(scope: !124, file: !1, line: 96, column: 27)
!128 = !DILocation(line: 97, column: 15, scope: !127)
!129 = !DILocation(line: 97, column: 13, scope: !127)
!130 = !DILocation(line: 98, column: 5, scope: !127)
!131 = !DILocation(line: 100, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !96, file: !1, line: 100, column: 9)
!133 = !DILocation(line: 100, column: 13, scope: !132)
!134 = !DILocation(line: 100, column: 9, scope: !96)
!135 = !DILocation(line: 102, column: 21, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 100, column: 22)
!137 = !DILocation(line: 102, column: 9, scope: !136)
!138 = !DILocation(line: 103, column: 21, scope: !136)
!139 = !DILocation(line: 103, column: 9, scope: !136)
!140 = !DILocation(line: 104, column: 9, scope: !136)
!141 = !DILocation(line: 109, column: 12, scope: !96)
!142 = !DILocation(line: 109, column: 5, scope: !96)
!143 = !DILocation(line: 112, column: 10, scope: !144)
!144 = distinct !DILexicalBlock(scope: !96, file: !1, line: 112, column: 9)
!145 = !DILocation(line: 112, column: 9, scope: !96)
!146 = !DILocation(line: 113, column: 21, scope: !147)
!147 = distinct !DILexicalBlock(scope: !144, file: !1, line: 112, column: 28)
!148 = !DILocation(line: 113, column: 9, scope: !147)
!149 = !DILocation(line: 113, column: 14, scope: !147)
!150 = !DILocation(line: 113, column: 19, scope: !147)
!151 = !DILocation(line: 114, column: 5, scope: !147)
!152 = !DILocation(line: 115, column: 9, scope: !153)
!153 = distinct !DILexicalBlock(scope: !144, file: !1, line: 114, column: 12)
!154 = !DILocation(line: 115, column: 14, scope: !153)
!155 = !DILocation(line: 115, column: 19, scope: !153)
!156 = !DILocation(line: 118, column: 9, scope: !157)
!157 = distinct !DILexicalBlock(scope: !96, file: !1, line: 118, column: 9)
!158 = !DILocation(line: 118, column: 14, scope: !157)
!159 = !DILocation(line: 118, column: 19, scope: !157)
!160 = !DILocation(line: 118, column: 9, scope: !96)
!161 = !DILocation(line: 120, column: 17, scope: !162)
!162 = distinct !DILexicalBlock(scope: !157, file: !1, line: 118, column: 28)
!163 = !DILocation(line: 120, column: 9, scope: !162)
!164 = !DILocation(line: 121, column: 21, scope: !162)
!165 = !DILocation(line: 121, column: 9, scope: !162)
!166 = !DILocation(line: 122, column: 21, scope: !162)
!167 = !DILocation(line: 122, column: 9, scope: !162)
!168 = !DILocation(line: 123, column: 9, scope: !162)
!169 = !DILocation(line: 127, column: 12, scope: !96)
!170 = !DILocation(line: 127, column: 5, scope: !96)
!171 = !DILocation(line: 128, column: 1, scope: !96)
!172 = distinct !DISubprogram(name: "memcpy", scope: !173, file: !173, line: 12, type: !174, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !29)
!173 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!174 = !DISubroutineType(types: !175)
!175 = !{!10, !10, !176, !26}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!178 = !DILocalVariable(name: "destaddr", arg: 1, scope: !172, file: !173, line: 12, type: !10)
!179 = !DILocation(line: 12, column: 20, scope: !172)
!180 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !172, file: !173, line: 12, type: !176)
!181 = !DILocation(line: 12, column: 42, scope: !172)
!182 = !DILocalVariable(name: "len", arg: 3, scope: !172, file: !173, line: 12, type: !26)
!183 = !DILocation(line: 12, column: 58, scope: !172)
!184 = !DILocalVariable(name: "dest", scope: !172, file: !173, line: 13, type: !3)
!185 = !DILocation(line: 13, column: 9, scope: !172)
!186 = !DILocation(line: 13, column: 16, scope: !172)
!187 = !DILocalVariable(name: "src", scope: !172, file: !173, line: 14, type: !46)
!188 = !DILocation(line: 14, column: 15, scope: !172)
!189 = !DILocation(line: 14, column: 21, scope: !172)
!190 = !DILocation(line: 16, column: 3, scope: !172)
!191 = !DILocation(line: 16, column: 13, scope: !172)
!192 = !DILocation(line: 16, column: 16, scope: !172)
!193 = !DILocation(line: 17, column: 19, scope: !172)
!194 = !DILocation(line: 17, column: 15, scope: !172)
!195 = !DILocation(line: 17, column: 10, scope: !172)
!196 = !DILocation(line: 17, column: 13, scope: !172)
!197 = distinct !{!197, !190, !193, !198}
!198 = !{!"llvm.loop.mustprogress"}
!199 = !DILocation(line: 18, column: 10, scope: !172)
!200 = !DILocation(line: 18, column: 3, scope: !172)
!201 = distinct !DISubprogram(name: "memset", scope: !202, file: !202, line: 12, type: !203, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !29)
!202 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!203 = !DISubroutineType(types: !204)
!204 = !{!10, !10, !76, !26}
!205 = !DILocalVariable(name: "dst", arg: 1, scope: !201, file: !202, line: 12, type: !10)
!206 = !DILocation(line: 12, column: 20, scope: !201)
!207 = !DILocalVariable(name: "s", arg: 2, scope: !201, file: !202, line: 12, type: !76)
!208 = !DILocation(line: 12, column: 29, scope: !201)
!209 = !DILocalVariable(name: "count", arg: 3, scope: !201, file: !202, line: 12, type: !26)
!210 = !DILocation(line: 12, column: 39, scope: !201)
!211 = !DILocalVariable(name: "a", scope: !201, file: !202, line: 13, type: !3)
!212 = !DILocation(line: 13, column: 9, scope: !201)
!213 = !DILocation(line: 13, column: 13, scope: !201)
!214 = !DILocation(line: 14, column: 3, scope: !201)
!215 = !DILocation(line: 14, column: 15, scope: !201)
!216 = !DILocation(line: 14, column: 18, scope: !201)
!217 = !DILocation(line: 15, column: 12, scope: !201)
!218 = !DILocation(line: 15, column: 7, scope: !201)
!219 = !DILocation(line: 15, column: 10, scope: !201)
!220 = distinct !{!220, !214, !217, !198}
!221 = !DILocation(line: 16, column: 10, scope: !201)
!222 = !DILocation(line: 16, column: 3, scope: !201)

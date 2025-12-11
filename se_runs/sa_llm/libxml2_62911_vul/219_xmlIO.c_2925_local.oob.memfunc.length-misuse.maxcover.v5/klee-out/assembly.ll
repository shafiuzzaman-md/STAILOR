; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/219_xmlIO.c_2925_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/219_xmlIO.c_2925_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlParserCtxt = type { i8* }

@.str = private unnamed_addr constant [5 x i8] c"size\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"ctxt_str\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"(copied_len <= buf_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [104 x i8] c"se_runs/sa_llm/libxml2_62911_vul/219_xmlIO.c_2925_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__xmlIOErr(i32 noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !12 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !22, metadata !DIExpression()), !dbg !23
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !24, metadata !DIExpression()), !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !27 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct._xmlParserCtxt*, align 8
  %6 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata i64* %2, metadata !30, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata i64* %3, metadata !35, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %5, metadata !40, metadata !DIExpression()), !dbg !47
  %7 = bitcast i64* %2 to i8*, !dbg !48
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 8, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !49
  %8 = load i64, i64* %2, align 8, !dbg !50
  %9 = icmp ugt i64 %8, 0, !dbg !51
  %10 = zext i1 %9 to i32, !dbg !51
  %11 = sext i32 %10 to i64, !dbg !50
  call void @klee_assume(i64 noundef %11), !dbg !52
  %12 = load i64, i64* %2, align 8, !dbg !53
  %13 = icmp ule i64 %12, 1024, !dbg !54
  %14 = zext i1 %13 to i32, !dbg !54
  %15 = sext i32 %14 to i64, !dbg !53
  call void @klee_assume(i64 noundef %15), !dbg !55
  %16 = bitcast i64* %3 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %16, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %17 = load i64, i64* %3, align 8, !dbg !58
  %18 = icmp ugt i64 %17, 0, !dbg !59
  %19 = zext i1 %18 to i32, !dbg !59
  %20 = sext i32 %19 to i64, !dbg !58
  call void @klee_assume(i64 noundef %20), !dbg !60
  %21 = load i64, i64* %3, align 8, !dbg !61
  %22 = icmp ule i64 %21, 1024, !dbg !62
  %23 = zext i1 %22 to i32, !dbg !62
  %24 = sext i32 %23 to i64, !dbg !61
  call void @klee_assume(i64 noundef %24), !dbg !63
  %25 = load i64, i64* %3, align 8, !dbg !64
  %26 = call noalias i8* @malloc(i64 noundef %25) #8, !dbg !65
  store i8* %26, i8** %4, align 8, !dbg !66
  %27 = load i8*, i8** %4, align 8, !dbg !67
  %28 = icmp ne i8* %27, null, !dbg !67
  br i1 %28, label %30, label %29, !dbg !69

29:                                               ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !70
  br label %61, !dbg !70

30:                                               ; preds = %0
  %31 = load i64, i64* %2, align 8, !dbg !71
  %32 = call %struct._xmlParserCtxt* @create_parser_ctxt(i64 noundef %31), !dbg !72
  store %struct._xmlParserCtxt* %32, %struct._xmlParserCtxt** %5, align 8, !dbg !73
  %33 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !74
  %34 = icmp ne %struct._xmlParserCtxt* %33, null, !dbg !74
  br i1 %34, label %37, label %35, !dbg !76

35:                                               ; preds = %30
  %36 = load i8*, i8** %4, align 8, !dbg !77
  call void @free(i8* noundef %36) #8, !dbg !79
  store i32 0, i32* %1, align 4, !dbg !80
  br label %61, !dbg !80

37:                                               ; preds = %30
  %38 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !81
  %39 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %38, i32 0, i32 0, !dbg !82
  %40 = load i8*, i8** %39, align 8, !dbg !82
  %41 = load i64, i64* %2, align 8, !dbg !83
  call void @klee_make_symbolic(i8* noundef %40, i64 noundef %41, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)), !dbg !84
  call void @llvm.dbg.declare(metadata i64* %6, metadata !85, metadata !DIExpression()), !dbg !86
  %42 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !87
  %43 = load i8*, i8** %4, align 8, !dbg !88
  %44 = load i64, i64* %2, align 8, !dbg !89
  %45 = call i64 @vulnerable_function(%struct._xmlParserCtxt* noundef %42, i8* noundef %43, i64 noundef %44), !dbg !90
  store i64 %45, i64* %6, align 8, !dbg !86
  %46 = load i64, i64* %6, align 8, !dbg !91
  %47 = load i64, i64* %3, align 8, !dbg !91
  %48 = icmp ule i64 %46, %47, !dbg !91
  br i1 %48, label %49, label %51, !dbg !91

49:                                               ; preds = %37
  br i1 true, label %50, label %51, !dbg !91

50:                                               ; preds = %49
  br label %53, !dbg !91

51:                                               ; preds = %49, %37
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 91, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !91
  br label %53, !dbg !91

53:                                               ; preds = %51, %50
  %54 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([104 x i8], [104 x i8]* @.str.5, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !92
  %55 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !93
  %56 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %55, i32 0, i32 0, !dbg !94
  %57 = load i8*, i8** %56, align 8, !dbg !94
  call void @free(i8* noundef %57) #8, !dbg !95
  %58 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %5, align 8, !dbg !96
  %59 = bitcast %struct._xmlParserCtxt* %58 to i8*, !dbg !96
  call void @free(i8* noundef %59) #8, !dbg !97
  %60 = load i8*, i8** %4, align 8, !dbg !98
  call void @free(i8* noundef %60) #8, !dbg !99
  store i32 0, i32* %1, align 4, !dbg !100
  br label %61, !dbg !100

61:                                               ; preds = %53, %35, %29
  %62 = load i32, i32* %1, align 4, !dbg !101
  ret i32 %62, !dbg !101
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

declare void @klee_assume(i64 noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct._xmlParserCtxt* @create_parser_ctxt(i64 noundef %0) #0 !dbg !102 {
  %2 = alloca %struct._xmlParserCtxt*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct._xmlParserCtxt*, align 8
  store i64 %0, i64* %3, align 8
  call void @llvm.dbg.declare(metadata i64* %3, metadata !105, metadata !DIExpression()), !dbg !106
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !107, metadata !DIExpression()), !dbg !108
  %5 = call noalias i8* @malloc(i64 noundef 8) #8, !dbg !109
  %6 = bitcast i8* %5 to %struct._xmlParserCtxt*, !dbg !109
  store %struct._xmlParserCtxt* %6, %struct._xmlParserCtxt** %4, align 8, !dbg !108
  %7 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !110
  %8 = icmp ne %struct._xmlParserCtxt* %7, null, !dbg !110
  br i1 %8, label %10, label %9, !dbg !112

9:                                                ; preds = %1
  store %struct._xmlParserCtxt* null, %struct._xmlParserCtxt** %2, align 8, !dbg !113
  br label %24, !dbg !113

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8, !dbg !114
  %12 = call noalias i8* @malloc(i64 noundef %11) #8, !dbg !115
  %13 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !116
  %14 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %13, i32 0, i32 0, !dbg !117
  store i8* %12, i8** %14, align 8, !dbg !118
  %15 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !119
  %16 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %15, i32 0, i32 0, !dbg !121
  %17 = load i8*, i8** %16, align 8, !dbg !121
  %18 = icmp ne i8* %17, null, !dbg !119
  br i1 %18, label %22, label %19, !dbg !122

19:                                               ; preds = %10
  %20 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !123
  %21 = bitcast %struct._xmlParserCtxt* %20 to i8*, !dbg !123
  call void @free(i8* noundef %21) #8, !dbg !125
  store %struct._xmlParserCtxt* null, %struct._xmlParserCtxt** %2, align 8, !dbg !126
  br label %24, !dbg !126

22:                                               ; preds = %10
  %23 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !127
  store %struct._xmlParserCtxt* %23, %struct._xmlParserCtxt** %2, align 8, !dbg !128
  br label %24, !dbg !128

24:                                               ; preds = %22, %19, %9
  %25 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %2, align 8, !dbg !129
  ret %struct._xmlParserCtxt* %25, !dbg !129
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vulnerable_function(%struct._xmlParserCtxt* noundef %0, i8* noundef %1, i64 noundef %2) #0 !dbg !130 {
  %4 = alloca %struct._xmlParserCtxt*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct._xmlParserCtxt* %0, %struct._xmlParserCtxt** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlParserCtxt** %4, metadata !133, metadata !DIExpression()), !dbg !134
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !135, metadata !DIExpression()), !dbg !136
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !137, metadata !DIExpression()), !dbg !138
  call void @llvm.dbg.declare(metadata i8** %7, metadata !139, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i64* %8, metadata !141, metadata !DIExpression()), !dbg !142
  %9 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !143
  %10 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %9, i32 0, i32 0, !dbg !144
  %11 = load i8*, i8** %10, align 8, !dbg !144
  %12 = load i64, i64* %6, align 8, !dbg !145
  %13 = call i8* @memchr(i8* noundef %11, i32 noundef 0, i64 noundef %12) #9, !dbg !146
  store i8* %13, i8** %7, align 8, !dbg !147
  %14 = load i8*, i8** %7, align 8, !dbg !148
  %15 = icmp ne i8* %14, null, !dbg !148
  br i1 %15, label %16, label %24, !dbg !148

16:                                               ; preds = %3
  %17 = load i8*, i8** %7, align 8, !dbg !149
  %18 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !150
  %19 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %18, i32 0, i32 0, !dbg !151
  %20 = load i8*, i8** %19, align 8, !dbg !151
  %21 = ptrtoint i8* %17 to i64, !dbg !152
  %22 = ptrtoint i8* %20 to i64, !dbg !152
  %23 = sub i64 %21, %22, !dbg !152
  br label %26, !dbg !148

24:                                               ; preds = %3
  %25 = load i64, i64* %6, align 8, !dbg !153
  br label %26, !dbg !148

26:                                               ; preds = %24, %16
  %27 = phi i64 [ %23, %16 ], [ %25, %24 ], !dbg !148
  store i64 %27, i64* %8, align 8, !dbg !154
  %28 = load i8*, i8** %5, align 8, !dbg !155
  %29 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !156
  %30 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %29, i32 0, i32 0, !dbg !157
  %31 = load i8*, i8** %30, align 8, !dbg !157
  %32 = load i64, i64* %8, align 8, !dbg !158
  %33 = call i8* @memcpy(i8* %28, i8* %31, i64 %32), !dbg !159
  %34 = load i64, i64* %8, align 8, !dbg !160
  %35 = load %struct._xmlParserCtxt*, %struct._xmlParserCtxt** %4, align 8, !dbg !161
  %36 = getelementptr inbounds %struct._xmlParserCtxt, %struct._xmlParserCtxt* %35, i32 0, i32 0, !dbg !162
  %37 = load i8*, i8** %36, align 8, !dbg !163
  %38 = getelementptr inbounds i8, i8* %37, i64 %34, !dbg !163
  store i8* %38, i8** %36, align 8, !dbg !163
  %39 = load i64, i64* %8, align 8, !dbg !164
  ret i64 %39, !dbg !165
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: nounwind readonly willreturn
declare i8* @memchr(i8* noundef, i32 noundef, i64 noundef) #5

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !166 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !173, metadata !DIExpression()), !dbg !174
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !175, metadata !DIExpression()), !dbg !176
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !177, metadata !DIExpression()), !dbg !178
  call void @llvm.dbg.declare(metadata i8** %7, metadata !179, metadata !DIExpression()), !dbg !180
  %9 = load i8*, i8** %4, align 8, !dbg !181
  store i8* %9, i8** %7, align 8, !dbg !180
  call void @llvm.dbg.declare(metadata i8** %8, metadata !182, metadata !DIExpression()), !dbg !183
  %10 = load i8*, i8** %5, align 8, !dbg !184
  store i8* %10, i8** %8, align 8, !dbg !183
  br label %11, !dbg !185

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !186
  %13 = add i64 %12, -1, !dbg !186
  store i64 %13, i64* %6, align 8, !dbg !186
  %14 = icmp ugt i64 %12, 0, !dbg !187
  br i1 %14, label %15, label %21, !dbg !185

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !188
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !188
  store i8* %17, i8** %8, align 8, !dbg !188
  %18 = load i8, i8* %16, align 1, !dbg !189
  %19 = load i8*, i8** %7, align 8, !dbg !190
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !190
  store i8* %20, i8** %7, align 8, !dbg !190
  store i8 %18, i8* %19, align 1, !dbg !191
  br label %11, !dbg !185, !llvm.loop !192

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %22, !dbg !195
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { argmemonly nofree nounwind willreturn }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind readonly willreturn }

!llvm.dbg.cu = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11, !11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/219_xmlIO.c_2925_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "9dc74715a7ddf92f24a9d35fa633b6ac")
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!4 = !{i32 7, !"Dwarf Version", i32 5}
!5 = !{i32 2, !"Debug Info Version", i32 3}
!6 = !{i32 1, !"wchar_size", i32 4}
!7 = !{i32 7, !"PIC Level", i32 2}
!8 = !{i32 7, !"PIE Level", i32 2}
!9 = !{i32 7, !"uwtable", i32 1}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"Ubuntu clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "__xmlIOErr", scope: !1, file: !1, line: 20, type: !13, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!13 = !DISubroutineType(types: !14)
!14 = !{!15, !15, !15, !16}
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{}
!20 = !DILocalVariable(name: "domain", arg: 1, scope: !12, file: !1, line: 20, type: !15)
!21 = !DILocation(line: 20, column: 20, scope: !12)
!22 = !DILocalVariable(name: "code", arg: 2, scope: !12, file: !1, line: 20, type: !15)
!23 = !DILocation(line: 20, column: 32, scope: !12)
!24 = !DILocalVariable(name: "msg", arg: 3, scope: !12, file: !1, line: 20, type: !16)
!25 = !DILocation(line: 20, column: 50, scope: !12)
!26 = !DILocation(line: 23, column: 5, scope: !12)
!27 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !28, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !19)
!28 = !DISubroutineType(types: !29)
!29 = !{!15}
!30 = !DILocalVariable(name: "size", scope: !27, file: !1, line: 57, type: !31)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !32, line: 46, baseType: !33)
!32 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!33 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 57, column: 12, scope: !27)
!35 = !DILocalVariable(name: "buf_size", scope: !27, file: !1, line: 58, type: !31)
!36 = !DILocation(line: 58, column: 12, scope: !27)
!37 = !DILocalVariable(name: "buf", scope: !27, file: !1, line: 59, type: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!39 = !DILocation(line: 59, column: 11, scope: !27)
!40 = !DILocalVariable(name: "ctxt", scope: !27, file: !1, line: 60, type: !41)
!41 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxtPtr", file: !1, line: 11, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlParserCtxt", file: !1, line: 10, baseType: !44)
!44 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlParserCtxt", file: !1, line: 14, size: 64, elements: !45)
!45 = !{!46}
!46 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !44, file: !1, line: 15, baseType: !38, size: 64)
!47 = !DILocation(line: 60, column: 22, scope: !27)
!48 = !DILocation(line: 63, column: 24, scope: !27)
!49 = !DILocation(line: 63, column: 5, scope: !27)
!50 = !DILocation(line: 64, column: 17, scope: !27)
!51 = !DILocation(line: 64, column: 22, scope: !27)
!52 = !DILocation(line: 64, column: 5, scope: !27)
!53 = !DILocation(line: 65, column: 17, scope: !27)
!54 = !DILocation(line: 65, column: 22, scope: !27)
!55 = !DILocation(line: 65, column: 5, scope: !27)
!56 = !DILocation(line: 68, column: 24, scope: !27)
!57 = !DILocation(line: 68, column: 5, scope: !27)
!58 = !DILocation(line: 69, column: 17, scope: !27)
!59 = !DILocation(line: 69, column: 26, scope: !27)
!60 = !DILocation(line: 69, column: 5, scope: !27)
!61 = !DILocation(line: 70, column: 17, scope: !27)
!62 = !DILocation(line: 70, column: 26, scope: !27)
!63 = !DILocation(line: 70, column: 5, scope: !27)
!64 = !DILocation(line: 73, column: 18, scope: !27)
!65 = !DILocation(line: 73, column: 11, scope: !27)
!66 = !DILocation(line: 73, column: 9, scope: !27)
!67 = !DILocation(line: 74, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !27, file: !1, line: 74, column: 9)
!69 = !DILocation(line: 74, column: 9, scope: !27)
!70 = !DILocation(line: 74, column: 15, scope: !68)
!71 = !DILocation(line: 77, column: 31, scope: !27)
!72 = !DILocation(line: 77, column: 12, scope: !27)
!73 = !DILocation(line: 77, column: 10, scope: !27)
!74 = !DILocation(line: 78, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !27, file: !1, line: 78, column: 9)
!76 = !DILocation(line: 78, column: 9, scope: !27)
!77 = !DILocation(line: 79, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !1, line: 78, column: 16)
!79 = !DILocation(line: 79, column: 9, scope: !78)
!80 = !DILocation(line: 80, column: 9, scope: !78)
!81 = !DILocation(line: 84, column: 24, scope: !27)
!82 = !DILocation(line: 84, column: 30, scope: !27)
!83 = !DILocation(line: 84, column: 35, scope: !27)
!84 = !DILocation(line: 84, column: 5, scope: !27)
!85 = !DILocalVariable(name: "copied_len", scope: !27, file: !1, line: 87, type: !31)
!86 = !DILocation(line: 87, column: 12, scope: !27)
!87 = !DILocation(line: 87, column: 45, scope: !27)
!88 = !DILocation(line: 87, column: 51, scope: !27)
!89 = !DILocation(line: 87, column: 56, scope: !27)
!90 = !DILocation(line: 87, column: 25, scope: !27)
!91 = !DILocation(line: 91, column: 5, scope: !27)
!92 = !DILocation(line: 94, column: 5, scope: !27)
!93 = !DILocation(line: 97, column: 10, scope: !27)
!94 = !DILocation(line: 97, column: 16, scope: !27)
!95 = !DILocation(line: 97, column: 5, scope: !27)
!96 = !DILocation(line: 98, column: 10, scope: !27)
!97 = !DILocation(line: 98, column: 5, scope: !27)
!98 = !DILocation(line: 99, column: 10, scope: !27)
!99 = !DILocation(line: 99, column: 5, scope: !27)
!100 = !DILocation(line: 101, column: 5, scope: !27)
!101 = !DILocation(line: 102, column: 1, scope: !27)
!102 = distinct !DISubprogram(name: "create_parser_ctxt", scope: !1, file: !1, line: 43, type: !103, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!103 = !DISubroutineType(types: !104)
!104 = !{!41, !31}
!105 = !DILocalVariable(name: "str_size", arg: 1, scope: !102, file: !1, line: 43, type: !31)
!106 = !DILocation(line: 43, column: 51, scope: !102)
!107 = !DILocalVariable(name: "ctxt", scope: !102, file: !1, line: 44, type: !41)
!108 = !DILocation(line: 44, column: 22, scope: !102)
!109 = !DILocation(line: 44, column: 29, scope: !102)
!110 = !DILocation(line: 45, column: 10, scope: !111)
!111 = distinct !DILexicalBlock(scope: !102, file: !1, line: 45, column: 9)
!112 = !DILocation(line: 45, column: 9, scope: !102)
!113 = !DILocation(line: 45, column: 16, scope: !111)
!114 = !DILocation(line: 47, column: 24, scope: !102)
!115 = !DILocation(line: 47, column: 17, scope: !102)
!116 = !DILocation(line: 47, column: 5, scope: !102)
!117 = !DILocation(line: 47, column: 11, scope: !102)
!118 = !DILocation(line: 47, column: 15, scope: !102)
!119 = !DILocation(line: 48, column: 10, scope: !120)
!120 = distinct !DILexicalBlock(scope: !102, file: !1, line: 48, column: 9)
!121 = !DILocation(line: 48, column: 16, scope: !120)
!122 = !DILocation(line: 48, column: 9, scope: !102)
!123 = !DILocation(line: 49, column: 14, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !1, line: 48, column: 21)
!125 = !DILocation(line: 49, column: 9, scope: !124)
!126 = !DILocation(line: 50, column: 9, scope: !124)
!127 = !DILocation(line: 53, column: 12, scope: !102)
!128 = !DILocation(line: 53, column: 5, scope: !102)
!129 = !DILocation(line: 54, column: 1, scope: !102)
!130 = distinct !DISubprogram(name: "vulnerable_function", scope: !1, file: !1, line: 28, type: !131, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !19)
!131 = !DISubroutineType(types: !132)
!132 = !{!31, !41, !38, !31}
!133 = !DILocalVariable(name: "ctxt", arg: 1, scope: !130, file: !1, line: 28, type: !41)
!134 = !DILocation(line: 28, column: 52, scope: !130)
!135 = !DILocalVariable(name: "buf", arg: 2, scope: !130, file: !1, line: 28, type: !38)
!136 = !DILocation(line: 28, column: 64, scope: !130)
!137 = !DILocalVariable(name: "size", arg: 3, scope: !130, file: !1, line: 28, type: !31)
!138 = !DILocation(line: 28, column: 76, scope: !130)
!139 = !DILocalVariable(name: "zero", scope: !130, file: !1, line: 29, type: !38)
!140 = !DILocation(line: 29, column: 11, scope: !130)
!141 = !DILocalVariable(name: "len", scope: !130, file: !1, line: 30, type: !31)
!142 = !DILocation(line: 30, column: 12, scope: !130)
!143 = !DILocation(line: 32, column: 19, scope: !130)
!144 = !DILocation(line: 32, column: 25, scope: !130)
!145 = !DILocation(line: 32, column: 33, scope: !130)
!146 = !DILocation(line: 32, column: 12, scope: !130)
!147 = !DILocation(line: 32, column: 10, scope: !130)
!148 = !DILocation(line: 33, column: 11, scope: !130)
!149 = !DILocation(line: 33, column: 18, scope: !130)
!150 = !DILocation(line: 33, column: 25, scope: !130)
!151 = !DILocation(line: 33, column: 31, scope: !130)
!152 = !DILocation(line: 33, column: 23, scope: !130)
!153 = !DILocation(line: 33, column: 37, scope: !130)
!154 = !DILocation(line: 33, column: 9, scope: !130)
!155 = !DILocation(line: 36, column: 12, scope: !130)
!156 = !DILocation(line: 36, column: 17, scope: !130)
!157 = !DILocation(line: 36, column: 23, scope: !130)
!158 = !DILocation(line: 36, column: 28, scope: !130)
!159 = !DILocation(line: 36, column: 5, scope: !130)
!160 = !DILocation(line: 37, column: 18, scope: !130)
!161 = !DILocation(line: 37, column: 5, scope: !130)
!162 = !DILocation(line: 37, column: 11, scope: !130)
!163 = !DILocation(line: 37, column: 15, scope: !130)
!164 = !DILocation(line: 39, column: 12, scope: !130)
!165 = !DILocation(line: 39, column: 5, scope: !130)
!166 = distinct !DISubprogram(name: "memcpy", scope: !167, file: !167, line: 12, type: !168, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !19)
!167 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!168 = !DISubroutineType(types: !169)
!169 = !{!170, !170, !171, !31}
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!173 = !DILocalVariable(name: "destaddr", arg: 1, scope: !166, file: !167, line: 12, type: !170)
!174 = !DILocation(line: 12, column: 20, scope: !166)
!175 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !166, file: !167, line: 12, type: !171)
!176 = !DILocation(line: 12, column: 42, scope: !166)
!177 = !DILocalVariable(name: "len", arg: 3, scope: !166, file: !167, line: 12, type: !31)
!178 = !DILocation(line: 12, column: 58, scope: !166)
!179 = !DILocalVariable(name: "dest", scope: !166, file: !167, line: 13, type: !38)
!180 = !DILocation(line: 13, column: 9, scope: !166)
!181 = !DILocation(line: 13, column: 16, scope: !166)
!182 = !DILocalVariable(name: "src", scope: !166, file: !167, line: 14, type: !16)
!183 = !DILocation(line: 14, column: 15, scope: !166)
!184 = !DILocation(line: 14, column: 21, scope: !166)
!185 = !DILocation(line: 16, column: 3, scope: !166)
!186 = !DILocation(line: 16, column: 13, scope: !166)
!187 = !DILocation(line: 16, column: 16, scope: !166)
!188 = !DILocation(line: 17, column: 19, scope: !166)
!189 = !DILocation(line: 17, column: 15, scope: !166)
!190 = !DILocation(line: 17, column: 10, scope: !166)
!191 = !DILocation(line: 17, column: 13, scope: !166)
!192 = distinct !{!192, !185, !188, !193}
!193 = !{!"llvm.loop.mustprogress"}
!194 = !DILocation(line: 18, column: 10, scope: !166)
!195 = !DILocation(line: 18, column: 3, scope: !166)

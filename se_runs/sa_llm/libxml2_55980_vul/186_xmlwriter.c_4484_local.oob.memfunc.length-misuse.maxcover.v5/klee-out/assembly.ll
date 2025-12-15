; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/186_xmlwriter.c_4484_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/186_xmlwriter.c_4484_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"format\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"arg1\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"arg2\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"arg3\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"xmlTextWriterVSprintf : out of memory!\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [39 x i8] c"(count <= size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_55980_vul/186_xmlwriter.c_4484_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlTextWriterVSprintf = private unnamed_addr constant [69 x i8] c"xmlChar *xmlTextWriterVSprintf(const char *, struct __va_list_tag *)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !17 {
  %1 = alloca i32, align 4
  %2 = alloca [32 x i8], align 16
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i8], align 16
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [32 x i8]* %2, metadata !22, metadata !DIExpression()), !dbg !26
  %6 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !27
  call void @klee_make_symbolic(i8* noundef %6, i64 noundef 32, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !28
  %7 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 31, !dbg !29
  store i8 0, i8* %7, align 1, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %3, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %4, metadata !33, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata [16 x i8]* %5, metadata !35, metadata !DIExpression()), !dbg !39
  %8 = bitcast i32* %3 to i8*, !dbg !40
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !41
  %9 = bitcast i32* %4 to i8*, !dbg !42
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)), !dbg !43
  %10 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !44
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 16, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0)), !dbg !45
  %11 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 15, !dbg !46
  store i8 0, i8* %11, align 1, !dbg !47
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %2, i64 0, i64 0, !dbg !48
  %13 = load i32, i32* %3, align 4, !dbg !49
  %14 = load i32, i32* %4, align 4, !dbg !50
  %15 = getelementptr inbounds [16 x i8], [16 x i8]* %5, i64 0, i64 0, !dbg !51
  call void (i8*, ...) @call_xmlTextWriterVSprintf(i8* noundef %12, i32 noundef %13, i32 noundef %14, i8* noundef %15), !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_xmlTextWriterVSprintf(i8* noundef %0, ...) #0 !dbg !54 {
  %2 = alloca i8*, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !59, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %3, metadata !61, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i8** %4, metadata !77, metadata !DIExpression()), !dbg !78
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !79
  %6 = bitcast %struct.__va_list_tag* %5 to i8*, !dbg !79
  call void @llvm.va_start(i8* %6), !dbg !79
  %7 = load i8*, i8** %2, align 8, !dbg !80
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !81
  %9 = call i8* @xmlTextWriterVSprintf(i8* noundef %7, %struct.__va_list_tag* noundef %8), !dbg !82
  store i8* %9, i8** %4, align 8, !dbg !83
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %3, i64 0, i64 0, !dbg !84
  %11 = bitcast %struct.__va_list_tag* %10 to i8*, !dbg !84
  call void @llvm.va_end(i8* %11), !dbg !84
  %12 = load i8*, i8** %4, align 8, !dbg !85
  %13 = icmp ne i8* %12, null, !dbg !85
  br i1 %13, label %14, label %16, !dbg !87

14:                                               ; preds = %1
  %15 = load i8*, i8** %4, align 8, !dbg !88
  call void @xmlFree(i8* noundef %15), !dbg !90
  br label %16, !dbg !91

16:                                               ; preds = %14, %1
  ret void, !dbg !92
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlTextWriterVSprintf(i8* noundef %0, %struct.__va_list_tag* noundef %1) #0 !dbg !93 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.__va_list_tag*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca [1 x %struct.__va_list_tag], align 16
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !97, metadata !DIExpression()), !dbg !98
  store %struct.__va_list_tag* %1, %struct.__va_list_tag** %5, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %5, metadata !99, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %6, metadata !101, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.declare(metadata i64* %7, metadata !103, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i8** %8, metadata !108, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %9, metadata !110, metadata !DIExpression()), !dbg !111
  store i64 1024, i64* %7, align 8, !dbg !112
  %10 = load i64, i64* %7, align 8, !dbg !113
  %11 = call i8* @xmlMalloc(i64 noundef %10), !dbg !114
  store i8* %11, i8** %8, align 8, !dbg !115
  %12 = load i8*, i8** %8, align 8, !dbg !116
  %13 = icmp eq i8* %12, null, !dbg !118
  br i1 %13, label %14, label %15, !dbg !119

14:                                               ; preds = %2
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 1000, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)), !dbg !120
  store i8* null, i8** %3, align 8, !dbg !122
  br label %89, !dbg !122

15:                                               ; preds = %2
  %16 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !123
  %17 = load %struct.__va_list_tag*, %struct.__va_list_tag** %5, align 8, !dbg !123
  %18 = bitcast %struct.__va_list_tag* %16 to i8*, !dbg !123
  %19 = bitcast %struct.__va_list_tag* %17 to i8*, !dbg !123
  %vacopy.cast.dst = bitcast i8* %18 to i64*, !dbg !123
  %vacopy.cast.src = bitcast i8* %19 to i64*, !dbg !123
  %20 = load i64, i64* %vacopy.cast.src, align 8, !dbg !123
  store volatile i64 %20, i64* %vacopy.cast.dst, align 8, !dbg !123
  %21 = getelementptr i64, i64* %vacopy.cast.dst, i64 1, !dbg !123
  %22 = getelementptr i64, i64* %vacopy.cast.src, i64 1, !dbg !123
  %23 = load i64, i64* %22, align 8, !dbg !123
  store i64 %23, i64* %21, align 8, !dbg !123
  %24 = getelementptr i64, i64* %21, i64 1, !dbg !123
  %25 = getelementptr i64, i64* %22, i64 1, !dbg !123
  %26 = load i64, i64* %25, align 8, !dbg !123
  store i64 %26, i64* %24, align 8, !dbg !123
  %27 = load i32, i32* %6, align 4, !dbg !124
  %28 = sext i32 %27 to i64, !dbg !124
  %29 = load i64, i64* %7, align 8, !dbg !124
  %30 = icmp ule i64 %28, %29, !dbg !124
  br i1 %30, label %31, label %33, !dbg !124

31:                                               ; preds = %15
  br i1 true, label %32, label %33, !dbg !124

32:                                               ; preds = %31
  br label %35, !dbg !124

33:                                               ; preds = %31, %15
  %34 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([39 x i8], [39 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.xmlTextWriterVSprintf, i64 0, i64 0)), !dbg !124
  br label %35, !dbg !124

35:                                               ; preds = %33, %32
  %36 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.7, i64 0, i64 0), i32 noundef 59, i8* noundef getelementptr inbounds ([69 x i8], [69 x i8]* @__PRETTY_FUNCTION__.xmlTextWriterVSprintf, i64 0, i64 0)), !dbg !125
  br label %37, !dbg !126

37:                                               ; preds = %73, %35
  %38 = load i8*, i8** %8, align 8, !dbg !127
  %39 = load i64, i64* %7, align 8, !dbg !128
  %40 = load i8*, i8** %4, align 8, !dbg !129
  %41 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !130
  %42 = call i32 @vsnprintf(i8* noundef %38, i64 noundef %39, i8* noundef %40, %struct.__va_list_tag* noundef %41), !dbg !131
  store i32 %42, i32* %6, align 4, !dbg !132
  %43 = icmp slt i32 %42, 0, !dbg !133
  br i1 %43, label %60, label %44, !dbg !134

44:                                               ; preds = %37
  %45 = load i32, i32* %6, align 4, !dbg !135
  %46 = sext i32 %45 to i64, !dbg !135
  %47 = load i64, i64* %7, align 8, !dbg !136
  %48 = sub i64 %47, 1, !dbg !137
  %49 = icmp eq i64 %46, %48, !dbg !138
  br i1 %49, label %60, label %50, !dbg !139

50:                                               ; preds = %44
  %51 = load i32, i32* %6, align 4, !dbg !140
  %52 = sext i32 %51 to i64, !dbg !140
  %53 = load i64, i64* %7, align 8, !dbg !141
  %54 = icmp eq i64 %52, %53, !dbg !142
  br i1 %54, label %60, label %55, !dbg !143

55:                                               ; preds = %50
  %56 = load i32, i32* %6, align 4, !dbg !144
  %57 = sext i32 %56 to i64, !dbg !144
  %58 = load i64, i64* %7, align 8, !dbg !145
  %59 = icmp ugt i64 %57, %58, !dbg !146
  br label %60, !dbg !143

60:                                               ; preds = %55, %50, %44, %37
  %61 = phi i1 [ true, %50 ], [ true, %44 ], [ true, %37 ], [ %59, %55 ]
  br i1 %61, label %62, label %85, !dbg !126

62:                                               ; preds = %60
  %63 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !147
  %64 = bitcast %struct.__va_list_tag* %63 to i8*, !dbg !147
  call void @llvm.va_end(i8* %64), !dbg !147
  %65 = load i8*, i8** %8, align 8, !dbg !149
  call void @xmlFree(i8* noundef %65), !dbg !150
  %66 = load i64, i64* %7, align 8, !dbg !151
  %67 = add i64 %66, 1024, !dbg !151
  store i64 %67, i64* %7, align 8, !dbg !151
  %68 = load i64, i64* %7, align 8, !dbg !152
  %69 = call i8* @xmlMalloc(i64 noundef %68), !dbg !153
  store i8* %69, i8** %8, align 8, !dbg !154
  %70 = load i8*, i8** %8, align 8, !dbg !155
  %71 = icmp eq i8* %70, null, !dbg !157
  br i1 %71, label %72, label %73, !dbg !158

72:                                               ; preds = %62
  call void @xmlWriterErrMsg(i8* noundef null, i32 noundef 1000, i8* noundef getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0)), !dbg !159
  store i8* null, i8** %3, align 8, !dbg !161
  br label %89, !dbg !161

73:                                               ; preds = %62
  %74 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !162
  %75 = load %struct.__va_list_tag*, %struct.__va_list_tag** %5, align 8, !dbg !162
  %76 = bitcast %struct.__va_list_tag* %74 to i8*, !dbg !162
  %77 = bitcast %struct.__va_list_tag* %75 to i8*, !dbg !162
  %vacopy.cast.dst1 = bitcast i8* %76 to i64*, !dbg !162
  %vacopy.cast.src2 = bitcast i8* %77 to i64*, !dbg !162
  %78 = load i64, i64* %vacopy.cast.src2, align 8, !dbg !162
  store volatile i64 %78, i64* %vacopy.cast.dst1, align 8, !dbg !162
  %79 = getelementptr i64, i64* %vacopy.cast.dst1, i64 1, !dbg !162
  %80 = getelementptr i64, i64* %vacopy.cast.src2, i64 1, !dbg !162
  %81 = load i64, i64* %80, align 8, !dbg !162
  store i64 %81, i64* %79, align 8, !dbg !162
  %82 = getelementptr i64, i64* %79, i64 1, !dbg !162
  %83 = getelementptr i64, i64* %80, i64 1, !dbg !162
  %84 = load i64, i64* %83, align 8, !dbg !162
  store i64 %84, i64* %82, align 8, !dbg !162
  br label %37, !dbg !126, !llvm.loop !163

85:                                               ; preds = %60
  %86 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %9, i64 0, i64 0, !dbg !166
  %87 = bitcast %struct.__va_list_tag* %86 to i8*, !dbg !166
  call void @llvm.va_end(i8* %87), !dbg !166
  %88 = load i8*, i8** %8, align 8, !dbg !167
  store i8* %88, i8** %3, align 8, !dbg !168
  br label %89, !dbg !168

89:                                               ; preds = %85, %72, %14
  %90 = load i8*, i8** %3, align 8, !dbg !169
  ret i8* %90, !dbg !169
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlFree(i8* noundef %0) #0 !dbg !170 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !173, metadata !DIExpression()), !dbg !174
  %3 = load i8*, i8** %2, align 8, !dbg !175
  call void @free(i8* noundef %3) #6, !dbg !176
  ret void, !dbg !177
}

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @xmlMalloc(i64 noundef %0) #0 !dbg !178 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !181, metadata !DIExpression()), !dbg !182
  %3 = load i64, i64* %2, align 8, !dbg !183
  %4 = call noalias i8* @malloc(i64 noundef %3) #6, !dbg !184
  ret i8* %4, !dbg !185
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xmlWriterErrMsg(i8* noundef %0, i32 noundef %1, i8* noundef %2) #0 !dbg !186 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !189, metadata !DIExpression()), !dbg !190
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !191, metadata !DIExpression()), !dbg !192
  store i8* %2, i8** %6, align 8
  call void @llvm.dbg.declare(metadata i8** %6, metadata !193, metadata !DIExpression()), !dbg !194
  %7 = load i8*, i8** %4, align 8, !dbg !195
  %8 = load i32, i32* %5, align 4, !dbg !196
  %9 = load i8*, i8** %6, align 8, !dbg !197
  ret void, !dbg !198
}

; Function Attrs: nofree nosync nounwind willreturn
declare void @llvm.va_copy(i8*, i8*) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

declare i32 @vsnprintf(i8* noundef, i64 noundef, i8* noundef, %struct.__va_list_tag* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #5

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nosync nounwind willreturn }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/186_xmlwriter.c_4484_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "7d952b4900eb523065c9b5e4dc9334c3")
!2 = !{!3, !6, !7}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 12, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 94, type: !18, scopeLine: 94, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !21)
!18 = !DISubroutineType(types: !19)
!19 = !{!20}
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{}
!22 = !DILocalVariable(name: "format", scope: !17, file: !1, line: 96, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 256, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 32)
!26 = !DILocation(line: 96, column: 10, scope: !17)
!27 = !DILocation(line: 97, column: 24, scope: !17)
!28 = !DILocation(line: 97, column: 5, scope: !17)
!29 = !DILocation(line: 100, column: 5, scope: !17)
!30 = !DILocation(line: 100, column: 30, scope: !17)
!31 = !DILocalVariable(name: "arg1", scope: !17, file: !1, line: 103, type: !20)
!32 = !DILocation(line: 103, column: 9, scope: !17)
!33 = !DILocalVariable(name: "arg2", scope: !17, file: !1, line: 103, type: !20)
!34 = !DILocation(line: 103, column: 15, scope: !17)
!35 = !DILocalVariable(name: "arg3", scope: !17, file: !1, line: 104, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 128, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: 16)
!39 = !DILocation(line: 104, column: 10, scope: !17)
!40 = !DILocation(line: 106, column: 24, scope: !17)
!41 = !DILocation(line: 106, column: 5, scope: !17)
!42 = !DILocation(line: 107, column: 24, scope: !17)
!43 = !DILocation(line: 107, column: 5, scope: !17)
!44 = !DILocation(line: 108, column: 24, scope: !17)
!45 = !DILocation(line: 108, column: 5, scope: !17)
!46 = !DILocation(line: 109, column: 5, scope: !17)
!47 = !DILocation(line: 109, column: 26, scope: !17)
!48 = !DILocation(line: 112, column: 32, scope: !17)
!49 = !DILocation(line: 112, column: 40, scope: !17)
!50 = !DILocation(line: 112, column: 46, scope: !17)
!51 = !DILocation(line: 112, column: 52, scope: !17)
!52 = !DILocation(line: 112, column: 5, scope: !17)
!53 = !DILocation(line: 114, column: 5, scope: !17)
!54 = distinct !DISubprogram(name: "call_xmlTextWriterVSprintf", scope: !1, file: !1, line: 81, type: !55, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !21)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, null}
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!59 = !DILocalVariable(name: "format", arg: 1, scope: !54, file: !1, line: 81, type: !57)
!60 = !DILocation(line: 81, column: 52, scope: !54)
!61 = !DILocalVariable(name: "args", scope: !54, file: !1, line: 82, type: !62)
!62 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !63, line: 14, baseType: !64)
!63 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stdarg.h", directory: "", checksumkind: CSK_MD5, checksum: "4de3cbd931b589d291e5c39387aecf82")
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !65, baseType: !66)
!65 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/186_xmlwriter.c_4484_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR")
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !67, size: 192, elements: !74)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", size: 192, elements: !68)
!68 = !{!69, !71, !72, !73}
!69 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !67, file: !65, line: 82, baseType: !70, size: 32)
!70 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !67, file: !65, line: 82, baseType: !70, size: 32, offset: 32)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !67, file: !65, line: 82, baseType: !6, size: 64, offset: 64)
!73 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !67, file: !65, line: 82, baseType: !6, size: 64, offset: 128)
!74 = !{!75}
!75 = !DISubrange(count: 1)
!76 = !DILocation(line: 82, column: 13, scope: !54)
!77 = !DILocalVariable(name: "result", scope: !54, file: !1, line: 83, type: !3)
!78 = !DILocation(line: 83, column: 14, scope: !54)
!79 = !DILocation(line: 85, column: 5, scope: !54)
!80 = !DILocation(line: 86, column: 36, scope: !54)
!81 = !DILocation(line: 86, column: 44, scope: !54)
!82 = !DILocation(line: 86, column: 14, scope: !54)
!83 = !DILocation(line: 86, column: 12, scope: !54)
!84 = !DILocation(line: 87, column: 5, scope: !54)
!85 = !DILocation(line: 89, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !54, file: !1, line: 89, column: 9)
!87 = !DILocation(line: 89, column: 9, scope: !54)
!88 = !DILocation(line: 90, column: 17, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 89, column: 17)
!90 = !DILocation(line: 90, column: 9, scope: !89)
!91 = !DILocation(line: 91, column: 5, scope: !89)
!92 = !DILocation(line: 92, column: 1, scope: !54)
!93 = distinct !DISubprogram(name: "xmlTextWriterVSprintf", scope: !1, file: !1, line: 38, type: !94, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !21)
!94 = !DISubroutineType(types: !95)
!95 = !{!3, !57, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!97 = !DILocalVariable(name: "format", arg: 1, scope: !93, file: !1, line: 38, type: !57)
!98 = !DILocation(line: 38, column: 51, scope: !93)
!99 = !DILocalVariable(name: "argptr", arg: 2, scope: !93, file: !1, line: 38, type: !96)
!100 = !DILocation(line: 38, column: 67, scope: !93)
!101 = !DILocalVariable(name: "count", scope: !93, file: !1, line: 39, type: !20)
!102 = !DILocation(line: 39, column: 9, scope: !93)
!103 = !DILocalVariable(name: "size", scope: !93, file: !1, line: 40, type: !104)
!104 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !105, line: 46, baseType: !106)
!105 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!106 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!107 = !DILocation(line: 40, column: 12, scope: !93)
!108 = !DILocalVariable(name: "buf", scope: !93, file: !1, line: 41, type: !3)
!109 = !DILocation(line: 41, column: 14, scope: !93)
!110 = !DILocalVariable(name: "locarg", scope: !93, file: !1, line: 42, type: !62)
!111 = !DILocation(line: 42, column: 13, scope: !93)
!112 = !DILocation(line: 44, column: 10, scope: !93)
!113 = !DILocation(line: 45, column: 32, scope: !93)
!114 = !DILocation(line: 45, column: 22, scope: !93)
!115 = !DILocation(line: 45, column: 9, scope: !93)
!116 = !DILocation(line: 46, column: 9, scope: !117)
!117 = distinct !DILexicalBlock(scope: !93, file: !1, line: 46, column: 9)
!118 = !DILocation(line: 46, column: 13, scope: !117)
!119 = !DILocation(line: 46, column: 9, scope: !93)
!120 = !DILocation(line: 47, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 46, column: 22)
!122 = !DILocation(line: 49, column: 9, scope: !121)
!123 = !DILocation(line: 53, column: 5, scope: !93)
!124 = !DILocation(line: 56, column: 5, scope: !93)
!125 = !DILocation(line: 59, column: 5, scope: !93)
!126 = !DILocation(line: 62, column: 5, scope: !93)
!127 = !DILocation(line: 62, column: 40, scope: !93)
!128 = !DILocation(line: 62, column: 45, scope: !93)
!129 = !DILocation(line: 62, column: 51, scope: !93)
!130 = !DILocation(line: 62, column: 59, scope: !93)
!131 = !DILocation(line: 62, column: 22, scope: !93)
!132 = !DILocation(line: 62, column: 20, scope: !93)
!133 = !DILocation(line: 62, column: 68, scope: !93)
!134 = !DILocation(line: 63, column: 12, scope: !93)
!135 = !DILocation(line: 63, column: 16, scope: !93)
!136 = !DILocation(line: 63, column: 25, scope: !93)
!137 = !DILocation(line: 63, column: 30, scope: !93)
!138 = !DILocation(line: 63, column: 22, scope: !93)
!139 = !DILocation(line: 63, column: 35, scope: !93)
!140 = !DILocation(line: 63, column: 39, scope: !93)
!141 = !DILocation(line: 63, column: 48, scope: !93)
!142 = !DILocation(line: 63, column: 45, scope: !93)
!143 = !DILocation(line: 63, column: 54, scope: !93)
!144 = !DILocation(line: 63, column: 58, scope: !93)
!145 = !DILocation(line: 63, column: 66, scope: !93)
!146 = !DILocation(line: 63, column: 64, scope: !93)
!147 = !DILocation(line: 64, column: 9, scope: !148)
!148 = distinct !DILexicalBlock(scope: !93, file: !1, line: 63, column: 73)
!149 = !DILocation(line: 65, column: 17, scope: !148)
!150 = !DILocation(line: 65, column: 9, scope: !148)
!151 = !DILocation(line: 66, column: 14, scope: !148)
!152 = !DILocation(line: 67, column: 36, scope: !148)
!153 = !DILocation(line: 67, column: 26, scope: !148)
!154 = !DILocation(line: 67, column: 13, scope: !148)
!155 = !DILocation(line: 68, column: 13, scope: !156)
!156 = distinct !DILexicalBlock(scope: !148, file: !1, line: 68, column: 13)
!157 = !DILocation(line: 68, column: 17, scope: !156)
!158 = !DILocation(line: 68, column: 13, scope: !148)
!159 = !DILocation(line: 69, column: 13, scope: !160)
!160 = distinct !DILexicalBlock(scope: !156, file: !1, line: 68, column: 26)
!161 = !DILocation(line: 71, column: 13, scope: !160)
!162 = !DILocation(line: 73, column: 9, scope: !148)
!163 = distinct !{!163, !126, !164, !165}
!164 = !DILocation(line: 74, column: 5, scope: !93)
!165 = !{!"llvm.loop.mustprogress"}
!166 = !DILocation(line: 76, column: 5, scope: !93)
!167 = !DILocation(line: 77, column: 12, scope: !93)
!168 = !DILocation(line: 77, column: 5, scope: !93)
!169 = !DILocation(line: 78, column: 1, scope: !93)
!170 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 26, type: !171, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !21)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !6}
!173 = !DILocalVariable(name: "ptr", arg: 1, scope: !170, file: !1, line: 26, type: !6)
!174 = !DILocation(line: 26, column: 27, scope: !170)
!175 = !DILocation(line: 27, column: 10, scope: !170)
!176 = !DILocation(line: 27, column: 5, scope: !170)
!177 = !DILocation(line: 28, column: 1, scope: !170)
!178 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 22, type: !179, scopeLine: 22, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !21)
!179 = !DISubroutineType(types: !180)
!180 = !{!6, !104}
!181 = !DILocalVariable(name: "size", arg: 1, scope: !178, file: !1, line: 22, type: !104)
!182 = !DILocation(line: 22, column: 31, scope: !178)
!183 = !DILocation(line: 23, column: 19, scope: !178)
!184 = !DILocation(line: 23, column: 12, scope: !178)
!185 = !DILocation(line: 23, column: 5, scope: !178)
!186 = distinct !DISubprogram(name: "xmlWriterErrMsg", scope: !1, file: !1, line: 17, type: !187, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !21)
!187 = !DISubroutineType(types: !188)
!188 = !{null, !6, !20, !57}
!189 = !DILocalVariable(name: "ctx", arg: 1, scope: !186, file: !1, line: 17, type: !6)
!190 = !DILocation(line: 17, column: 35, scope: !186)
!191 = !DILocalVariable(name: "error", arg: 2, scope: !186, file: !1, line: 17, type: !20)
!192 = !DILocation(line: 17, column: 44, scope: !186)
!193 = !DILocalVariable(name: "msg", arg: 3, scope: !186, file: !1, line: 17, type: !57)
!194 = !DILocation(line: 17, column: 63, scope: !186)
!195 = !DILocation(line: 19, column: 11, scope: !186)
!196 = !DILocation(line: 19, column: 22, scope: !186)
!197 = !DILocation(line: 19, column: 35, scope: !186)
!198 = !DILocation(line: 20, column: 1, scope: !186)

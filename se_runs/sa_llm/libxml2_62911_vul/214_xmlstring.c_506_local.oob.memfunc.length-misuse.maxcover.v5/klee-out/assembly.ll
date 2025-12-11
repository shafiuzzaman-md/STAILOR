; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"str1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(len >= 0 && len < 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrcat(i8* noundef %0, i8* noundef %1) #0 !dbg !23 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !29, metadata !DIExpression()), !dbg !30
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !31, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %6, metadata !33, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %7, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i8** %8, metadata !38, metadata !DIExpression()), !dbg !39
  %9 = load i8*, i8** %4, align 8, !dbg !40
  %10 = icmp eq i8* %9, null, !dbg !42
  br i1 %10, label %14, label %11, !dbg !43

11:                                               ; preds = %2
  %12 = load i8*, i8** %5, align 8, !dbg !44
  %13 = icmp eq i8* %12, null, !dbg !45
  br i1 %13, label %14, label %15, !dbg !46

14:                                               ; preds = %11, %2
  store i8* null, i8** %3, align 8, !dbg !47
  br label %56, !dbg !47

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !48
  %17 = call i64 @strlen(i8* noundef %16) #8, !dbg !49
  %18 = trunc i64 %17 to i32, !dbg !49
  store i32 %18, i32* %6, align 4, !dbg !50
  %19 = load i8*, i8** %5, align 8, !dbg !51
  %20 = call i64 @strlen(i8* noundef %19) #8, !dbg !52
  %21 = trunc i64 %20 to i32, !dbg !52
  store i32 %21, i32* %7, align 4, !dbg !53
  %22 = load i32, i32* %6, align 4, !dbg !54
  %23 = sext i32 %22 to i64, !dbg !55
  %24 = load i32, i32* %7, align 4, !dbg !56
  %25 = sext i32 %24 to i64, !dbg !56
  %26 = add i64 %23, %25, !dbg !57
  %27 = add i64 %26, 1, !dbg !58
  %28 = call i8* @xmlMalloc(i64 noundef %27), !dbg !59
  store i8* %28, i8** %8, align 8, !dbg !60
  %29 = load i8*, i8** %8, align 8, !dbg !61
  %30 = icmp eq i8* %29, null, !dbg !63
  br i1 %30, label %31, label %35, !dbg !64

31:                                               ; preds = %15
  %32 = load i8*, i8** %4, align 8, !dbg !65
  %33 = load i32, i32* %6, align 4, !dbg !67
  %34 = call i8* @xmlStrndup(i8* noundef %32, i32 noundef %33), !dbg !68
  store i8* %34, i8** %3, align 8, !dbg !69
  br label %56, !dbg !69

35:                                               ; preds = %15
  %36 = load i8*, i8** %8, align 8, !dbg !70
  %37 = load i8*, i8** %4, align 8, !dbg !71
  %38 = load i32, i32* %6, align 4, !dbg !72
  %39 = sext i32 %38 to i64, !dbg !72
  %40 = call i8* @memcpy(i8* %36, i8* %37, i64 %39), !dbg !73
  %41 = load i8*, i8** %8, align 8, !dbg !74
  %42 = load i32, i32* %6, align 4, !dbg !75
  %43 = sext i32 %42 to i64, !dbg !74
  %44 = getelementptr inbounds i8, i8* %41, i64 %43, !dbg !74
  %45 = load i8*, i8** %5, align 8, !dbg !76
  %46 = load i32, i32* %7, align 4, !dbg !77
  %47 = sext i32 %46 to i64, !dbg !77
  %48 = call i8* @memcpy(i8* %44, i8* %45, i64 %47), !dbg !78
  %49 = load i8*, i8** %8, align 8, !dbg !79
  %50 = load i32, i32* %6, align 4, !dbg !80
  %51 = load i32, i32* %7, align 4, !dbg !81
  %52 = add nsw i32 %50, %51, !dbg !82
  %53 = sext i32 %52 to i64, !dbg !79
  %54 = getelementptr inbounds i8, i8* %49, i64 %53, !dbg !79
  store i8 0, i8* %54, align 1, !dbg !83
  %55 = load i8*, i8** %8, align 8, !dbg !84
  store i8* %55, i8** %3, align 8, !dbg !85
  br label %56, !dbg !85

56:                                               ; preds = %35, %31, %14
  %57 = load i8*, i8** %3, align 8, !dbg !86
  ret i8* %57, !dbg !86
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !87 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !90, metadata !DIExpression()), !dbg !91
  %3 = load i64, i64* %2, align 8, !dbg !92
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !93
  ret i8* %4, !dbg !94
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !95 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !100, metadata !DIExpression()), !dbg !101
  %7 = load i8*, i8** %4, align 8, !dbg !102
  %8 = icmp eq i8* %7, null, !dbg !104
  br i1 %8, label %12, label %9, !dbg !105

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !106
  %11 = icmp slt i32 %10, 0, !dbg !107
  br i1 %11, label %12, label %13, !dbg !108

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !109
  br label %32, !dbg !109

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !110, metadata !DIExpression()), !dbg !111
  %14 = load i32, i32* %5, align 4, !dbg !112
  %15 = add nsw i32 %14, 1, !dbg !113
  %16 = sext i32 %15 to i64, !dbg !112
  %17 = call noalias i8* @malloc(i64 noundef %16) #9, !dbg !114
  store i8* %17, i8** %6, align 8, !dbg !111
  %18 = load i8*, i8** %6, align 8, !dbg !115
  %19 = icmp eq i8* %18, null, !dbg !117
  br i1 %19, label %20, label %21, !dbg !118

20:                                               ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !119
  br label %32, !dbg !119

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !120
  %23 = load i8*, i8** %4, align 8, !dbg !121
  %24 = load i32, i32* %5, align 4, !dbg !122
  %25 = sext i32 %24 to i64, !dbg !122
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !123
  %27 = load i8*, i8** %6, align 8, !dbg !124
  %28 = load i32, i32* %5, align 4, !dbg !125
  %29 = sext i32 %28 to i64, !dbg !124
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !124
  store i8 0, i8* %30, align 1, !dbg !126
  %31 = load i8*, i8** %6, align 8, !dbg !127
  store i8* %31, i8** %3, align 8, !dbg !128
  br label %32, !dbg !128

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !129
  ret i8* %33, !dbg !129
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !130 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !133, metadata !DIExpression()), !dbg !137
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !138, metadata !DIExpression()), !dbg !139
  call void @llvm.dbg.declare(metadata i32* %4, metadata !140, metadata !DIExpression()), !dbg !141
  call void @llvm.dbg.declare(metadata i32* %5, metadata !142, metadata !DIExpression()), !dbg !143
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !144
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !145
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !146
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !147
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !148
  store i8 0, i8* %9, align 1, !dbg !149
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !150
  store i8 0, i8* %10, align 1, !dbg !151
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !152
  %12 = call i64 @strlen(i8* noundef %11) #8, !dbg !153
  %13 = trunc i64 %12 to i32, !dbg !153
  store i32 %13, i32* %4, align 4, !dbg !154
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !155
  %15 = call i64 @strlen(i8* noundef %14) #8, !dbg !156
  %16 = trunc i64 %15 to i32, !dbg !156
  store i32 %16, i32* %5, align 4, !dbg !157
  %17 = load i32, i32* %4, align 4, !dbg !158
  %18 = icmp sge i32 %17, 0, !dbg !159
  br i1 %18, label %19, label %22, !dbg !160

19:                                               ; preds = %0
  %20 = load i32, i32* %4, align 4, !dbg !161
  %21 = icmp slt i32 %20, 256, !dbg !162
  br label %22

22:                                               ; preds = %19, %0
  %23 = phi i1 [ false, %0 ], [ %21, %19 ], !dbg !163
  %24 = zext i1 %23 to i32, !dbg !160
  %25 = sext i32 %24 to i64, !dbg !158
  call void @klee_assume(i64 noundef %25), !dbg !164
  %26 = load i32, i32* %5, align 4, !dbg !165
  %27 = icmp sge i32 %26, 0, !dbg !166
  br i1 %27, label %28, label %31, !dbg !167

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4, !dbg !168
  %30 = icmp slt i32 %29, 256, !dbg !169
  br label %31

31:                                               ; preds = %28, %22
  %32 = phi i1 [ false, %22 ], [ %30, %28 ], !dbg !163
  %33 = zext i1 %32 to i32, !dbg !167
  %34 = sext i32 %33 to i64, !dbg !165
  call void @klee_assume(i64 noundef %34), !dbg !170
  call void @llvm.dbg.declare(metadata i8** %6, metadata !171, metadata !DIExpression()), !dbg !172
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !173
  %36 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !174
  %37 = call i8* @xmlStrcat(i8* noundef %35, i8* noundef %36), !dbg !175
  store i8* %37, i8** %6, align 8, !dbg !172
  %38 = load i32, i32* %5, align 4, !dbg !176
  %39 = icmp sge i32 %38, 0, !dbg !176
  br i1 %39, label %40, label %45, !dbg !176

40:                                               ; preds = %31
  %41 = load i32, i32* %5, align 4, !dbg !176
  %42 = icmp slt i32 %41, 256, !dbg !176
  br i1 %42, label %43, label %45, !dbg !176

43:                                               ; preds = %40
  br i1 true, label %44, label %45, !dbg !176

44:                                               ; preds = %43
  br label %47, !dbg !176

45:                                               ; preds = %43, %40, %31
  %46 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 81, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !176
  br label %47, !dbg !176

47:                                               ; preds = %45, %44
  %48 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 84, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !177
  %49 = load i8*, i8** %6, align 8, !dbg !178
  %50 = icmp ne i8* %49, null, !dbg !180
  br i1 %50, label %51, label %53, !dbg !181

51:                                               ; preds = %47
  %52 = load i8*, i8** %6, align 8, !dbg !182
  call void @free(i8* noundef %52) #9, !dbg !183
  br label %53, !dbg !183

53:                                               ; preds = %51, %47
  ret i32 0, !dbg !184
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !185 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !191, metadata !DIExpression()), !dbg !192
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !193, metadata !DIExpression()), !dbg !194
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !195, metadata !DIExpression()), !dbg !196
  call void @llvm.dbg.declare(metadata i8** %7, metadata !197, metadata !DIExpression()), !dbg !199
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
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { argmemonly nofree nounwind willreturn }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind }

!llvm.dbg.cu = !{!0, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/214_xmlstring.c_506_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a8c834811b94e5361397e7904a27de87")
!2 = !{!3, !4, !7, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!6 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !9)
!9 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !11, line: 46, baseType: !12)
!11 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!12 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !14, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!14 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!15 = !{i32 7, !"Dwarf Version", i32 5}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{i32 7, !"PIC Level", i32 2}
!19 = !{i32 7, !"PIE Level", i32 2}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"Ubuntu clang version 14.0.6"}
!23 = distinct !DISubprogram(name: "xmlStrcat", scope: !1, file: !1, line: 15, type: !24, scopeLine: 15, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!24 = !DISubroutineType(types: !25)
!25 = !{!7, !7, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!28 = !{}
!29 = !DILocalVariable(name: "str1", arg: 1, scope: !23, file: !1, line: 15, type: !7)
!30 = !DILocation(line: 15, column: 29, scope: !23)
!31 = !DILocalVariable(name: "str2", arg: 2, scope: !23, file: !1, line: 15, type: !26)
!32 = !DILocation(line: 15, column: 50, scope: !23)
!33 = !DILocalVariable(name: "size", scope: !23, file: !1, line: 16, type: !34)
!34 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!35 = !DILocation(line: 16, column: 9, scope: !23)
!36 = !DILocalVariable(name: "len", scope: !23, file: !1, line: 16, type: !34)
!37 = !DILocation(line: 16, column: 15, scope: !23)
!38 = !DILocalVariable(name: "ret", scope: !23, file: !1, line: 17, type: !7)
!39 = !DILocation(line: 17, column: 14, scope: !23)
!40 = !DILocation(line: 19, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !23, file: !1, line: 19, column: 9)
!42 = !DILocation(line: 19, column: 14, scope: !41)
!43 = !DILocation(line: 19, column: 22, scope: !41)
!44 = !DILocation(line: 19, column: 25, scope: !41)
!45 = !DILocation(line: 19, column: 30, scope: !41)
!46 = !DILocation(line: 19, column: 9, scope: !23)
!47 = !DILocation(line: 19, column: 39, scope: !41)
!48 = !DILocation(line: 21, column: 32, scope: !23)
!49 = !DILocation(line: 21, column: 12, scope: !23)
!50 = !DILocation(line: 21, column: 10, scope: !23)
!51 = !DILocation(line: 22, column: 31, scope: !23)
!52 = !DILocation(line: 22, column: 11, scope: !23)
!53 = !DILocation(line: 22, column: 9, scope: !23)
!54 = !DILocation(line: 24, column: 39, scope: !23)
!55 = !DILocation(line: 24, column: 31, scope: !23)
!56 = !DILocation(line: 24, column: 46, scope: !23)
!57 = !DILocation(line: 24, column: 44, scope: !23)
!58 = !DILocation(line: 24, column: 50, scope: !23)
!59 = !DILocation(line: 24, column: 21, scope: !23)
!60 = !DILocation(line: 24, column: 9, scope: !23)
!61 = !DILocation(line: 25, column: 9, scope: !62)
!62 = distinct !DILexicalBlock(scope: !23, file: !1, line: 25, column: 9)
!63 = !DILocation(line: 25, column: 13, scope: !62)
!64 = !DILocation(line: 25, column: 9, scope: !23)
!65 = !DILocation(line: 26, column: 27, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !1, line: 25, column: 22)
!67 = !DILocation(line: 26, column: 33, scope: !66)
!68 = !DILocation(line: 26, column: 16, scope: !66)
!69 = !DILocation(line: 26, column: 9, scope: !66)
!70 = !DILocation(line: 29, column: 12, scope: !23)
!71 = !DILocation(line: 29, column: 17, scope: !23)
!72 = !DILocation(line: 29, column: 23, scope: !23)
!73 = !DILocation(line: 29, column: 5, scope: !23)
!74 = !DILocation(line: 30, column: 13, scope: !23)
!75 = !DILocation(line: 30, column: 17, scope: !23)
!76 = !DILocation(line: 30, column: 24, scope: !23)
!77 = !DILocation(line: 30, column: 30, scope: !23)
!78 = !DILocation(line: 30, column: 5, scope: !23)
!79 = !DILocation(line: 31, column: 5, scope: !23)
!80 = !DILocation(line: 31, column: 9, scope: !23)
!81 = !DILocation(line: 31, column: 16, scope: !23)
!82 = !DILocation(line: 31, column: 14, scope: !23)
!83 = !DILocation(line: 31, column: 21, scope: !23)
!84 = !DILocation(line: 32, column: 12, scope: !23)
!85 = !DILocation(line: 32, column: 5, scope: !23)
!86 = !DILocation(line: 33, column: 1, scope: !23)
!87 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 36, type: !88, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!88 = !DISubroutineType(types: !89)
!89 = !{!7, !10}
!90 = !DILocalVariable(name: "size", arg: 1, scope: !87, file: !1, line: 36, type: !10)
!91 = !DILocation(line: 36, column: 27, scope: !87)
!92 = !DILocation(line: 37, column: 29, scope: !87)
!93 = !DILocation(line: 37, column: 22, scope: !87)
!94 = !DILocation(line: 37, column: 5, scope: !87)
!95 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 40, type: !96, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!96 = !DISubroutineType(types: !97)
!97 = !{!7, !26, !34}
!98 = !DILocalVariable(name: "str", arg: 1, scope: !95, file: !1, line: 40, type: !26)
!99 = !DILocation(line: 40, column: 36, scope: !95)
!100 = !DILocalVariable(name: "size", arg: 2, scope: !95, file: !1, line: 40, type: !34)
!101 = !DILocation(line: 40, column: 45, scope: !95)
!102 = !DILocation(line: 41, column: 9, scope: !103)
!103 = distinct !DILexicalBlock(scope: !95, file: !1, line: 41, column: 9)
!104 = !DILocation(line: 41, column: 13, scope: !103)
!105 = !DILocation(line: 41, column: 21, scope: !103)
!106 = !DILocation(line: 41, column: 24, scope: !103)
!107 = !DILocation(line: 41, column: 29, scope: !103)
!108 = !DILocation(line: 41, column: 9, scope: !95)
!109 = !DILocation(line: 41, column: 34, scope: !103)
!110 = !DILocalVariable(name: "copy", scope: !95, file: !1, line: 42, type: !7)
!111 = !DILocation(line: 42, column: 14, scope: !95)
!112 = !DILocation(line: 42, column: 38, scope: !95)
!113 = !DILocation(line: 42, column: 43, scope: !95)
!114 = !DILocation(line: 42, column: 31, scope: !95)
!115 = !DILocation(line: 43, column: 9, scope: !116)
!116 = distinct !DILexicalBlock(scope: !95, file: !1, line: 43, column: 9)
!117 = !DILocation(line: 43, column: 14, scope: !116)
!118 = !DILocation(line: 43, column: 9, scope: !95)
!119 = !DILocation(line: 43, column: 23, scope: !116)
!120 = !DILocation(line: 44, column: 12, scope: !95)
!121 = !DILocation(line: 44, column: 18, scope: !95)
!122 = !DILocation(line: 44, column: 23, scope: !95)
!123 = !DILocation(line: 44, column: 5, scope: !95)
!124 = !DILocation(line: 45, column: 5, scope: !95)
!125 = !DILocation(line: 45, column: 10, scope: !95)
!126 = !DILocation(line: 45, column: 16, scope: !95)
!127 = !DILocation(line: 46, column: 12, scope: !95)
!128 = !DILocation(line: 46, column: 5, scope: !95)
!129 = !DILocation(line: 47, column: 1, scope: !95)
!130 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 49, type: !131, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!131 = !DISubroutineType(types: !132)
!132 = !{!34}
!133 = !DILocalVariable(name: "str1", scope: !130, file: !1, line: 51, type: !134)
!134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !135)
!135 = !{!136}
!136 = !DISubrange(count: 256)
!137 = !DILocation(line: 51, column: 13, scope: !130)
!138 = !DILocalVariable(name: "str2", scope: !130, file: !1, line: 52, type: !134)
!139 = !DILocation(line: 52, column: 13, scope: !130)
!140 = !DILocalVariable(name: "size", scope: !130, file: !1, line: 53, type: !34)
!141 = !DILocation(line: 53, column: 9, scope: !130)
!142 = !DILocalVariable(name: "len", scope: !130, file: !1, line: 53, type: !34)
!143 = !DILocation(line: 53, column: 15, scope: !130)
!144 = !DILocation(line: 56, column: 24, scope: !130)
!145 = !DILocation(line: 56, column: 5, scope: !130)
!146 = !DILocation(line: 57, column: 24, scope: !130)
!147 = !DILocation(line: 57, column: 5, scope: !130)
!148 = !DILocation(line: 60, column: 5, scope: !130)
!149 = !DILocation(line: 60, column: 15, scope: !130)
!150 = !DILocation(line: 61, column: 5, scope: !130)
!151 = !DILocation(line: 61, column: 15, scope: !130)
!152 = !DILocation(line: 64, column: 32, scope: !130)
!153 = !DILocation(line: 64, column: 12, scope: !130)
!154 = !DILocation(line: 64, column: 10, scope: !130)
!155 = !DILocation(line: 65, column: 31, scope: !130)
!156 = !DILocation(line: 65, column: 11, scope: !130)
!157 = !DILocation(line: 65, column: 9, scope: !130)
!158 = !DILocation(line: 68, column: 17, scope: !130)
!159 = !DILocation(line: 68, column: 22, scope: !130)
!160 = !DILocation(line: 68, column: 27, scope: !130)
!161 = !DILocation(line: 68, column: 30, scope: !130)
!162 = !DILocation(line: 68, column: 35, scope: !130)
!163 = !DILocation(line: 0, scope: !130)
!164 = !DILocation(line: 68, column: 5, scope: !130)
!165 = !DILocation(line: 69, column: 17, scope: !130)
!166 = !DILocation(line: 69, column: 21, scope: !130)
!167 = !DILocation(line: 69, column: 26, scope: !130)
!168 = !DILocation(line: 69, column: 29, scope: !130)
!169 = !DILocation(line: 69, column: 33, scope: !130)
!170 = !DILocation(line: 69, column: 5, scope: !130)
!171 = !DILocalVariable(name: "result", scope: !130, file: !1, line: 72, type: !7)
!172 = !DILocation(line: 72, column: 14, scope: !130)
!173 = !DILocation(line: 72, column: 33, scope: !130)
!174 = !DILocation(line: 72, column: 39, scope: !130)
!175 = !DILocation(line: 72, column: 23, scope: !130)
!176 = !DILocation(line: 81, column: 5, scope: !130)
!177 = !DILocation(line: 84, column: 5, scope: !130)
!178 = !DILocation(line: 87, column: 9, scope: !179)
!179 = distinct !DILexicalBlock(scope: !130, file: !1, line: 87, column: 9)
!180 = !DILocation(line: 87, column: 16, scope: !179)
!181 = !DILocation(line: 87, column: 9, scope: !130)
!182 = !DILocation(line: 87, column: 30, scope: !179)
!183 = !DILocation(line: 87, column: 25, scope: !179)
!184 = !DILocation(line: 89, column: 5, scope: !130)
!185 = distinct !DISubprogram(name: "memcpy", scope: !186, file: !186, line: 12, type: !187, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !28)
!186 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!187 = !DISubroutineType(types: !188)
!188 = !{!3, !3, !189, !10}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!191 = !DILocalVariable(name: "destaddr", arg: 1, scope: !185, file: !186, line: 12, type: !3)
!192 = !DILocation(line: 12, column: 20, scope: !185)
!193 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !185, file: !186, line: 12, type: !189)
!194 = !DILocation(line: 12, column: 42, scope: !185)
!195 = !DILocalVariable(name: "len", arg: 3, scope: !185, file: !186, line: 12, type: !10)
!196 = !DILocation(line: 12, column: 58, scope: !185)
!197 = !DILocalVariable(name: "dest", scope: !185, file: !186, line: 13, type: !198)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!199 = !DILocation(line: 13, column: 9, scope: !185)
!200 = !DILocation(line: 13, column: 16, scope: !185)
!201 = !DILocalVariable(name: "src", scope: !185, file: !186, line: 14, type: !4)
!202 = !DILocation(line: 14, column: 15, scope: !185)
!203 = !DILocation(line: 14, column: 21, scope: !185)
!204 = !DILocation(line: 16, column: 3, scope: !185)
!205 = !DILocation(line: 16, column: 13, scope: !185)
!206 = !DILocation(line: 16, column: 16, scope: !185)
!207 = !DILocation(line: 17, column: 19, scope: !185)
!208 = !DILocation(line: 17, column: 15, scope: !185)
!209 = !DILocation(line: 17, column: 10, scope: !185)
!210 = !DILocation(line: 17, column: 13, scope: !185)
!211 = distinct !{!211, !204, !207, !212}
!212 = !{!"llvm.loop.mustprogress"}
!213 = !DILocation(line: 18, column: 10, scope: !185)
!214 = !DILocation(line: 18, column: 3, scope: !185)

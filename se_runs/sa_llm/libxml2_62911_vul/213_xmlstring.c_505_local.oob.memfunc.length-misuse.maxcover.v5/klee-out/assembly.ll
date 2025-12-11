; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"str1\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"str2\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"(len >= 0 && len < 256) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [107 x i8] c"se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
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
  br label %60, !dbg !47

15:                                               ; preds = %11
  %16 = load i8*, i8** %4, align 8, !dbg !48
  %17 = call i64 @strlen(i8* noundef %16) #8, !dbg !49
  %18 = trunc i64 %17 to i32, !dbg !49
  store i32 %18, i32* %6, align 4, !dbg !50
  %19 = load i8*, i8** %5, align 8, !dbg !51
  %20 = call i64 @strlen(i8* noundef %19) #8, !dbg !52
  %21 = trunc i64 %20 to i32, !dbg !52
  store i32 %21, i32* %7, align 4, !dbg !53
  %22 = load i32, i32* %7, align 4, !dbg !54
  %23 = icmp slt i32 %22, 0, !dbg !56
  br i1 %23, label %24, label %25, !dbg !57

24:                                               ; preds = %15
  store i8* null, i8** %3, align 8, !dbg !58
  br label %60, !dbg !58

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4, !dbg !59
  %27 = sext i32 %26 to i64, !dbg !60
  %28 = load i32, i32* %7, align 4, !dbg !61
  %29 = sext i32 %28 to i64, !dbg !61
  %30 = add i64 %27, %29, !dbg !62
  %31 = add i64 %30, 1, !dbg !63
  %32 = call i8* @xmlMalloc(i64 noundef %31), !dbg !64
  store i8* %32, i8** %8, align 8, !dbg !65
  %33 = load i8*, i8** %8, align 8, !dbg !66
  %34 = icmp eq i8* %33, null, !dbg !68
  br i1 %34, label %35, label %39, !dbg !69

35:                                               ; preds = %25
  %36 = load i8*, i8** %4, align 8, !dbg !70
  %37 = load i32, i32* %6, align 4, !dbg !72
  %38 = call i8* @xmlStrndup(i8* noundef %36, i32 noundef %37), !dbg !73
  store i8* %38, i8** %3, align 8, !dbg !74
  br label %60, !dbg !74

39:                                               ; preds = %25
  %40 = load i8*, i8** %8, align 8, !dbg !75
  %41 = load i8*, i8** %4, align 8, !dbg !76
  %42 = load i32, i32* %6, align 4, !dbg !77
  %43 = sext i32 %42 to i64, !dbg !77
  %44 = call i8* @memcpy(i8* %40, i8* %41, i64 %43), !dbg !78
  %45 = load i8*, i8** %8, align 8, !dbg !79
  %46 = load i32, i32* %6, align 4, !dbg !80
  %47 = sext i32 %46 to i64, !dbg !79
  %48 = getelementptr inbounds i8, i8* %45, i64 %47, !dbg !79
  %49 = load i8*, i8** %5, align 8, !dbg !81
  %50 = load i32, i32* %7, align 4, !dbg !82
  %51 = sext i32 %50 to i64, !dbg !82
  %52 = call i8* @memcpy(i8* %48, i8* %49, i64 %51), !dbg !83
  %53 = load i8*, i8** %8, align 8, !dbg !84
  %54 = load i32, i32* %6, align 4, !dbg !85
  %55 = load i32, i32* %7, align 4, !dbg !86
  %56 = add nsw i32 %54, %55, !dbg !87
  %57 = sext i32 %56 to i64, !dbg !84
  %58 = getelementptr inbounds i8, i8* %53, i64 %57, !dbg !84
  store i8 0, i8* %58, align 1, !dbg !88
  %59 = load i8*, i8** %8, align 8, !dbg !89
  store i8* %59, i8** %3, align 8, !dbg !90
  br label %60, !dbg !90

60:                                               ; preds = %39, %35, %24, %14
  %61 = load i8*, i8** %3, align 8, !dbg !91
  ret i8* %61, !dbg !91
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMalloc(i64 noundef %0) #0 !dbg !92 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !95, metadata !DIExpression()), !dbg !96
  %3 = load i64, i64* %2, align 8, !dbg !97
  %4 = call noalias i8* @malloc(i64 noundef %3) #9, !dbg !98
  ret i8* %4, !dbg !99
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlStrndup(i8* noundef %0, i32 noundef %1) #0 !dbg !100 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !103, metadata !DIExpression()), !dbg !104
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !105, metadata !DIExpression()), !dbg !106
  %7 = load i8*, i8** %4, align 8, !dbg !107
  %8 = icmp eq i8* %7, null, !dbg !109
  br i1 %8, label %12, label %9, !dbg !110

9:                                                ; preds = %2
  %10 = load i32, i32* %5, align 4, !dbg !111
  %11 = icmp slt i32 %10, 0, !dbg !112
  br i1 %11, label %12, label %13, !dbg !113

12:                                               ; preds = %9, %2
  store i8* null, i8** %3, align 8, !dbg !114
  br label %32, !dbg !114

13:                                               ; preds = %9
  call void @llvm.dbg.declare(metadata i8** %6, metadata !115, metadata !DIExpression()), !dbg !116
  %14 = load i32, i32* %5, align 4, !dbg !117
  %15 = add nsw i32 %14, 1, !dbg !118
  %16 = sext i32 %15 to i64, !dbg !117
  %17 = call noalias i8* @malloc(i64 noundef %16) #9, !dbg !119
  store i8* %17, i8** %6, align 8, !dbg !116
  %18 = load i8*, i8** %6, align 8, !dbg !120
  %19 = icmp eq i8* %18, null, !dbg !122
  br i1 %19, label %20, label %21, !dbg !123

20:                                               ; preds = %13
  store i8* null, i8** %3, align 8, !dbg !124
  br label %32, !dbg !124

21:                                               ; preds = %13
  %22 = load i8*, i8** %6, align 8, !dbg !125
  %23 = load i8*, i8** %4, align 8, !dbg !126
  %24 = load i32, i32* %5, align 4, !dbg !127
  %25 = sext i32 %24 to i64, !dbg !127
  %26 = call i8* @memcpy(i8* %22, i8* %23, i64 %25), !dbg !128
  %27 = load i8*, i8** %6, align 8, !dbg !129
  %28 = load i32, i32* %5, align 4, !dbg !130
  %29 = sext i32 %28 to i64, !dbg !129
  %30 = getelementptr inbounds i8, i8* %27, i64 %29, !dbg !129
  store i8 0, i8* %30, align 1, !dbg !131
  %31 = load i8*, i8** %6, align 8, !dbg !132
  store i8* %31, i8** %3, align 8, !dbg !133
  br label %32, !dbg !133

32:                                               ; preds = %21, %20, %12
  %33 = load i8*, i8** %3, align 8, !dbg !134
  ret i8* %33, !dbg !134
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !135 {
  %1 = alloca i32, align 4
  %2 = alloca [256 x i8], align 16
  %3 = alloca [256 x i8], align 16
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [256 x i8]* %2, metadata !138, metadata !DIExpression()), !dbg !142
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !143, metadata !DIExpression()), !dbg !144
  %7 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !145
  call void @klee_make_symbolic(i8* noundef %7, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)), !dbg !146
  %8 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !147
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 256, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0)), !dbg !148
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 255, !dbg !149
  %10 = load i8, i8* %9, align 1, !dbg !149
  %11 = zext i8 %10 to i32, !dbg !149
  %12 = icmp eq i32 %11, 0, !dbg !150
  %13 = zext i1 %12 to i32, !dbg !150
  %14 = sext i32 %13 to i64, !dbg !149
  call void @klee_assume(i64 noundef %14), !dbg !151
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 255, !dbg !152
  %16 = load i8, i8* %15, align 1, !dbg !152
  %17 = zext i8 %16 to i32, !dbg !152
  %18 = icmp eq i32 %17, 0, !dbg !153
  %19 = zext i1 %18 to i32, !dbg !153
  %20 = sext i32 %19 to i64, !dbg !152
  call void @klee_assume(i64 noundef %20), !dbg !154
  call void @llvm.dbg.declare(metadata i8** %4, metadata !155, metadata !DIExpression()), !dbg !156
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !157
  %22 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !158
  %23 = call i8* @xmlStrcat(i8* noundef %21, i8* noundef %22), !dbg !159
  store i8* %23, i8** %4, align 8, !dbg !156
  call void @llvm.dbg.declare(metadata i32* %5, metadata !160, metadata !DIExpression()), !dbg !161
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !162
  %25 = call i64 @strlen(i8* noundef %24) #8, !dbg !163
  %26 = trunc i64 %25 to i32, !dbg !163
  store i32 %26, i32* %5, align 4, !dbg !161
  call void @llvm.dbg.declare(metadata i32* %6, metadata !164, metadata !DIExpression()), !dbg !165
  %27 = getelementptr inbounds [256 x i8], [256 x i8]* %2, i64 0, i64 0, !dbg !166
  %28 = call i64 @strlen(i8* noundef %27) #8, !dbg !167
  %29 = trunc i64 %28 to i32, !dbg !167
  store i32 %29, i32* %6, align 4, !dbg !165
  %30 = load i32, i32* %5, align 4, !dbg !168
  %31 = icmp sge i32 %30, 0, !dbg !168
  br i1 %31, label %32, label %37, !dbg !168

32:                                               ; preds = %0
  %33 = load i32, i32* %5, align 4, !dbg !168
  %34 = icmp slt i32 %33, 256, !dbg !168
  br i1 %34, label %35, label %37, !dbg !168

35:                                               ; preds = %32
  br i1 true, label %36, label %37, !dbg !168

36:                                               ; preds = %35
  br label %39, !dbg !168

37:                                               ; preds = %35, %32, %0
  %38 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 79, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !168
  br label %39, !dbg !168

39:                                               ; preds = %37, %36
  %40 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i8* noundef getelementptr inbounds ([107 x i8], [107 x i8]* @.str.4, i64 0, i64 0), i32 noundef 82, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !169
  %41 = load i8*, i8** %4, align 8, !dbg !170
  call void @free(i8* noundef %41) #9, !dbg !171
  ret i32 0, !dbg !172
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #7 !dbg !173 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !179, metadata !DIExpression()), !dbg !180
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !181, metadata !DIExpression()), !dbg !182
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !183, metadata !DIExpression()), !dbg !184
  call void @llvm.dbg.declare(metadata i8** %7, metadata !185, metadata !DIExpression()), !dbg !187
  %9 = load i8*, i8** %4, align 8, !dbg !188
  store i8* %9, i8** %7, align 8, !dbg !187
  call void @llvm.dbg.declare(metadata i8** %8, metadata !189, metadata !DIExpression()), !dbg !190
  %10 = load i8*, i8** %5, align 8, !dbg !191
  store i8* %10, i8** %8, align 8, !dbg !190
  br label %11, !dbg !192

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !193
  %13 = add i64 %12, -1, !dbg !193
  store i64 %13, i64* %6, align 8, !dbg !193
  %14 = icmp ugt i64 %12, 0, !dbg !194
  br i1 %14, label %15, label %21, !dbg !192

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !195
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !195
  store i8* %17, i8** %8, align 8, !dbg !195
  %18 = load i8, i8* %16, align 1, !dbg !196
  %19 = load i8*, i8** %7, align 8, !dbg !197
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !197
  store i8* %20, i8** %7, align 8, !dbg !197
  store i8 %18, i8* %19, align 1, !dbg !198
  br label %11, !dbg !192, !llvm.loop !199

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !201
  ret i8* %22, !dbg !202
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
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/213_xmlstring.c_505_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "86e8f00cc16e910f89d613cd626a3866")
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
!47 = !DILocation(line: 20, column: 9, scope: !41)
!48 = !DILocation(line: 22, column: 32, scope: !23)
!49 = !DILocation(line: 22, column: 12, scope: !23)
!50 = !DILocation(line: 22, column: 10, scope: !23)
!51 = !DILocation(line: 23, column: 31, scope: !23)
!52 = !DILocation(line: 23, column: 11, scope: !23)
!53 = !DILocation(line: 23, column: 9, scope: !23)
!54 = !DILocation(line: 25, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !23, file: !1, line: 25, column: 9)
!56 = !DILocation(line: 25, column: 13, scope: !55)
!57 = !DILocation(line: 25, column: 9, scope: !23)
!58 = !DILocation(line: 26, column: 9, scope: !55)
!59 = !DILocation(line: 27, column: 42, scope: !23)
!60 = !DILocation(line: 27, column: 33, scope: !23)
!61 = !DILocation(line: 27, column: 49, scope: !23)
!62 = !DILocation(line: 27, column: 47, scope: !23)
!63 = !DILocation(line: 27, column: 53, scope: !23)
!64 = !DILocation(line: 27, column: 23, scope: !23)
!65 = !DILocation(line: 27, column: 9, scope: !23)
!66 = !DILocation(line: 28, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !23, file: !1, line: 28, column: 9)
!68 = !DILocation(line: 28, column: 13, scope: !67)
!69 = !DILocation(line: 28, column: 9, scope: !23)
!70 = !DILocation(line: 29, column: 27, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 28, column: 22)
!72 = !DILocation(line: 29, column: 33, scope: !71)
!73 = !DILocation(line: 29, column: 16, scope: !71)
!74 = !DILocation(line: 29, column: 9, scope: !71)
!75 = !DILocation(line: 31, column: 12, scope: !23)
!76 = !DILocation(line: 31, column: 17, scope: !23)
!77 = !DILocation(line: 31, column: 23, scope: !23)
!78 = !DILocation(line: 31, column: 5, scope: !23)
!79 = !DILocation(line: 32, column: 13, scope: !23)
!80 = !DILocation(line: 32, column: 17, scope: !23)
!81 = !DILocation(line: 32, column: 24, scope: !23)
!82 = !DILocation(line: 32, column: 30, scope: !23)
!83 = !DILocation(line: 32, column: 5, scope: !23)
!84 = !DILocation(line: 33, column: 5, scope: !23)
!85 = !DILocation(line: 33, column: 9, scope: !23)
!86 = !DILocation(line: 33, column: 16, scope: !23)
!87 = !DILocation(line: 33, column: 14, scope: !23)
!88 = !DILocation(line: 33, column: 21, scope: !23)
!89 = !DILocation(line: 34, column: 12, scope: !23)
!90 = !DILocation(line: 34, column: 5, scope: !23)
!91 = !DILocation(line: 35, column: 1, scope: !23)
!92 = distinct !DISubprogram(name: "xmlMalloc", scope: !1, file: !1, line: 38, type: !93, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!93 = !DISubroutineType(types: !94)
!94 = !{!7, !10}
!95 = !DILocalVariable(name: "size", arg: 1, scope: !92, file: !1, line: 38, type: !10)
!96 = !DILocation(line: 38, column: 27, scope: !92)
!97 = !DILocation(line: 39, column: 29, scope: !92)
!98 = !DILocation(line: 39, column: 22, scope: !92)
!99 = !DILocation(line: 39, column: 5, scope: !92)
!100 = distinct !DISubprogram(name: "xmlStrndup", scope: !1, file: !1, line: 42, type: !101, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!101 = !DISubroutineType(types: !102)
!102 = !{!7, !26, !34}
!103 = !DILocalVariable(name: "str", arg: 1, scope: !100, file: !1, line: 42, type: !26)
!104 = !DILocation(line: 42, column: 36, scope: !100)
!105 = !DILocalVariable(name: "size", arg: 2, scope: !100, file: !1, line: 42, type: !34)
!106 = !DILocation(line: 42, column: 45, scope: !100)
!107 = !DILocation(line: 43, column: 9, scope: !108)
!108 = distinct !DILexicalBlock(scope: !100, file: !1, line: 43, column: 9)
!109 = !DILocation(line: 43, column: 13, scope: !108)
!110 = !DILocation(line: 43, column: 21, scope: !108)
!111 = !DILocation(line: 43, column: 24, scope: !108)
!112 = !DILocation(line: 43, column: 29, scope: !108)
!113 = !DILocation(line: 43, column: 9, scope: !100)
!114 = !DILocation(line: 43, column: 34, scope: !108)
!115 = !DILocalVariable(name: "ret", scope: !100, file: !1, line: 44, type: !7)
!116 = !DILocation(line: 44, column: 14, scope: !100)
!117 = !DILocation(line: 44, column: 37, scope: !100)
!118 = !DILocation(line: 44, column: 42, scope: !100)
!119 = !DILocation(line: 44, column: 30, scope: !100)
!120 = !DILocation(line: 45, column: 9, scope: !121)
!121 = distinct !DILexicalBlock(scope: !100, file: !1, line: 45, column: 9)
!122 = !DILocation(line: 45, column: 13, scope: !121)
!123 = !DILocation(line: 45, column: 9, scope: !100)
!124 = !DILocation(line: 45, column: 22, scope: !121)
!125 = !DILocation(line: 46, column: 12, scope: !100)
!126 = !DILocation(line: 46, column: 17, scope: !100)
!127 = !DILocation(line: 46, column: 22, scope: !100)
!128 = !DILocation(line: 46, column: 5, scope: !100)
!129 = !DILocation(line: 47, column: 5, scope: !100)
!130 = !DILocation(line: 47, column: 9, scope: !100)
!131 = !DILocation(line: 47, column: 15, scope: !100)
!132 = !DILocation(line: 48, column: 12, scope: !100)
!133 = !DILocation(line: 48, column: 5, scope: !100)
!134 = !DILocation(line: 49, column: 1, scope: !100)
!135 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !136, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !28)
!136 = !DISubroutineType(types: !137)
!137 = !{!34}
!138 = !DILocalVariable(name: "str1", scope: !135, file: !1, line: 53, type: !139)
!139 = !DICompositeType(tag: DW_TAG_array_type, baseType: !8, size: 2048, elements: !140)
!140 = !{!141}
!141 = !DISubrange(count: 256)
!142 = !DILocation(line: 53, column: 13, scope: !135)
!143 = !DILocalVariable(name: "str2", scope: !135, file: !1, line: 54, type: !139)
!144 = !DILocation(line: 54, column: 13, scope: !135)
!145 = !DILocation(line: 56, column: 24, scope: !135)
!146 = !DILocation(line: 56, column: 5, scope: !135)
!147 = !DILocation(line: 57, column: 24, scope: !135)
!148 = !DILocation(line: 57, column: 5, scope: !135)
!149 = !DILocation(line: 60, column: 17, scope: !135)
!150 = !DILocation(line: 60, column: 27, scope: !135)
!151 = !DILocation(line: 60, column: 5, scope: !135)
!152 = !DILocation(line: 61, column: 17, scope: !135)
!153 = !DILocation(line: 61, column: 27, scope: !135)
!154 = !DILocation(line: 61, column: 5, scope: !135)
!155 = !DILocalVariable(name: "result", scope: !135, file: !1, line: 64, type: !7)
!156 = !DILocation(line: 64, column: 14, scope: !135)
!157 = !DILocation(line: 64, column: 33, scope: !135)
!158 = !DILocation(line: 64, column: 39, scope: !135)
!159 = !DILocation(line: 64, column: 23, scope: !135)
!160 = !DILocalVariable(name: "len", scope: !135, file: !1, line: 67, type: !34)
!161 = !DILocation(line: 67, column: 9, scope: !135)
!162 = !DILocation(line: 67, column: 35, scope: !135)
!163 = !DILocation(line: 67, column: 15, scope: !135)
!164 = !DILocalVariable(name: "size", scope: !135, file: !1, line: 68, type: !34)
!165 = !DILocation(line: 68, column: 9, scope: !135)
!166 = !DILocation(line: 68, column: 36, scope: !135)
!167 = !DILocation(line: 68, column: 16, scope: !135)
!168 = !DILocation(line: 79, column: 5, scope: !135)
!169 = !DILocation(line: 82, column: 5, scope: !135)
!170 = !DILocation(line: 85, column: 10, scope: !135)
!171 = !DILocation(line: 85, column: 5, scope: !135)
!172 = !DILocation(line: 86, column: 5, scope: !135)
!173 = distinct !DISubprogram(name: "memcpy", scope: !174, file: !174, line: 12, type: !175, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !28)
!174 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!175 = !DISubroutineType(types: !176)
!176 = !{!3, !3, !177, !10}
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!179 = !DILocalVariable(name: "destaddr", arg: 1, scope: !173, file: !174, line: 12, type: !3)
!180 = !DILocation(line: 12, column: 20, scope: !173)
!181 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !173, file: !174, line: 12, type: !177)
!182 = !DILocation(line: 12, column: 42, scope: !173)
!183 = !DILocalVariable(name: "len", arg: 3, scope: !173, file: !174, line: 12, type: !10)
!184 = !DILocation(line: 12, column: 58, scope: !173)
!185 = !DILocalVariable(name: "dest", scope: !173, file: !174, line: 13, type: !186)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!187 = !DILocation(line: 13, column: 9, scope: !173)
!188 = !DILocation(line: 13, column: 16, scope: !173)
!189 = !DILocalVariable(name: "src", scope: !173, file: !174, line: 14, type: !4)
!190 = !DILocation(line: 14, column: 15, scope: !173)
!191 = !DILocation(line: 14, column: 21, scope: !173)
!192 = !DILocation(line: 16, column: 3, scope: !173)
!193 = !DILocation(line: 16, column: 13, scope: !173)
!194 = !DILocation(line: 16, column: 16, scope: !173)
!195 = !DILocation(line: 17, column: 19, scope: !173)
!196 = !DILocation(line: 17, column: 15, scope: !173)
!197 = !DILocation(line: 17, column: 10, scope: !173)
!198 = !DILocation(line: 17, column: 13, scope: !173)
!199 = distinct !{!199, !192, !195, !200}
!200 = !{!"llvm.loop.mustprogress"}
!201 = !DILocation(line: 18, column: 10, scope: !173)
!202 = !DILocation(line: 18, column: 3, scope: !173)

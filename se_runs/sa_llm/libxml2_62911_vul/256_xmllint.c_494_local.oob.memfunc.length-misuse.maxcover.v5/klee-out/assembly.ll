; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/256_xmllint.c_494_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/256_xmllint.c_494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@xmlGenericErrorContext = dso_local global i8* null, align 8, !dbg !0
@.str = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.1 = private unnamed_addr constant [79 x i8] c"(dest >= buffer && dest + 4 <= buffer + sizeof(buffer)) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.2 = private unnamed_addr constant [105 x i8] c"se_runs/sa_llm/libxml2_62911_vul/256_xmllint.c_494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.testSAX = private unnamed_addr constant [26 x i8] c"void testSAX(char *, int)\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"an\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"test\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlEncodeEntitiesReentrant(i8* noundef %0, i8* noundef %1) #0 !dbg !23 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !27, metadata !DIExpression()), !dbg !28
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !29, metadata !DIExpression()), !dbg !30
  %8 = load i8*, i8** %5, align 8, !dbg !31
  %9 = icmp eq i8* %8, null, !dbg !33
  br i1 %9, label %10, label %11, !dbg !34

10:                                               ; preds = %2
  store i8* null, i8** %3, align 8, !dbg !35
  br label %29, !dbg !35

11:                                               ; preds = %2
  call void @llvm.dbg.declare(metadata i64* %6, metadata !36, metadata !DIExpression()), !dbg !40
  %12 = load i8*, i8** %5, align 8, !dbg !41
  %13 = call i64 @strlen(i8* noundef %12) #9, !dbg !42
  store i64 %13, i64* %6, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i8** %7, metadata !43, metadata !DIExpression()), !dbg !44
  %14 = load i64, i64* %6, align 8, !dbg !45
  %15 = add i64 %14, 1, !dbg !46
  %16 = call noalias i8* @malloc(i64 noundef %15) #10, !dbg !47
  store i8* %16, i8** %7, align 8, !dbg !44
  %17 = load i8*, i8** %7, align 8, !dbg !48
  %18 = icmp ne i8* %17, null, !dbg !48
  br i1 %18, label %19, label %27, !dbg !50

19:                                               ; preds = %11
  %20 = load i8*, i8** %7, align 8, !dbg !51
  %21 = load i8*, i8** %5, align 8, !dbg !53
  %22 = load i64, i64* %6, align 8, !dbg !54
  %23 = call i8* @memcpy(i8* %20, i8* %21, i64 %22), !dbg !55
  %24 = load i8*, i8** %7, align 8, !dbg !56
  %25 = load i64, i64* %6, align 8, !dbg !57
  %26 = getelementptr inbounds i8, i8* %24, i64 %25, !dbg !56
  store i8 0, i8* %26, align 1, !dbg !58
  br label %27, !dbg !59

27:                                               ; preds = %19, %11
  %28 = load i8*, i8** %7, align 8, !dbg !60
  store i8* %28, i8** %3, align 8, !dbg !61
  br label %29, !dbg !61

29:                                               ; preds = %27, %10
  %30 = load i8*, i8** %3, align 8, !dbg !62
  ret i8* %30, !dbg !62
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly willreturn
declare i64 @strlen(i8* noundef) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlGenericError(i8* noundef %0, i8* noundef %1, ...) #0 !dbg !63 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !66, metadata !DIExpression()), !dbg !67
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !68, metadata !DIExpression()), !dbg !69
  ret void, !dbg !70
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !71 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !74, metadata !DIExpression()), !dbg !75
  %3 = load i8*, i8** %2, align 8, !dbg !76
  call void @free(i8* noundef %3) #10, !dbg !77
  ret void, !dbg !78
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @testSAX(i8* noundef %0, i32 noundef %1) #0 !dbg !79 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4096 x i8], align 16
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !83, metadata !DIExpression()), !dbg !84
  store i32 %1, i32* %4, align 4
  call void @llvm.dbg.declare(metadata i32* %4, metadata !85, metadata !DIExpression()), !dbg !86
  call void @llvm.dbg.declare(metadata [4096 x i8]* %5, metadata !87, metadata !DIExpression()), !dbg !91
  %8 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 4092, !dbg !92
  %9 = call i8* @memset(i8* %8, i32 0, i64 4), !dbg !93
  call void @llvm.dbg.declare(metadata i8** %6, metadata !94, metadata !DIExpression()), !dbg !95
  %10 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 4092, !dbg !96
  store i8* %10, i8** %6, align 8, !dbg !95
  %11 = load i8*, i8** %6, align 8, !dbg !97
  %12 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !97
  %13 = icmp uge i8* %11, %12, !dbg !97
  br i1 %13, label %14, label %22, !dbg !97

14:                                               ; preds = %2
  %15 = load i8*, i8** %6, align 8, !dbg !97
  %16 = getelementptr inbounds i8, i8* %15, i64 4, !dbg !97
  %17 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !97
  %18 = getelementptr inbounds i8, i8* %17, i64 4096, !dbg !97
  %19 = icmp ule i8* %16, %18, !dbg !97
  br i1 %19, label %20, label %22, !dbg !97

20:                                               ; preds = %14
  br i1 true, label %21, label %22, !dbg !97

21:                                               ; preds = %20
  br label %24, !dbg !97

22:                                               ; preds = %20, %14, %2
  %23 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([79 x i8], [79 x i8]* @.str.1, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 46, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.testSAX, i64 0, i64 0)), !dbg !97
  br label %24, !dbg !97

24:                                               ; preds = %22, %21
  %25 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i8* noundef getelementptr inbounds ([105 x i8], [105 x i8]* @.str.2, i64 0, i64 0), i32 noundef 49, i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @__PRETTY_FUNCTION__.testSAX, i64 0, i64 0)), !dbg !98
  call void @llvm.dbg.declare(metadata i8** %7, metadata !99, metadata !DIExpression()), !dbg !100
  %26 = getelementptr inbounds [4096 x i8], [4096 x i8]* %5, i64 0, i64 0, !dbg !101
  %27 = call i8* @xmlEncodeEntitiesReentrant(i8* noundef null, i8* noundef %26), !dbg !102
  store i8* %27, i8** %7, align 8, !dbg !100
  %28 = load i8*, i8** %7, align 8, !dbg !103
  %29 = icmp ne i8* %28, null, !dbg !103
  br i1 %29, label %30, label %34, !dbg !105

30:                                               ; preds = %24
  %31 = load i8*, i8** @xmlGenericErrorContext, align 8, !dbg !106
  %32 = load i8*, i8** %7, align 8, !dbg !108
  call void (i8*, i8*, ...) @xmlGenericError(i8* noundef %31, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* noundef %32), !dbg !109
  %33 = load i8*, i8** %7, align 8, !dbg !110
  call void @xmlFree(i8* noundef %33), !dbg !111
  br label %34, !dbg !112

34:                                               ; preds = %30, %24
  ret void, !dbg !113
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !114 {
  %1 = alloca i32, align 4
  %2 = alloca [4096 x i8], align 16
  %3 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata [4096 x i8]* %2, metadata !117, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata i32* %3, metadata !119, metadata !DIExpression()), !dbg !120
  %4 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !121
  call void @klee_make_symbolic(i8* noundef %4, i64 noundef 4096, i8* noundef getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)), !dbg !122
  %5 = bitcast i32* %3 to i8*, !dbg !123
  call void @klee_make_symbolic(i8* noundef %5, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0)), !dbg !124
  %6 = load i32, i32* %3, align 4, !dbg !125
  %7 = icmp sge i32 %6, 0, !dbg !126
  %8 = zext i1 %7 to i32, !dbg !126
  %9 = sext i32 %8 to i64, !dbg !125
  call void @klee_assume(i64 noundef %9), !dbg !127
  %10 = load i32, i32* %3, align 4, !dbg !128
  %11 = sext i32 %10 to i64, !dbg !128
  %12 = icmp ule i64 %11, 4096, !dbg !129
  %13 = zext i1 %12 to i32, !dbg !129
  %14 = sext i32 %13 to i64, !dbg !128
  call void @klee_assume(i64 noundef %14), !dbg !130
  %15 = load i32, i32* %3, align 4, !dbg !131
  %16 = icmp sgt i32 %15, 0, !dbg !133
  br i1 %16, label %17, label %24, !dbg !134

17:                                               ; preds = %0
  %18 = load i32, i32* %3, align 4, !dbg !135
  %19 = sext i32 %18 to i64, !dbg !135
  %20 = icmp ule i64 %19, 4096, !dbg !136
  br i1 %20, label %21, label %24, !dbg !137

21:                                               ; preds = %17
  %22 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !138
  %23 = call i8* @memcpy(i8* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i64 4), !dbg !138
  br label %24, !dbg !140

24:                                               ; preds = %21, %17, %0
  %25 = getelementptr inbounds [4096 x i8], [4096 x i8]* %2, i64 0, i64 0, !dbg !141
  %26 = load i32, i32* %3, align 4, !dbg !142
  call void @testSAX(i8* noundef %25, i32 noundef %26), !dbg !143
  ret i32 0, !dbg !144
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #7

declare void @klee_assume(i64 noundef) #7

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #8 !dbg !145 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !151, metadata !DIExpression()), !dbg !152
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !153, metadata !DIExpression()), !dbg !154
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !155, metadata !DIExpression()), !dbg !156
  call void @llvm.dbg.declare(metadata i8** %7, metadata !157, metadata !DIExpression()), !dbg !158
  %9 = load i8*, i8** %4, align 8, !dbg !159
  store i8* %9, i8** %7, align 8, !dbg !158
  call void @llvm.dbg.declare(metadata i8** %8, metadata !160, metadata !DIExpression()), !dbg !161
  %10 = load i8*, i8** %5, align 8, !dbg !162
  store i8* %10, i8** %8, align 8, !dbg !161
  br label %11, !dbg !163

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !164
  %13 = add i64 %12, -1, !dbg !164
  store i64 %13, i64* %6, align 8, !dbg !164
  %14 = icmp ugt i64 %12, 0, !dbg !165
  br i1 %14, label %15, label %21, !dbg !163

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !166
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !166
  store i8* %17, i8** %8, align 8, !dbg !166
  %18 = load i8, i8* %16, align 1, !dbg !167
  %19 = load i8*, i8** %7, align 8, !dbg !168
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !168
  store i8* %20, i8** %7, align 8, !dbg !168
  store i8 %18, i8* %19, align 1, !dbg !169
  br label %11, !dbg !163, !llvm.loop !170

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !172
  ret i8* %22, !dbg !173
}

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #8 !dbg !174 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !178, metadata !DIExpression()), !dbg !179
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !180, metadata !DIExpression()), !dbg !181
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !182, metadata !DIExpression()), !dbg !183
  call void @llvm.dbg.declare(metadata i8** %7, metadata !184, metadata !DIExpression()), !dbg !185
  %8 = load i8*, i8** %4, align 8, !dbg !186
  store i8* %8, i8** %7, align 8, !dbg !185
  br label %9, !dbg !187

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !188
  %11 = add i64 %10, -1, !dbg !188
  store i64 %11, i64* %6, align 8, !dbg !188
  %12 = icmp ugt i64 %10, 0, !dbg !189
  br i1 %12, label %13, label %18, !dbg !187

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !190
  %15 = trunc i32 %14 to i8, !dbg !190
  %16 = load i8*, i8** %7, align 8, !dbg !191
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !191
  store i8* %17, i8** %7, align 8, !dbg !191
  store i8 %15, i8* %16, align 1, !dbg !192
  br label %9, !dbg !187, !llvm.loop !193

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !194
  ret i8* %19, !dbg !195
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind readonly willreturn }
attributes #10 = { nounwind }

!llvm.dbg.cu = !{!2, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22, !22, !22}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "xmlGenericErrorContext", scope: !2, file: !3, line: 34, type: !5, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !10, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/256_xmllint.c_494_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "a6fea97b3831114e189696b0934db081")
!4 = !{!5, !6, !8}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!10 = !{!0}
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
!23 = distinct !DISubprogram(name: "xmlEncodeEntitiesReentrant", scope: !3, file: !3, line: 10, type: !24, scopeLine: 10, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !26)
!24 = !DISubroutineType(types: !25)
!25 = !{!6, !5, !8}
!26 = !{}
!27 = !DILocalVariable(name: "ctx", arg: 1, scope: !23, file: !3, line: 10, type: !5)
!28 = !DILocation(line: 10, column: 40, scope: !23)
!29 = !DILocalVariable(name: "str", arg: 2, scope: !23, file: !3, line: 10, type: !8)
!30 = !DILocation(line: 10, column: 57, scope: !23)
!31 = !DILocation(line: 11, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !23, file: !3, line: 11, column: 9)
!33 = !DILocation(line: 11, column: 13, scope: !32)
!34 = !DILocation(line: 11, column: 9, scope: !23)
!35 = !DILocation(line: 11, column: 22, scope: !32)
!36 = !DILocalVariable(name: "len", scope: !23, file: !3, line: 14, type: !37)
!37 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !38, line: 46, baseType: !39)
!38 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!39 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!40 = !DILocation(line: 14, column: 12, scope: !23)
!41 = !DILocation(line: 14, column: 25, scope: !23)
!42 = !DILocation(line: 14, column: 18, scope: !23)
!43 = !DILocalVariable(name: "result", scope: !23, file: !3, line: 15, type: !6)
!44 = !DILocation(line: 15, column: 11, scope: !23)
!45 = !DILocation(line: 15, column: 27, scope: !23)
!46 = !DILocation(line: 15, column: 31, scope: !23)
!47 = !DILocation(line: 15, column: 20, scope: !23)
!48 = !DILocation(line: 16, column: 9, scope: !49)
!49 = distinct !DILexicalBlock(scope: !23, file: !3, line: 16, column: 9)
!50 = !DILocation(line: 16, column: 9, scope: !23)
!51 = !DILocation(line: 17, column: 16, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !3, line: 16, column: 17)
!53 = !DILocation(line: 17, column: 24, scope: !52)
!54 = !DILocation(line: 17, column: 29, scope: !52)
!55 = !DILocation(line: 17, column: 9, scope: !52)
!56 = !DILocation(line: 18, column: 9, scope: !52)
!57 = !DILocation(line: 18, column: 16, scope: !52)
!58 = !DILocation(line: 18, column: 21, scope: !52)
!59 = !DILocation(line: 19, column: 5, scope: !52)
!60 = !DILocation(line: 20, column: 12, scope: !23)
!61 = !DILocation(line: 20, column: 5, scope: !23)
!62 = !DILocation(line: 21, column: 1, scope: !23)
!63 = distinct !DISubprogram(name: "xmlGenericError", scope: !3, file: !3, line: 24, type: !64, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !26)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !5, !8, null}
!66 = !DILocalVariable(name: "ctx", arg: 1, scope: !63, file: !3, line: 24, type: !5)
!67 = !DILocation(line: 24, column: 28, scope: !63)
!68 = !DILocalVariable(name: "msg", arg: 2, scope: !63, file: !3, line: 24, type: !8)
!69 = !DILocation(line: 24, column: 45, scope: !63)
!70 = !DILocation(line: 26, column: 1, scope: !63)
!71 = distinct !DISubprogram(name: "xmlFree", scope: !3, file: !3, line: 29, type: !72, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !26)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !5}
!74 = !DILocalVariable(name: "ptr", arg: 1, scope: !71, file: !3, line: 29, type: !5)
!75 = !DILocation(line: 29, column: 20, scope: !71)
!76 = !DILocation(line: 30, column: 10, scope: !71)
!77 = !DILocation(line: 30, column: 5, scope: !71)
!78 = !DILocation(line: 31, column: 1, scope: !71)
!79 = distinct !DISubprogram(name: "testSAX", scope: !3, file: !3, line: 37, type: !80, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !26)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !6, !82}
!82 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!83 = !DILocalVariable(name: "an", arg: 1, scope: !79, file: !3, line: 37, type: !6)
!84 = !DILocation(line: 37, column: 20, scope: !79)
!85 = !DILocalVariable(name: "len", arg: 2, scope: !79, file: !3, line: 37, type: !82)
!86 = !DILocation(line: 37, column: 28, scope: !79)
!87 = !DILocalVariable(name: "buffer", scope: !79, file: !3, line: 38, type: !88)
!88 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 32768, elements: !89)
!89 = !{!90}
!90 = !DISubrange(count: 4096)
!91 = !DILocation(line: 38, column: 10, scope: !79)
!92 = !DILocation(line: 41, column: 13, scope: !79)
!93 = !DILocation(line: 41, column: 5, scope: !79)
!94 = !DILocalVariable(name: "dest", scope: !79, file: !3, line: 45, type: !6)
!95 = !DILocation(line: 45, column: 11, scope: !79)
!96 = !DILocation(line: 45, column: 19, scope: !79)
!97 = !DILocation(line: 46, column: 5, scope: !79)
!98 = !DILocation(line: 49, column: 5, scope: !79)
!99 = !DILocalVariable(name: "result", scope: !79, file: !3, line: 52, type: !6)
!100 = !DILocation(line: 52, column: 11, scope: !79)
!101 = !DILocation(line: 52, column: 75, scope: !79)
!102 = !DILocation(line: 52, column: 28, scope: !79)
!103 = !DILocation(line: 53, column: 9, scope: !104)
!104 = distinct !DILexicalBlock(scope: !79, file: !3, line: 53, column: 9)
!105 = !DILocation(line: 53, column: 9, scope: !79)
!106 = !DILocation(line: 54, column: 25, scope: !107)
!107 = distinct !DILexicalBlock(scope: !104, file: !3, line: 53, column: 17)
!108 = !DILocation(line: 54, column: 55, scope: !107)
!109 = !DILocation(line: 54, column: 9, scope: !107)
!110 = !DILocation(line: 55, column: 17, scope: !107)
!111 = !DILocation(line: 55, column: 9, scope: !107)
!112 = !DILocation(line: 56, column: 5, scope: !107)
!113 = !DILocation(line: 57, column: 1, scope: !79)
!114 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !115, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !26)
!115 = !DISubroutineType(types: !116)
!116 = !{!82}
!117 = !DILocalVariable(name: "an", scope: !114, file: !3, line: 61, type: !88)
!118 = !DILocation(line: 61, column: 10, scope: !114)
!119 = !DILocalVariable(name: "len", scope: !114, file: !3, line: 62, type: !82)
!120 = !DILocation(line: 62, column: 9, scope: !114)
!121 = !DILocation(line: 65, column: 24, scope: !114)
!122 = !DILocation(line: 65, column: 5, scope: !114)
!123 = !DILocation(line: 66, column: 24, scope: !114)
!124 = !DILocation(line: 66, column: 5, scope: !114)
!125 = !DILocation(line: 69, column: 17, scope: !114)
!126 = !DILocation(line: 69, column: 21, scope: !114)
!127 = !DILocation(line: 69, column: 5, scope: !114)
!128 = !DILocation(line: 70, column: 17, scope: !114)
!129 = !DILocation(line: 70, column: 21, scope: !114)
!130 = !DILocation(line: 70, column: 5, scope: !114)
!131 = !DILocation(line: 74, column: 9, scope: !132)
!132 = distinct !DILexicalBlock(scope: !114, file: !3, line: 74, column: 9)
!133 = !DILocation(line: 74, column: 13, scope: !132)
!134 = !DILocation(line: 74, column: 17, scope: !132)
!135 = !DILocation(line: 74, column: 20, scope: !132)
!136 = !DILocation(line: 74, column: 24, scope: !132)
!137 = !DILocation(line: 74, column: 9, scope: !114)
!138 = !DILocation(line: 75, column: 9, scope: !139)
!139 = distinct !DILexicalBlock(scope: !132, file: !3, line: 74, column: 39)
!140 = !DILocation(line: 76, column: 5, scope: !139)
!141 = !DILocation(line: 79, column: 13, scope: !114)
!142 = !DILocation(line: 79, column: 17, scope: !114)
!143 = !DILocation(line: 79, column: 5, scope: !114)
!144 = !DILocation(line: 81, column: 5, scope: !114)
!145 = distinct !DISubprogram(name: "memcpy", scope: !146, file: !146, line: 12, type: !147, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !26)
!146 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!147 = !DISubroutineType(types: !148)
!148 = !{!5, !5, !149, !37}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!151 = !DILocalVariable(name: "destaddr", arg: 1, scope: !145, file: !146, line: 12, type: !5)
!152 = !DILocation(line: 12, column: 20, scope: !145)
!153 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !145, file: !146, line: 12, type: !149)
!154 = !DILocation(line: 12, column: 42, scope: !145)
!155 = !DILocalVariable(name: "len", arg: 3, scope: !145, file: !146, line: 12, type: !37)
!156 = !DILocation(line: 12, column: 58, scope: !145)
!157 = !DILocalVariable(name: "dest", scope: !145, file: !146, line: 13, type: !6)
!158 = !DILocation(line: 13, column: 9, scope: !145)
!159 = !DILocation(line: 13, column: 16, scope: !145)
!160 = !DILocalVariable(name: "src", scope: !145, file: !146, line: 14, type: !8)
!161 = !DILocation(line: 14, column: 15, scope: !145)
!162 = !DILocation(line: 14, column: 21, scope: !145)
!163 = !DILocation(line: 16, column: 3, scope: !145)
!164 = !DILocation(line: 16, column: 13, scope: !145)
!165 = !DILocation(line: 16, column: 16, scope: !145)
!166 = !DILocation(line: 17, column: 19, scope: !145)
!167 = !DILocation(line: 17, column: 15, scope: !145)
!168 = !DILocation(line: 17, column: 10, scope: !145)
!169 = !DILocation(line: 17, column: 13, scope: !145)
!170 = distinct !{!170, !163, !166, !171}
!171 = !{!"llvm.loop.mustprogress"}
!172 = !DILocation(line: 18, column: 10, scope: !145)
!173 = !DILocation(line: 18, column: 3, scope: !145)
!174 = distinct !DISubprogram(name: "memset", scope: !175, file: !175, line: 12, type: !176, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !26)
!175 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!176 = !DISubroutineType(types: !177)
!177 = !{!5, !5, !82, !37}
!178 = !DILocalVariable(name: "dst", arg: 1, scope: !174, file: !175, line: 12, type: !5)
!179 = !DILocation(line: 12, column: 20, scope: !174)
!180 = !DILocalVariable(name: "s", arg: 2, scope: !174, file: !175, line: 12, type: !82)
!181 = !DILocation(line: 12, column: 29, scope: !174)
!182 = !DILocalVariable(name: "count", arg: 3, scope: !174, file: !175, line: 12, type: !37)
!183 = !DILocation(line: 12, column: 39, scope: !174)
!184 = !DILocalVariable(name: "a", scope: !174, file: !175, line: 13, type: !6)
!185 = !DILocation(line: 13, column: 9, scope: !174)
!186 = !DILocation(line: 13, column: 13, scope: !174)
!187 = !DILocation(line: 14, column: 3, scope: !174)
!188 = !DILocation(line: 14, column: 15, scope: !174)
!189 = !DILocation(line: 14, column: 18, scope: !174)
!190 = !DILocation(line: 15, column: 12, scope: !174)
!191 = !DILocation(line: 15, column: 7, scope: !174)
!192 = !DILocation(line: 15, column: 10, scope: !174)
!193 = distinct !{!193, !187, !190, !171}
!194 = !DILocation(line: 16, column: 10, scope: !174)
!195 = !DILocation(line: 16, column: 3, scope: !174)

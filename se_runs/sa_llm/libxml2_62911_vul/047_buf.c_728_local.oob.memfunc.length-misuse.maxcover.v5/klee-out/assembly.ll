; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/047_buf.c_728_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/047_buf.c_728_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlBuf = type { i8*, i64, i64 }

@.str = private unnamed_addr constant [8 x i8] c"buf_use\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"buf_size\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"str_data\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"allocation_size\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"(buf.use <= allocation_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.7 = private unnamed_addr constant [101 x i8] c"se_runs/sa_llm/libxml2_62911_vul/047_buf.c_728_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @xmlMallocAtomic(i64 noundef %0) #0 !dbg !17 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  call void @llvm.dbg.declare(metadata i64* %2, metadata !24, metadata !DIExpression()), !dbg !25
  %3 = load i64, i64* %2, align 8, !dbg !26
  %4 = call noalias i8* @malloc(i64 noundef %3) #7, !dbg !27
  ret i8* %4, !dbg !28
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFree(i8* noundef %0) #0 !dbg !29 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  call void @llvm.dbg.declare(metadata i8** %2, metadata !32, metadata !DIExpression()), !dbg !33
  %3 = load i8*, i8** %2, align 8, !dbg !34
  call void @free(i8* noundef %3) #7, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !37 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlBuf, align 8
  %3 = alloca [256 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlBuf* %2, metadata !41, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata [256 x i8]* %3, metadata !49, metadata !DIExpression()), !dbg !53
  call void @llvm.dbg.declare(metadata i32* %4, metadata !54, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %5, metadata !56, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i64* %6, metadata !58, metadata !DIExpression()), !dbg !59
  %8 = bitcast i64* %5 to i8*, !dbg !60
  call void @klee_make_symbolic(i8* noundef %8, i64 noundef 8, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0)), !dbg !61
  %9 = bitcast i64* %6 to i8*, !dbg !62
  call void @klee_make_symbolic(i8* noundef %9, i64 noundef 8, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0)), !dbg !63
  %10 = bitcast i32* %4 to i8*, !dbg !64
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)), !dbg !65
  %11 = load i64, i64* %5, align 8, !dbg !66
  %12 = icmp uge i64 %11, 0, !dbg !67
  br i1 %12, label %13, label %16, !dbg !68

13:                                               ; preds = %0
  %14 = load i64, i64* %5, align 8, !dbg !69
  %15 = icmp ult i64 %14, 4096, !dbg !70
  br label %16

16:                                               ; preds = %13, %0
  %17 = phi i1 [ false, %0 ], [ %15, %13 ], !dbg !71
  %18 = zext i1 %17 to i32, !dbg !68
  %19 = sext i32 %18 to i64, !dbg !66
  call void @klee_assume(i64 noundef %19), !dbg !72
  %20 = load i64, i64* %6, align 8, !dbg !73
  %21 = icmp uge i64 %20, 0, !dbg !74
  br i1 %21, label %22, label %25, !dbg !75

22:                                               ; preds = %16
  %23 = load i64, i64* %6, align 8, !dbg !76
  %24 = icmp ult i64 %23, 4096, !dbg !77
  br label %25

25:                                               ; preds = %22, %16
  %26 = phi i1 [ false, %16 ], [ %24, %22 ], !dbg !71
  %27 = zext i1 %26 to i32, !dbg !75
  %28 = sext i32 %27 to i64, !dbg !73
  call void @klee_assume(i64 noundef %28), !dbg !78
  %29 = load i32, i32* %4, align 4, !dbg !79
  %30 = icmp sge i32 %29, 0, !dbg !80
  br i1 %30, label %31, label %34, !dbg !81

31:                                               ; preds = %25
  %32 = load i32, i32* %4, align 4, !dbg !82
  %33 = icmp slt i32 %32, 4096, !dbg !83
  br label %34

34:                                               ; preds = %31, %25
  %35 = phi i1 [ false, %25 ], [ %33, %31 ], !dbg !71
  %36 = zext i1 %35 to i32, !dbg !81
  %37 = sext i32 %36 to i64, !dbg !79
  call void @klee_assume(i64 noundef %37), !dbg !84
  %38 = load i64, i64* %6, align 8, !dbg !85
  %39 = call noalias i8* @malloc(i64 noundef %38) #7, !dbg !86
  %40 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !87
  store i8* %39, i8** %40, align 8, !dbg !88
  %41 = load i64, i64* %5, align 8, !dbg !89
  %42 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !90
  store i64 %41, i64* %42, align 8, !dbg !91
  %43 = load i64, i64* %6, align 8, !dbg !92
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 2, !dbg !93
  store i64 %43, i64* %44, align 8, !dbg !94
  %45 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !95
  call void @klee_make_symbolic(i8* noundef %45, i64 noundef 256, i8* noundef getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)), !dbg !96
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %3, i64 0, i64 0, !dbg !97
  %47 = load i32, i32* %4, align 4, !dbg !98
  call void @xmlBufAdd(%struct._xmlBuf* noundef %2, i8* noundef %46, i32 noundef %47), !dbg !99
  call void @llvm.dbg.declare(metadata i64* %7, metadata !100, metadata !DIExpression()), !dbg !101
  %48 = bitcast i64* %7 to i8*, !dbg !102
  call void @klee_make_symbolic(i8* noundef %48, i64 noundef 8, i8* noundef getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0)), !dbg !103
  %49 = load i64, i64* %7, align 8, !dbg !104
  %50 = icmp uge i64 %49, 0, !dbg !105
  %51 = zext i1 %50 to i32, !dbg !105
  %52 = sext i32 %51 to i64, !dbg !104
  call void @klee_assume(i64 noundef %52), !dbg !106
  %53 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 1, !dbg !107
  %54 = load i64, i64* %53, align 8, !dbg !107
  %55 = load i64, i64* %7, align 8, !dbg !107
  %56 = icmp ule i64 %54, %55, !dbg !107
  br i1 %56, label %57, label %59, !dbg !107

57:                                               ; preds = %34
  br i1 true, label %58, label %59, !dbg !107

58:                                               ; preds = %57
  br label %61, !dbg !107

59:                                               ; preds = %57, %34
  %60 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.7, i64 0, i64 0), i32 noundef 73, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !107
  br label %61, !dbg !107

61:                                               ; preds = %59, %58
  %62 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([101 x i8], [101 x i8]* @.str.7, i64 0, i64 0), i32 noundef 76, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !108
  %63 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %2, i32 0, i32 0, !dbg !109
  %64 = load i8*, i8** %63, align 8, !dbg !109
  call void @free(i8* noundef %64) #7, !dbg !110
  ret i32 0, !dbg !111
}

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlBufAdd(%struct._xmlBuf* noundef %0, i8* noundef %1, i32 noundef %2) #0 !dbg !112 {
  %4 = alloca %struct._xmlBuf*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  store %struct._xmlBuf* %0, %struct._xmlBuf** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlBuf** %4, metadata !118, metadata !DIExpression()), !dbg !119
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !120, metadata !DIExpression()), !dbg !121
  store i32 %2, i32* %6, align 4
  call void @llvm.dbg.declare(metadata i32* %6, metadata !122, metadata !DIExpression()), !dbg !123
  %9 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !124
  %10 = icmp eq %struct._xmlBuf* %9, null, !dbg !126
  br i1 %10, label %19, label %11, !dbg !127

11:                                               ; preds = %3
  %12 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !128
  %13 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %12, i32 0, i32 0, !dbg !129
  %14 = load i8*, i8** %13, align 8, !dbg !129
  %15 = icmp eq i8* %14, null, !dbg !130
  br i1 %15, label %19, label %16, !dbg !131

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4, !dbg !132
  %18 = icmp slt i32 %17, 0, !dbg !133
  br i1 %18, label %19, label %20, !dbg !134

19:                                               ; preds = %16, %11, %3
  br label %56, !dbg !135

20:                                               ; preds = %16
  call void @llvm.dbg.declare(metadata i64* %7, metadata !136, metadata !DIExpression()), !dbg !137
  %21 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !138
  %22 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %21, i32 0, i32 1, !dbg !139
  %23 = load i64, i64* %22, align 8, !dbg !139
  %24 = load i32, i32* %6, align 4, !dbg !140
  %25 = sext i32 %24 to i64, !dbg !140
  %26 = add i64 %23, %25, !dbg !141
  %27 = add i64 %26, 1, !dbg !142
  store i64 %27, i64* %7, align 8, !dbg !137
  %28 = load i64, i64* %7, align 8, !dbg !143
  %29 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !145
  %30 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %29, i32 0, i32 2, !dbg !146
  %31 = load i64, i64* %30, align 8, !dbg !146
  %32 = icmp ugt i64 %28, %31, !dbg !147
  br i1 %32, label %33, label %56, !dbg !148

33:                                               ; preds = %20
  call void @llvm.dbg.declare(metadata i8** %8, metadata !149, metadata !DIExpression()), !dbg !151
  %34 = load i64, i64* %7, align 8, !dbg !152
  %35 = call i8* @xmlMallocAtomic(i64 noundef %34), !dbg !153
  store i8* %35, i8** %8, align 8, !dbg !151
  %36 = load i8*, i8** %8, align 8, !dbg !154
  %37 = icmp ne i8* %36, null, !dbg !156
  br i1 %37, label %38, label %55, !dbg !157

38:                                               ; preds = %33
  %39 = load i8*, i8** %8, align 8, !dbg !158
  %40 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !160
  %41 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %40, i32 0, i32 0, !dbg !161
  %42 = load i8*, i8** %41, align 8, !dbg !161
  %43 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !162
  %44 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %43, i32 0, i32 1, !dbg !163
  %45 = load i64, i64* %44, align 8, !dbg !163
  %46 = call i8* @memcpy(i8* %39, i8* %42, i64 %45), !dbg !164
  %47 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !165
  %48 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %47, i32 0, i32 0, !dbg !166
  %49 = load i8*, i8** %48, align 8, !dbg !166
  call void @xmlFree(i8* noundef %49), !dbg !167
  %50 = load i8*, i8** %8, align 8, !dbg !168
  %51 = load %struct._xmlBuf*, %struct._xmlBuf** %4, align 8, !dbg !169
  %52 = getelementptr inbounds %struct._xmlBuf, %struct._xmlBuf* %51, i32 0, i32 1, !dbg !170
  %53 = load i64, i64* %52, align 8, !dbg !170
  %54 = getelementptr inbounds i8, i8* %50, i64 %53, !dbg !168
  store i8 0, i8* %54, align 1, !dbg !171
  br label %55, !dbg !172

55:                                               ; preds = %38, %33
  br label %56, !dbg !173

56:                                               ; preds = %19, %55, %20
  ret void, !dbg !174
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !175 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !181, metadata !DIExpression()), !dbg !182
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !183, metadata !DIExpression()), !dbg !184
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !185, metadata !DIExpression()), !dbg !186
  call void @llvm.dbg.declare(metadata i8** %7, metadata !187, metadata !DIExpression()), !dbg !190
  %9 = load i8*, i8** %4, align 8, !dbg !191
  store i8* %9, i8** %7, align 8, !dbg !190
  call void @llvm.dbg.declare(metadata i8** %8, metadata !192, metadata !DIExpression()), !dbg !195
  %10 = load i8*, i8** %5, align 8, !dbg !196
  store i8* %10, i8** %8, align 8, !dbg !195
  br label %11, !dbg !197

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !198
  %13 = add i64 %12, -1, !dbg !198
  store i64 %13, i64* %6, align 8, !dbg !198
  %14 = icmp ugt i64 %12, 0, !dbg !199
  br i1 %14, label %15, label %21, !dbg !197

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !200
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !200
  store i8* %17, i8** %8, align 8, !dbg !200
  %18 = load i8, i8* %16, align 1, !dbg !201
  %19 = load i8*, i8** %7, align 8, !dbg !202
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !202
  store i8* %20, i8** %7, align 8, !dbg !202
  store i8 %18, i8* %19, align 1, !dbg !203
  br label %11, !dbg !197, !llvm.loop !204

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !206
  ret i8* %22, !dbg !207
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !7}
!llvm.module.flags = !{!9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16, !16}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/047_buf.c_728_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "5b9dfca94b0e905ad390b8b88938957f")
!2 = !{!3, !6}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlChar", file: !1, line: 10, baseType: !5)
!5 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!7 = distinct !DICompileUnit(language: DW_LANG_C99, file: !8, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!8 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!9 = !{i32 7, !"Dwarf Version", i32 5}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{i32 7, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"Ubuntu clang version 14.0.6"}
!17 = distinct !DISubprogram(name: "xmlMallocAtomic", scope: !1, file: !1, line: 19, type: !18, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!18 = !DISubroutineType(types: !19)
!19 = !{!6, !20}
!20 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !21, line: 46, baseType: !22)
!21 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!22 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!23 = !{}
!24 = !DILocalVariable(name: "size", arg: 1, scope: !17, file: !1, line: 19, type: !20)
!25 = !DILocation(line: 19, column: 30, scope: !17)
!26 = !DILocation(line: 20, column: 19, scope: !17)
!27 = !DILocation(line: 20, column: 12, scope: !17)
!28 = !DILocation(line: 20, column: 5, scope: !17)
!29 = distinct !DISubprogram(name: "xmlFree", scope: !1, file: !1, line: 23, type: !30, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !6}
!32 = !DILocalVariable(name: "ptr", arg: 1, scope: !29, file: !1, line: 23, type: !6)
!33 = !DILocation(line: 23, column: 20, scope: !29)
!34 = !DILocation(line: 24, column: 10, scope: !29)
!35 = !DILocation(line: 24, column: 5, scope: !29)
!36 = !DILocation(line: 25, column: 1, scope: !29)
!37 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 31, type: !38, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!38 = !DISubroutineType(types: !39)
!39 = !{!40}
!40 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!41 = !DILocalVariable(name: "buf", scope: !37, file: !1, line: 33, type: !42)
!42 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlBuf", file: !1, line: 11, baseType: !43)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlBuf", file: !1, line: 12, size: 192, elements: !44)
!44 = !{!45, !46, !47}
!45 = !DIDerivedType(tag: DW_TAG_member, name: "content", scope: !43, file: !1, line: 13, baseType: !3, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_member, name: "use", scope: !43, file: !1, line: 14, baseType: !20, size: 64, offset: 64)
!47 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !43, file: !1, line: 15, baseType: !20, size: 64, offset: 128)
!48 = !DILocation(line: 33, column: 12, scope: !37)
!49 = !DILocalVariable(name: "str_data", scope: !37, file: !1, line: 34, type: !50)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 2048, elements: !51)
!51 = !{!52}
!52 = !DISubrange(count: 256)
!53 = !DILocation(line: 34, column: 13, scope: !37)
!54 = !DILocalVariable(name: "len", scope: !37, file: !1, line: 35, type: !40)
!55 = !DILocation(line: 35, column: 9, scope: !37)
!56 = !DILocalVariable(name: "buf_use", scope: !37, file: !1, line: 38, type: !20)
!57 = !DILocation(line: 38, column: 12, scope: !37)
!58 = !DILocalVariable(name: "buf_size", scope: !37, file: !1, line: 38, type: !20)
!59 = !DILocation(line: 38, column: 21, scope: !37)
!60 = !DILocation(line: 39, column: 24, scope: !37)
!61 = !DILocation(line: 39, column: 5, scope: !37)
!62 = !DILocation(line: 40, column: 24, scope: !37)
!63 = !DILocation(line: 40, column: 5, scope: !37)
!64 = !DILocation(line: 41, column: 24, scope: !37)
!65 = !DILocation(line: 41, column: 5, scope: !37)
!66 = !DILocation(line: 44, column: 17, scope: !37)
!67 = !DILocation(line: 44, column: 25, scope: !37)
!68 = !DILocation(line: 44, column: 30, scope: !37)
!69 = !DILocation(line: 44, column: 33, scope: !37)
!70 = !DILocation(line: 44, column: 41, scope: !37)
!71 = !DILocation(line: 0, scope: !37)
!72 = !DILocation(line: 44, column: 5, scope: !37)
!73 = !DILocation(line: 45, column: 17, scope: !37)
!74 = !DILocation(line: 45, column: 26, scope: !37)
!75 = !DILocation(line: 45, column: 31, scope: !37)
!76 = !DILocation(line: 45, column: 34, scope: !37)
!77 = !DILocation(line: 45, column: 43, scope: !37)
!78 = !DILocation(line: 45, column: 5, scope: !37)
!79 = !DILocation(line: 46, column: 17, scope: !37)
!80 = !DILocation(line: 46, column: 21, scope: !37)
!81 = !DILocation(line: 46, column: 26, scope: !37)
!82 = !DILocation(line: 46, column: 29, scope: !37)
!83 = !DILocation(line: 46, column: 33, scope: !37)
!84 = !DILocation(line: 46, column: 5, scope: !37)
!85 = !DILocation(line: 49, column: 36, scope: !37)
!86 = !DILocation(line: 49, column: 29, scope: !37)
!87 = !DILocation(line: 49, column: 9, scope: !37)
!88 = !DILocation(line: 49, column: 17, scope: !37)
!89 = !DILocation(line: 50, column: 15, scope: !37)
!90 = !DILocation(line: 50, column: 9, scope: !37)
!91 = !DILocation(line: 50, column: 13, scope: !37)
!92 = !DILocation(line: 51, column: 16, scope: !37)
!93 = !DILocation(line: 51, column: 9, scope: !37)
!94 = !DILocation(line: 51, column: 14, scope: !37)
!95 = !DILocation(line: 54, column: 24, scope: !37)
!96 = !DILocation(line: 54, column: 5, scope: !37)
!97 = !DILocation(line: 57, column: 21, scope: !37)
!98 = !DILocation(line: 57, column: 31, scope: !37)
!99 = !DILocation(line: 57, column: 5, scope: !37)
!100 = !DILocalVariable(name: "allocation_size", scope: !37, file: !1, line: 66, type: !20)
!101 = !DILocation(line: 66, column: 12, scope: !37)
!102 = !DILocation(line: 67, column: 24, scope: !37)
!103 = !DILocation(line: 67, column: 5, scope: !37)
!104 = !DILocation(line: 70, column: 17, scope: !37)
!105 = !DILocation(line: 70, column: 33, scope: !37)
!106 = !DILocation(line: 70, column: 5, scope: !37)
!107 = !DILocation(line: 73, column: 5, scope: !37)
!108 = !DILocation(line: 76, column: 5, scope: !37)
!109 = !DILocation(line: 79, column: 14, scope: !37)
!110 = !DILocation(line: 79, column: 5, scope: !37)
!111 = !DILocation(line: 81, column: 5, scope: !37)
!112 = distinct !DISubprogram(name: "xmlBufAdd", scope: !1, file: !1, line: 85, type: !113, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !23)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !116, !40}
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!118 = !DILocalVariable(name: "buf", arg: 1, scope: !112, file: !1, line: 85, type: !115)
!119 = !DILocation(line: 85, column: 24, scope: !112)
!120 = !DILocalVariable(name: "str", arg: 2, scope: !112, file: !1, line: 85, type: !116)
!121 = !DILocation(line: 85, column: 44, scope: !112)
!122 = !DILocalVariable(name: "len", arg: 3, scope: !112, file: !1, line: 85, type: !40)
!123 = !DILocation(line: 85, column: 53, scope: !112)
!124 = !DILocation(line: 86, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !112, file: !1, line: 86, column: 9)
!126 = !DILocation(line: 86, column: 13, scope: !125)
!127 = !DILocation(line: 86, column: 21, scope: !125)
!128 = !DILocation(line: 86, column: 24, scope: !125)
!129 = !DILocation(line: 86, column: 29, scope: !125)
!130 = !DILocation(line: 86, column: 37, scope: !125)
!131 = !DILocation(line: 86, column: 45, scope: !125)
!132 = !DILocation(line: 86, column: 48, scope: !125)
!133 = !DILocation(line: 86, column: 52, scope: !125)
!134 = !DILocation(line: 86, column: 9, scope: !112)
!135 = !DILocation(line: 86, column: 57, scope: !125)
!136 = !DILocalVariable(name: "newSize", scope: !112, file: !1, line: 89, type: !20)
!137 = !DILocation(line: 89, column: 12, scope: !112)
!138 = !DILocation(line: 89, column: 22, scope: !112)
!139 = !DILocation(line: 89, column: 27, scope: !112)
!140 = !DILocation(line: 89, column: 33, scope: !112)
!141 = !DILocation(line: 89, column: 31, scope: !112)
!142 = !DILocation(line: 89, column: 37, scope: !112)
!143 = !DILocation(line: 90, column: 9, scope: !144)
!144 = distinct !DILexicalBlock(scope: !112, file: !1, line: 90, column: 9)
!145 = !DILocation(line: 90, column: 19, scope: !144)
!146 = !DILocation(line: 90, column: 24, scope: !144)
!147 = !DILocation(line: 90, column: 17, scope: !144)
!148 = !DILocation(line: 90, column: 9, scope: !112)
!149 = !DILocalVariable(name: "rebuf", scope: !150, file: !1, line: 92, type: !3)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 90, column: 30)
!151 = !DILocation(line: 92, column: 18, scope: !150)
!152 = !DILocation(line: 92, column: 52, scope: !150)
!153 = !DILocation(line: 92, column: 36, scope: !150)
!154 = !DILocation(line: 93, column: 13, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 93, column: 13)
!156 = !DILocation(line: 93, column: 19, scope: !155)
!157 = !DILocation(line: 93, column: 13, scope: !150)
!158 = !DILocation(line: 96, column: 20, scope: !159)
!159 = distinct !DILexicalBlock(scope: !155, file: !1, line: 93, column: 28)
!160 = !DILocation(line: 96, column: 27, scope: !159)
!161 = !DILocation(line: 96, column: 32, scope: !159)
!162 = !DILocation(line: 96, column: 41, scope: !159)
!163 = !DILocation(line: 96, column: 46, scope: !159)
!164 = !DILocation(line: 96, column: 13, scope: !159)
!165 = !DILocation(line: 97, column: 21, scope: !159)
!166 = !DILocation(line: 97, column: 26, scope: !159)
!167 = !DILocation(line: 97, column: 13, scope: !159)
!168 = !DILocation(line: 98, column: 13, scope: !159)
!169 = !DILocation(line: 98, column: 19, scope: !159)
!170 = !DILocation(line: 98, column: 24, scope: !159)
!171 = !DILocation(line: 98, column: 29, scope: !159)
!172 = !DILocation(line: 99, column: 9, scope: !159)
!173 = !DILocation(line: 101, column: 5, scope: !150)
!174 = !DILocation(line: 102, column: 1, scope: !112)
!175 = distinct !DISubprogram(name: "memcpy", scope: !176, file: !176, line: 12, type: !177, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !7, retainedNodes: !23)
!176 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!177 = !DISubroutineType(types: !178)
!178 = !{!6, !6, !179, !20}
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!181 = !DILocalVariable(name: "destaddr", arg: 1, scope: !175, file: !176, line: 12, type: !6)
!182 = !DILocation(line: 12, column: 20, scope: !175)
!183 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !175, file: !176, line: 12, type: !179)
!184 = !DILocation(line: 12, column: 42, scope: !175)
!185 = !DILocalVariable(name: "len", arg: 3, scope: !175, file: !176, line: 12, type: !20)
!186 = !DILocation(line: 12, column: 58, scope: !175)
!187 = !DILocalVariable(name: "dest", scope: !175, file: !176, line: 13, type: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!190 = !DILocation(line: 13, column: 9, scope: !175)
!191 = !DILocation(line: 13, column: 16, scope: !175)
!192 = !DILocalVariable(name: "src", scope: !175, file: !176, line: 14, type: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!195 = !DILocation(line: 14, column: 15, scope: !175)
!196 = !DILocation(line: 14, column: 21, scope: !175)
!197 = !DILocation(line: 16, column: 3, scope: !175)
!198 = !DILocation(line: 16, column: 13, scope: !175)
!199 = !DILocation(line: 16, column: 16, scope: !175)
!200 = !DILocation(line: 17, column: 19, scope: !175)
!201 = !DILocation(line: 17, column: 15, scope: !175)
!202 = !DILocation(line: 17, column: 10, scope: !175)
!203 = !DILocation(line: 17, column: 13, scope: !175)
!204 = distinct !{!204, !197, !200, !205}
!205 = !{!"llvm.loop.mustprogress"}
!206 = !DILocation(line: 18, column: 10, scope: !175)
!207 = !DILocation(line: 18, column: 3, scope: !175)

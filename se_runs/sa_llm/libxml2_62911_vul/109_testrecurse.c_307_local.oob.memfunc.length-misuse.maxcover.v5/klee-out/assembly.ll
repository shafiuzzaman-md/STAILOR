; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.context_t = type { i8*, i8*, i32, i32, i32, %struct.hugeDocParts_t* }
%struct.hugeDocParts_t = type { i8*, i8* }

@ctx = internal global %struct.context_t zeroinitializer, align 8, !dbg !0
@.str = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"current\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"segment\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"finish\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"len\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"rlen\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"curseg\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"(ctx.len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.9 = private unnamed_addr constant [109 x i8] c"se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_context() #0 !dbg !33 {
  %1 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !37
  store i8* %1, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 0), align 8, !dbg !38
  %2 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !39
  store i8* %2, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 1), align 8, !dbg !40
  %3 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !41
  %4 = bitcast i8* %3 to %struct.hugeDocParts_t*, !dbg !41
  store %struct.hugeDocParts_t* %4, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !42
  %5 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !43
  %6 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !44
  %7 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %6, i32 0, i32 0, !dbg !45
  store i8* %5, i8** %7, align 8, !dbg !46
  %8 = call noalias i8* @malloc(i64 noundef 1024) #7, !dbg !47
  %9 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !48
  %10 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %9, i32 0, i32 1, !dbg !49
  store i8* %8, i8** %10, align 8, !dbg !50
  %11 = load i8*, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 0), align 8, !dbg !51
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0)), !dbg !52
  %12 = load i8*, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 1), align 8, !dbg !53
  call void @klee_make_symbolic(i8* noundef %12, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0)), !dbg !54
  %13 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !55
  %14 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %13, i32 0, i32 0, !dbg !56
  %15 = load i8*, i8** %14, align 8, !dbg !56
  call void @klee_make_symbolic(i8* noundef %15, i64 noundef 1024, i8* noundef getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)), !dbg !57
  %16 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !58
  %17 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %16, i32 0, i32 1, !dbg !59
  %18 = load i8*, i8** %17, align 8, !dbg !59
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 1024, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0)), !dbg !60
  call void @klee_make_symbolic(i8* noundef bitcast (i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 3) to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)), !dbg !61
  call void @klee_make_symbolic(i8* noundef bitcast (i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 4) to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0)), !dbg !62
  call void @klee_make_symbolic(i8* noundef bitcast (i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 2) to i8*), i64 noundef 4, i8* noundef getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0)), !dbg !63
  ret void, !dbg !64
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #1

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cleanup_context() #0 !dbg !65 {
  %1 = load i8*, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 0), align 8, !dbg !66
  call void @free(i8* noundef %1) #7, !dbg !67
  %2 = load i8*, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 1), align 8, !dbg !68
  call void @free(i8* noundef %2) #7, !dbg !69
  %3 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !70
  %4 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %3, i32 0, i32 0, !dbg !71
  %5 = load i8*, i8** %4, align 8, !dbg !71
  call void @free(i8* noundef %5) #7, !dbg !72
  %6 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !73
  %7 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %6, i32 0, i32 1, !dbg !74
  %8 = load i8*, i8** %7, align 8, !dbg !74
  call void @free(i8* noundef %8) #7, !dbg !75
  %9 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !76
  %10 = bitcast %struct.hugeDocParts_t* %9 to i8*, !dbg !77
  call void @free(i8* noundef %10) #7, !dbg !78
  ret void, !dbg !79
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !80 {
  %1 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @initialize_context(), !dbg !83
  %2 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 4), align 8, !dbg !84
  %3 = icmp sge i32 %2, 0, !dbg !85
  %4 = zext i1 %3 to i32, !dbg !85
  %5 = sext i32 %4 to i64, !dbg !86
  call void @klee_assume(i64 noundef %5), !dbg !87
  %6 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 3), align 4, !dbg !88
  %7 = icmp sge i32 %6, 0, !dbg !89
  %8 = zext i1 %7 to i32, !dbg !89
  %9 = sext i32 %8 to i64, !dbg !90
  call void @klee_assume(i64 noundef %9), !dbg !91
  %10 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 2), align 8, !dbg !92
  %11 = icmp sge i32 %10, 0, !dbg !93
  %12 = zext i1 %11 to i32, !dbg !93
  %13 = sext i32 %12 to i64, !dbg !94
  call void @klee_assume(i64 noundef %13), !dbg !95
  %14 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 2), align 8, !dbg !96
  %15 = icmp slt i32 %14, 100, !dbg !97
  %16 = zext i1 %15 to i32, !dbg !97
  %17 = sext i32 %16 to i64, !dbg !98
  call void @klee_assume(i64 noundef %17), !dbg !99
  %18 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 4), align 8, !dbg !100
  %19 = icmp eq i32 %18, 0, !dbg !102
  br i1 %19, label %20, label %21, !dbg !103

20:                                               ; preds = %0
  store i32 0, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 4), align 8, !dbg !104
  call void @cleanup_context(), !dbg !106
  store i32 0, i32* %1, align 4, !dbg !107
  br label %49, !dbg !107

21:                                               ; preds = %0
  %22 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 4), align 8, !dbg !108
  store i32 %22, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 3), align 4, !dbg !109
  store i32 0, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 4), align 8, !dbg !110
  %23 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 3), align 4, !dbg !111
  %24 = icmp sle i32 %23, 1024, !dbg !111
  br i1 %24, label %25, label %27, !dbg !111

25:                                               ; preds = %21
  br i1 true, label %26, label %27, !dbg !111

26:                                               ; preds = %25
  br label %29, !dbg !111

27:                                               ; preds = %25, %21
  %28 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i32 noundef 69, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !111
  br label %29, !dbg !111

29:                                               ; preds = %27, %26
  %30 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8* noundef getelementptr inbounds ([109 x i8], [109 x i8]* @.str.9, i64 0, i64 0), i32 noundef 70, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !112
  %31 = load i8*, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 0), align 8, !dbg !113
  %32 = load i8*, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 1), align 8, !dbg !114
  %33 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 3), align 4, !dbg !115
  %34 = sext i32 %33 to i64, !dbg !116
  %35 = call i8* @memcpy(i8* %31, i8* %32, i64 %34), !dbg !117
  %36 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 2), align 8, !dbg !118
  %37 = add nsw i32 %36, 1, !dbg !118
  store i32 %37, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 2), align 8, !dbg !118
  %38 = load i32, i32* getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 2), align 8, !dbg !119
  %39 = icmp eq i32 %38, 100, !dbg !121
  br i1 %39, label %40, label %44, !dbg !122

40:                                               ; preds = %29
  %41 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !123
  %42 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %41, i32 0, i32 1, !dbg !125
  %43 = load i8*, i8** %42, align 8, !dbg !125
  store i8* %43, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 1), align 8, !dbg !126
  br label %48, !dbg !127

44:                                               ; preds = %29
  %45 = load %struct.hugeDocParts_t*, %struct.hugeDocParts_t** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 5), align 8, !dbg !128
  %46 = getelementptr inbounds %struct.hugeDocParts_t, %struct.hugeDocParts_t* %45, i32 0, i32 0, !dbg !130
  %47 = load i8*, i8** %46, align 8, !dbg !130
  store i8* %47, i8** getelementptr inbounds (%struct.context_t, %struct.context_t* @ctx, i32 0, i32 1), align 8, !dbg !131
  br label %48

48:                                               ; preds = %44, %40
  call void @cleanup_context(), !dbg !132
  store i32 0, i32* %1, align 4, !dbg !133
  br label %49, !dbg !133

49:                                               ; preds = %48, %20
  %50 = load i32, i32* %1, align 4, !dbg !134
  ret i32 %50, !dbg !134
}

declare void @klee_assume(i64 noundef) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #5 !dbg !135 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !145, metadata !DIExpression()), !dbg !146
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !147, metadata !DIExpression()), !dbg !148
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !149, metadata !DIExpression()), !dbg !150
  call void @llvm.dbg.declare(metadata i8** %7, metadata !151, metadata !DIExpression()), !dbg !152
  %9 = load i8*, i8** %4, align 8, !dbg !153
  store i8* %9, i8** %7, align 8, !dbg !152
  call void @llvm.dbg.declare(metadata i8** %8, metadata !154, metadata !DIExpression()), !dbg !157
  %10 = load i8*, i8** %5, align 8, !dbg !158
  store i8* %10, i8** %8, align 8, !dbg !157
  br label %11, !dbg !159

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !160
  %13 = add i64 %12, -1, !dbg !160
  store i64 %13, i64* %6, align 8, !dbg !160
  %14 = icmp ugt i64 %12, 0, !dbg !161
  br i1 %14, label %15, label %21, !dbg !159

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !162
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !162
  store i8* %17, i8** %8, align 8, !dbg !162
  %18 = load i8, i8* %16, align 1, !dbg !163
  %19 = load i8*, i8** %7, align 8, !dbg !164
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !164
  store i8* %20, i8** %7, align 8, !dbg !164
  store i8 %18, i8* %19, align 1, !dbg !165
  br label %11, !dbg !159, !llvm.loop !166

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !168
  ret i8* %22, !dbg !169
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #6

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31}
!llvm.ident = !{!32, !32}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ctx", scope: !2, file: !3, line: 25, type: !5, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, globals: !4, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/109_testrecurse.c_307_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "568e49fb9bdfb0f09a34aa03aeb852f9")
!4 = !{!0}
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "context_t", file: !3, line: 23, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 16, size: 320, elements: !7)
!7 = !{!8, !11, !12, !14, !15, !16}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !6, file: !3, line: 17, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!10 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "current", scope: !6, file: !3, line: 18, baseType: !9, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_member, name: "curseg", scope: !6, file: !3, line: 19, baseType: !13, size: 32, offset: 128)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !6, file: !3, line: 20, baseType: !13, size: 32, offset: 160)
!15 = !DIDerivedType(tag: DW_TAG_member, name: "rlen", scope: !6, file: !3, line: 21, baseType: !13, size: 32, offset: 192)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "hugeDocParts", scope: !6, file: !3, line: 22, baseType: !17, size: 64, offset: 256)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "hugeDocParts_t", file: !3, line: 14, baseType: !19)
!19 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 11, size: 128, elements: !20)
!20 = !{!21, !22}
!21 = !DIDerivedType(tag: DW_TAG_member, name: "segment", scope: !19, file: !3, line: 12, baseType: !9, size: 64)
!22 = !DIDerivedType(tag: DW_TAG_member, name: "finish", scope: !19, file: !3, line: 13, baseType: !9, size: 64, offset: 64)
!23 = distinct !DICompileUnit(language: DW_LANG_C99, file: !24, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!24 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!25 = !{i32 7, !"Dwarf Version", i32 5}
!26 = !{i32 2, !"Debug Info Version", i32 3}
!27 = !{i32 1, !"wchar_size", i32 4}
!28 = !{i32 7, !"PIC Level", i32 2}
!29 = !{i32 7, !"PIE Level", i32 2}
!30 = !{i32 7, !"uwtable", i32 1}
!31 = !{i32 7, !"frame-pointer", i32 2}
!32 = !{!"Ubuntu clang version 14.0.6"}
!33 = distinct !DISubprogram(name: "initialize_context", scope: !3, file: !3, line: 27, type: !34, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!34 = !DISubroutineType(types: !35)
!35 = !{null}
!36 = !{}
!37 = !DILocation(line: 28, column: 18, scope: !33)
!38 = !DILocation(line: 28, column: 16, scope: !33)
!39 = !DILocation(line: 29, column: 19, scope: !33)
!40 = !DILocation(line: 29, column: 17, scope: !33)
!41 = !DILocation(line: 30, column: 24, scope: !33)
!42 = !DILocation(line: 30, column: 22, scope: !33)
!43 = !DILocation(line: 31, column: 33, scope: !33)
!44 = !DILocation(line: 31, column: 9, scope: !33)
!45 = !DILocation(line: 31, column: 23, scope: !33)
!46 = !DILocation(line: 31, column: 31, scope: !33)
!47 = !DILocation(line: 32, column: 32, scope: !33)
!48 = !DILocation(line: 32, column: 9, scope: !33)
!49 = !DILocation(line: 32, column: 23, scope: !33)
!50 = !DILocation(line: 32, column: 30, scope: !33)
!51 = !DILocation(line: 34, column: 28, scope: !33)
!52 = !DILocation(line: 34, column: 5, scope: !33)
!53 = !DILocation(line: 35, column: 28, scope: !33)
!54 = !DILocation(line: 35, column: 5, scope: !33)
!55 = !DILocation(line: 36, column: 28, scope: !33)
!56 = !DILocation(line: 36, column: 42, scope: !33)
!57 = !DILocation(line: 36, column: 5, scope: !33)
!58 = !DILocation(line: 37, column: 28, scope: !33)
!59 = !DILocation(line: 37, column: 42, scope: !33)
!60 = !DILocation(line: 37, column: 5, scope: !33)
!61 = !DILocation(line: 39, column: 5, scope: !33)
!62 = !DILocation(line: 40, column: 5, scope: !33)
!63 = !DILocation(line: 41, column: 5, scope: !33)
!64 = !DILocation(line: 42, column: 1, scope: !33)
!65 = distinct !DISubprogram(name: "cleanup_context", scope: !3, file: !3, line: 44, type: !34, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!66 = !DILocation(line: 45, column: 14, scope: !65)
!67 = !DILocation(line: 45, column: 5, scope: !65)
!68 = !DILocation(line: 46, column: 14, scope: !65)
!69 = !DILocation(line: 46, column: 5, scope: !65)
!70 = !DILocation(line: 47, column: 14, scope: !65)
!71 = !DILocation(line: 47, column: 28, scope: !65)
!72 = !DILocation(line: 47, column: 5, scope: !65)
!73 = !DILocation(line: 48, column: 14, scope: !65)
!74 = !DILocation(line: 48, column: 28, scope: !65)
!75 = !DILocation(line: 48, column: 5, scope: !65)
!76 = !DILocation(line: 49, column: 14, scope: !65)
!77 = !DILocation(line: 49, column: 10, scope: !65)
!78 = !DILocation(line: 49, column: 5, scope: !65)
!79 = !DILocation(line: 50, column: 1, scope: !65)
!80 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 52, type: !81, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !36)
!81 = !DISubroutineType(types: !82)
!82 = !{!13}
!83 = !DILocation(line: 53, column: 5, scope: !80)
!84 = !DILocation(line: 55, column: 21, scope: !80)
!85 = !DILocation(line: 55, column: 26, scope: !80)
!86 = !DILocation(line: 55, column: 17, scope: !80)
!87 = !DILocation(line: 55, column: 5, scope: !80)
!88 = !DILocation(line: 56, column: 21, scope: !80)
!89 = !DILocation(line: 56, column: 25, scope: !80)
!90 = !DILocation(line: 56, column: 17, scope: !80)
!91 = !DILocation(line: 56, column: 5, scope: !80)
!92 = !DILocation(line: 57, column: 21, scope: !80)
!93 = !DILocation(line: 57, column: 28, scope: !80)
!94 = !DILocation(line: 57, column: 17, scope: !80)
!95 = !DILocation(line: 57, column: 5, scope: !80)
!96 = !DILocation(line: 58, column: 21, scope: !80)
!97 = !DILocation(line: 58, column: 28, scope: !80)
!98 = !DILocation(line: 58, column: 17, scope: !80)
!99 = !DILocation(line: 58, column: 5, scope: !80)
!100 = !DILocation(line: 60, column: 13, scope: !101)
!101 = distinct !DILexicalBlock(scope: !80, file: !3, line: 60, column: 9)
!102 = !DILocation(line: 60, column: 18, scope: !101)
!103 = !DILocation(line: 60, column: 9, scope: !80)
!104 = !DILocation(line: 61, column: 18, scope: !105)
!105 = distinct !DILexicalBlock(scope: !101, file: !3, line: 60, column: 24)
!106 = !DILocation(line: 62, column: 9, scope: !105)
!107 = !DILocation(line: 63, column: 9, scope: !105)
!108 = !DILocation(line: 66, column: 19, scope: !80)
!109 = !DILocation(line: 66, column: 13, scope: !80)
!110 = !DILocation(line: 67, column: 14, scope: !80)
!111 = !DILocation(line: 69, column: 5, scope: !80)
!112 = !DILocation(line: 70, column: 5, scope: !80)
!113 = !DILocation(line: 72, column: 16, scope: !80)
!114 = !DILocation(line: 72, column: 28, scope: !80)
!115 = !DILocation(line: 72, column: 41, scope: !80)
!116 = !DILocation(line: 72, column: 37, scope: !80)
!117 = !DILocation(line: 72, column: 5, scope: !80)
!118 = !DILocation(line: 74, column: 15, scope: !80)
!119 = !DILocation(line: 75, column: 13, scope: !120)
!120 = distinct !DILexicalBlock(scope: !80, file: !3, line: 75, column: 9)
!121 = !DILocation(line: 75, column: 20, scope: !120)
!122 = !DILocation(line: 75, column: 9, scope: !80)
!123 = !DILocation(line: 76, column: 27, scope: !124)
!124 = distinct !DILexicalBlock(scope: !120, file: !3, line: 75, column: 34)
!125 = !DILocation(line: 76, column: 41, scope: !124)
!126 = !DILocation(line: 76, column: 21, scope: !124)
!127 = !DILocation(line: 77, column: 5, scope: !124)
!128 = !DILocation(line: 78, column: 27, scope: !129)
!129 = distinct !DILexicalBlock(scope: !120, file: !3, line: 77, column: 12)
!130 = !DILocation(line: 78, column: 41, scope: !129)
!131 = !DILocation(line: 78, column: 21, scope: !129)
!132 = !DILocation(line: 81, column: 5, scope: !80)
!133 = !DILocation(line: 82, column: 5, scope: !80)
!134 = !DILocation(line: 83, column: 1, scope: !80)
!135 = distinct !DISubprogram(name: "memcpy", scope: !136, file: !136, line: 12, type: !137, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !23, retainedNodes: !36)
!136 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!137 = !DISubroutineType(types: !138)
!138 = !{!139, !139, !140, !142}
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !143, line: 46, baseType: !144)
!143 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!144 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!145 = !DILocalVariable(name: "destaddr", arg: 1, scope: !135, file: !136, line: 12, type: !139)
!146 = !DILocation(line: 12, column: 20, scope: !135)
!147 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !135, file: !136, line: 12, type: !140)
!148 = !DILocation(line: 12, column: 42, scope: !135)
!149 = !DILocalVariable(name: "len", arg: 3, scope: !135, file: !136, line: 12, type: !142)
!150 = !DILocation(line: 12, column: 58, scope: !135)
!151 = !DILocalVariable(name: "dest", scope: !135, file: !136, line: 13, type: !9)
!152 = !DILocation(line: 13, column: 9, scope: !135)
!153 = !DILocation(line: 13, column: 16, scope: !135)
!154 = !DILocalVariable(name: "src", scope: !135, file: !136, line: 14, type: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!157 = !DILocation(line: 14, column: 15, scope: !135)
!158 = !DILocation(line: 14, column: 21, scope: !135)
!159 = !DILocation(line: 16, column: 3, scope: !135)
!160 = !DILocation(line: 16, column: 13, scope: !135)
!161 = !DILocation(line: 16, column: 16, scope: !135)
!162 = !DILocation(line: 17, column: 19, scope: !135)
!163 = !DILocation(line: 17, column: 15, scope: !135)
!164 = !DILocation(line: 17, column: 10, scope: !135)
!165 = !DILocation(line: 17, column: 13, scope: !135)
!166 = distinct !{!166, !159, !162, !167}
!167 = !{!"llvm.loop.mustprogress"}
!168 = !DILocation(line: 18, column: 10, scope: !135)
!169 = !DILocation(line: 18, column: 3, scope: !135)

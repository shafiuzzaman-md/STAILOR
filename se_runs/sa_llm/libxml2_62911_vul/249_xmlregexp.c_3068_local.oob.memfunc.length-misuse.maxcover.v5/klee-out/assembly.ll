; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/249_xmlregexp.c_3068_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/249_xmlregexp.c_3068_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRegExecCtxt = type { i32, i32, %struct._xmlRegExecRollback*, i32 }
%struct._xmlRegExecRollback = type { i8* }

@.str = private unnamed_addr constant [14 x i8] c"saving regexp\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"(len >= 0 && len <= 1024) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [108 x i8] c"se_runs/sa_llm/libxml2_62911_vul/249_xmlregexp.c_3068_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlFAGenerateTransitions = private unnamed_addr constant [48 x i8] c"void xmlFAGenerateTransitions(xmlRegExecCtxt *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"maxRollbacks\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"nbRollbacks\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlRegexpErrMemory(i8* noundef %0, i8* noundef %1) #0 !dbg !28 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %3, align 8
  call void @llvm.dbg.declare(metadata i8** %3, metadata !35, metadata !DIExpression()), !dbg !36
  store i8* %1, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !37, metadata !DIExpression()), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xmlFAGenerateTransitions(%struct._xmlRegExecCtxt* noundef %0) #0 !dbg !40 {
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  %3 = alloca %struct._xmlRegExecRollback*, align 8
  %4 = alloca i32, align 4
  store %struct._xmlRegExecCtxt* %0, %struct._xmlRegExecCtxt** %2, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !43, metadata !DIExpression()), !dbg !44
  %5 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !45
  %6 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %5, i32 0, i32 2, !dbg !47
  %7 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %6, align 8, !dbg !47
  %8 = icmp eq %struct._xmlRegExecRollback* %7, null, !dbg !48
  br i1 %8, label %9, label %14, !dbg !49

9:                                                ; preds = %1
  call void @xmlRegexpErrMemory(i8* noundef null, i8* noundef getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %10 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !52
  %11 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %10, i32 0, i32 0, !dbg !53
  store i32 0, i32* %11, align 8, !dbg !54
  %12 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !55
  %13 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %12, i32 0, i32 3, !dbg !56
  store i32 1, i32* %13, align 8, !dbg !57
  br label %53, !dbg !58

14:                                               ; preds = %1
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !59
  %16 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %15, i32 0, i32 0, !dbg !61
  %17 = load i32, i32* %16, align 8, !dbg !61
  %18 = icmp sgt i32 %17, 0, !dbg !62
  br i1 %18, label %19, label %30, !dbg !63

19:                                               ; preds = %14
  %20 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !64
  %21 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %20, i32 0, i32 2, !dbg !66
  %22 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %21, align 8, !dbg !66
  %23 = bitcast %struct._xmlRegExecRollback* %22 to i8*, !dbg !67
  %24 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !68
  %25 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %24, i32 0, i32 0, !dbg !69
  %26 = load i32, i32* %25, align 8, !dbg !69
  %27 = sext i32 %26 to i64, !dbg !68
  %28 = mul i64 %27, 8, !dbg !70
  %29 = call i8* @memset(i8* %23, i32 0, i64 %28), !dbg !67
  br label %30, !dbg !71

30:                                               ; preds = %19, %14
  %31 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !72
  %32 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %31, i32 0, i32 1, !dbg !74
  %33 = load i32, i32* %32, align 4, !dbg !74
  %34 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !75
  %35 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %34, i32 0, i32 0, !dbg !76
  %36 = load i32, i32* %35, align 8, !dbg !76
  %37 = icmp sge i32 %33, %36, !dbg !77
  br i1 %37, label %38, label %53, !dbg !78

38:                                               ; preds = %30
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecRollback** %3, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %4, metadata !82, metadata !DIExpression()), !dbg !83
  %39 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !84
  %40 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %39, i32 0, i32 0, !dbg !85
  %41 = load i32, i32* %40, align 8, !dbg !85
  store i32 %41, i32* %4, align 4, !dbg !83
  %42 = load i32, i32* %4, align 4, !dbg !86
  %43 = icmp sge i32 %42, 0, !dbg !86
  br i1 %43, label %44, label %49, !dbg !86

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4, !dbg !86
  %46 = icmp sle i32 %45, 1024, !dbg !86
  br i1 %46, label %47, label %49, !dbg !86

47:                                               ; preds = %44
  br i1 true, label %48, label %49, !dbg !86

48:                                               ; preds = %47
  br label %51, !dbg !86

49:                                               ; preds = %47, %44, %38
  %50 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 53, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !86
  br label %51, !dbg !86

51:                                               ; preds = %49, %48
  %52 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([108 x i8], [108 x i8]* @.str.3, i64 0, i64 0), i32 noundef 56, i8* noundef getelementptr inbounds ([48 x i8], [48 x i8]* @__PRETTY_FUNCTION__.xmlFAGenerateTransitions, i64 0, i64 0)), !dbg !87
  br label %53, !dbg !88

53:                                               ; preds = %9, %51, %30
  ret void, !dbg !89
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRegExecCtxt*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRegExecCtxt** %2, metadata !93, metadata !DIExpression()), !dbg !94
  %3 = call noalias i8* @malloc(i64 noundef 24) #7, !dbg !95
  %4 = bitcast i8* %3 to %struct._xmlRegExecCtxt*, !dbg !96
  store %struct._xmlRegExecCtxt* %4, %struct._xmlRegExecCtxt** %2, align 8, !dbg !94
  %5 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !97
  %6 = icmp ne %struct._xmlRegExecCtxt* %5, null, !dbg !97
  br i1 %6, label %8, label %7, !dbg !99

7:                                                ; preds = %0
  store i32 1, i32* %1, align 4, !dbg !100
  br label %72, !dbg !100

8:                                                ; preds = %0
  %9 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !101
  %10 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %9, i32 0, i32 0, !dbg !102
  %11 = bitcast i32* %10 to i8*, !dbg !103
  call void @klee_make_symbolic(i8* noundef %11, i64 noundef 4, i8* noundef getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0)), !dbg !104
  %12 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !105
  %13 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %12, i32 0, i32 1, !dbg !106
  %14 = bitcast i32* %13 to i8*, !dbg !107
  call void @klee_make_symbolic(i8* noundef %14, i64 noundef 4, i8* noundef getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0)), !dbg !108
  %15 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !109
  %16 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %15, i32 0, i32 0, !dbg !110
  %17 = load i32, i32* %16, align 8, !dbg !110
  %18 = icmp sge i32 %17, 0, !dbg !111
  %19 = zext i1 %18 to i32, !dbg !111
  %20 = sext i32 %19 to i64, !dbg !109
  call void @klee_assume(i64 noundef %20), !dbg !112
  %21 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !113
  %22 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %21, i32 0, i32 0, !dbg !114
  %23 = load i32, i32* %22, align 8, !dbg !114
  %24 = icmp sle i32 %23, 1024, !dbg !115
  %25 = zext i1 %24 to i32, !dbg !115
  %26 = sext i32 %25 to i64, !dbg !113
  call void @klee_assume(i64 noundef %26), !dbg !116
  %27 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !117
  %28 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %27, i32 0, i32 1, !dbg !118
  %29 = load i32, i32* %28, align 4, !dbg !118
  %30 = icmp sge i32 %29, 0, !dbg !119
  %31 = zext i1 %30 to i32, !dbg !119
  %32 = sext i32 %31 to i64, !dbg !117
  call void @klee_assume(i64 noundef %32), !dbg !120
  %33 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !121
  %34 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %33, i32 0, i32 1, !dbg !122
  %35 = load i32, i32* %34, align 4, !dbg !122
  %36 = icmp sle i32 %35, 2048, !dbg !123
  %37 = zext i1 %36 to i32, !dbg !123
  %38 = sext i32 %37 to i64, !dbg !121
  call void @klee_assume(i64 noundef %38), !dbg !124
  %39 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !125
  %40 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %39, i32 0, i32 0, !dbg !127
  %41 = load i32, i32* %40, align 8, !dbg !127
  %42 = icmp sgt i32 %41, 0, !dbg !128
  br i1 %42, label %43, label %53, !dbg !129

43:                                               ; preds = %8
  %44 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !130
  %45 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %44, i32 0, i32 0, !dbg !132
  %46 = load i32, i32* %45, align 8, !dbg !132
  %47 = sext i32 %46 to i64, !dbg !130
  %48 = mul i64 %47, 8, !dbg !133
  %49 = call noalias i8* @malloc(i64 noundef %48) #7, !dbg !134
  %50 = bitcast i8* %49 to %struct._xmlRegExecRollback*, !dbg !135
  %51 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !136
  %52 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %51, i32 0, i32 2, !dbg !137
  store %struct._xmlRegExecRollback* %50, %struct._xmlRegExecRollback** %52, align 8, !dbg !138
  br label %56, !dbg !139

53:                                               ; preds = %8
  %54 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !140
  %55 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %54, i32 0, i32 2, !dbg !142
  store %struct._xmlRegExecRollback* null, %struct._xmlRegExecRollback** %55, align 8, !dbg !143
  br label %56

56:                                               ; preds = %53, %43
  %57 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !144
  %58 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %57, i32 0, i32 3, !dbg !145
  store i32 0, i32* %58, align 8, !dbg !146
  %59 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !147
  call void @xmlFAGenerateTransitions(%struct._xmlRegExecCtxt* noundef %59), !dbg !148
  %60 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !149
  %61 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %60, i32 0, i32 2, !dbg !151
  %62 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %61, align 8, !dbg !151
  %63 = icmp ne %struct._xmlRegExecRollback* %62, null, !dbg !149
  br i1 %63, label %64, label %69, !dbg !152

64:                                               ; preds = %56
  %65 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !153
  %66 = getelementptr inbounds %struct._xmlRegExecCtxt, %struct._xmlRegExecCtxt* %65, i32 0, i32 2, !dbg !154
  %67 = load %struct._xmlRegExecRollback*, %struct._xmlRegExecRollback** %66, align 8, !dbg !154
  %68 = bitcast %struct._xmlRegExecRollback* %67 to i8*, !dbg !153
  call void @free(i8* noundef %68) #7, !dbg !155
  br label %69, !dbg !155

69:                                               ; preds = %64, %56
  %70 = load %struct._xmlRegExecCtxt*, %struct._xmlRegExecCtxt** %2, align 8, !dbg !156
  %71 = bitcast %struct._xmlRegExecCtxt* %70 to i8*, !dbg !156
  call void @free(i8* noundef %71) #7, !dbg !157
  store i32 0, i32* %1, align 4, !dbg !158
  br label %72, !dbg !158

72:                                               ; preds = %69, %7
  %73 = load i32, i32* %1, align 4, !dbg !159
  ret i32 %73, !dbg !159
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #4

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #5

declare void @klee_assume(i64 noundef) #5

; Function Attrs: nounwind
declare void @free(i8* noundef) #4

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !160 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !167, metadata !DIExpression()), !dbg !168
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !169, metadata !DIExpression()), !dbg !170
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !171, metadata !DIExpression()), !dbg !172
  call void @llvm.dbg.declare(metadata i8** %7, metadata !173, metadata !DIExpression()), !dbg !175
  %8 = load i8*, i8** %4, align 8, !dbg !176
  store i8* %8, i8** %7, align 8, !dbg !175
  br label %9, !dbg !177

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !178
  %11 = add i64 %10, -1, !dbg !178
  store i64 %11, i64* %6, align 8, !dbg !178
  %12 = icmp ugt i64 %10, 0, !dbg !179
  br i1 %12, label %13, label %18, !dbg !177

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !180
  %15 = trunc i32 %14 to i8, !dbg !180
  %16 = load i8*, i8** %7, align 8, !dbg !181
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !181
  store i8* %17, i8** %7, align 8, !dbg !181
  store i8 %15, i8* %16, align 1, !dbg !182
  br label %9, !dbg !177, !llvm.loop !183

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !185
  ret i8* %19, !dbg !186
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nofree nounwind willreturn writeonly }
attributes #3 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !18}
!llvm.module.flags = !{!20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27, !27}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/249_xmlregexp.c_3068_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "00c1b46c27fc9e925fb22012c7ae2158")
!2 = !{!3, !4, !12}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecCtxt", file: !1, line: 11, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecCtxt", file: !1, line: 18, size: 192, elements: !7)
!7 = !{!8, !10, !11, !17}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "maxRollbacks", scope: !6, file: !1, line: 19, baseType: !9, size: 32)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !DIDerivedType(tag: DW_TAG_member, name: "nbRollbacks", scope: !6, file: !1, line: 20, baseType: !9, size: 32, offset: 32)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "rollbacks", scope: !6, file: !1, line: 21, baseType: !12, size: 64, offset: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRegExecRollback", file: !1, line: 10, baseType: !14)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRegExecRollback", file: !1, line: 13, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !14, file: !1, line: 15, baseType: !3, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !6, file: !1, line: 22, baseType: !9, size: 32, offset: 128)
!18 = distinct !DICompileUnit(language: DW_LANG_C99, file: !19, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!19 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!20 = !{i32 7, !"Dwarf Version", i32 5}
!21 = !{i32 2, !"Debug Info Version", i32 3}
!22 = !{i32 1, !"wchar_size", i32 4}
!23 = !{i32 7, !"PIC Level", i32 2}
!24 = !{i32 7, !"PIE Level", i32 2}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"Ubuntu clang version 14.0.6"}
!28 = distinct !DISubprogram(name: "xmlRegexpErrMemory", scope: !1, file: !1, line: 26, type: !29, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !3, !31}
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!34 = !{}
!35 = !DILocalVariable(name: "ctx", arg: 1, scope: !28, file: !1, line: 26, type: !3)
!36 = !DILocation(line: 26, column: 31, scope: !28)
!37 = !DILocalVariable(name: "msg", arg: 2, scope: !28, file: !1, line: 26, type: !31)
!38 = !DILocation(line: 26, column: 48, scope: !28)
!39 = !DILocation(line: 28, column: 1, scope: !28)
!40 = distinct !DISubprogram(name: "xmlFAGenerateTransitions", scope: !1, file: !1, line: 31, type: !41, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !4}
!43 = !DILocalVariable(name: "exec", arg: 1, scope: !40, file: !1, line: 31, type: !4)
!44 = !DILocation(line: 31, column: 47, scope: !40)
!45 = !DILocation(line: 33, column: 9, scope: !46)
!46 = distinct !DILexicalBlock(scope: !40, file: !1, line: 33, column: 9)
!47 = !DILocation(line: 33, column: 15, scope: !46)
!48 = !DILocation(line: 33, column: 25, scope: !46)
!49 = !DILocation(line: 33, column: 9, scope: !40)
!50 = !DILocation(line: 34, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 33, column: 34)
!52 = !DILocation(line: 35, column: 9, scope: !51)
!53 = !DILocation(line: 35, column: 15, scope: !51)
!54 = !DILocation(line: 35, column: 28, scope: !51)
!55 = !DILocation(line: 36, column: 9, scope: !51)
!56 = !DILocation(line: 36, column: 15, scope: !51)
!57 = !DILocation(line: 36, column: 22, scope: !51)
!58 = !DILocation(line: 37, column: 9, scope: !51)
!59 = !DILocation(line: 41, column: 9, scope: !60)
!60 = distinct !DILexicalBlock(scope: !40, file: !1, line: 41, column: 9)
!61 = !DILocation(line: 41, column: 15, scope: !60)
!62 = !DILocation(line: 41, column: 28, scope: !60)
!63 = !DILocation(line: 41, column: 9, scope: !40)
!64 = !DILocation(line: 42, column: 16, scope: !65)
!65 = distinct !DILexicalBlock(scope: !60, file: !1, line: 41, column: 33)
!66 = !DILocation(line: 42, column: 22, scope: !65)
!67 = !DILocation(line: 42, column: 9, scope: !65)
!68 = !DILocation(line: 43, column: 16, scope: !65)
!69 = !DILocation(line: 43, column: 22, scope: !65)
!70 = !DILocation(line: 43, column: 35, scope: !65)
!71 = !DILocation(line: 44, column: 5, scope: !65)
!72 = !DILocation(line: 47, column: 9, scope: !73)
!73 = distinct !DILexicalBlock(scope: !40, file: !1, line: 47, column: 9)
!74 = !DILocation(line: 47, column: 15, scope: !73)
!75 = !DILocation(line: 47, column: 30, scope: !73)
!76 = !DILocation(line: 47, column: 36, scope: !73)
!77 = !DILocation(line: 47, column: 27, scope: !73)
!78 = !DILocation(line: 47, column: 9, scope: !40)
!79 = !DILocalVariable(name: "tmp", scope: !80, file: !1, line: 48, type: !12)
!80 = distinct !DILexicalBlock(scope: !73, file: !1, line: 47, column: 50)
!81 = !DILocation(line: 48, column: 29, scope: !80)
!82 = !DILocalVariable(name: "len", scope: !80, file: !1, line: 49, type: !9)
!83 = !DILocation(line: 49, column: 13, scope: !80)
!84 = !DILocation(line: 49, column: 19, scope: !80)
!85 = !DILocation(line: 49, column: 25, scope: !80)
!86 = !DILocation(line: 53, column: 9, scope: !80)
!87 = !DILocation(line: 56, column: 9, scope: !80)
!88 = !DILocation(line: 57, column: 5, scope: !80)
!89 = !DILocation(line: 58, column: 1, scope: !40)
!90 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 60, type: !91, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !34)
!91 = !DISubroutineType(types: !92)
!92 = !{!9}
!93 = !DILocalVariable(name: "exec", scope: !90, file: !1, line: 62, type: !4)
!94 = !DILocation(line: 62, column: 21, scope: !90)
!95 = !DILocation(line: 62, column: 45, scope: !90)
!96 = !DILocation(line: 62, column: 28, scope: !90)
!97 = !DILocation(line: 63, column: 10, scope: !98)
!98 = distinct !DILexicalBlock(scope: !90, file: !1, line: 63, column: 9)
!99 = !DILocation(line: 63, column: 9, scope: !90)
!100 = !DILocation(line: 63, column: 16, scope: !98)
!101 = !DILocation(line: 66, column: 25, scope: !90)
!102 = !DILocation(line: 66, column: 31, scope: !90)
!103 = !DILocation(line: 66, column: 24, scope: !90)
!104 = !DILocation(line: 66, column: 5, scope: !90)
!105 = !DILocation(line: 67, column: 25, scope: !90)
!106 = !DILocation(line: 67, column: 31, scope: !90)
!107 = !DILocation(line: 67, column: 24, scope: !90)
!108 = !DILocation(line: 67, column: 5, scope: !90)
!109 = !DILocation(line: 70, column: 17, scope: !90)
!110 = !DILocation(line: 70, column: 23, scope: !90)
!111 = !DILocation(line: 70, column: 36, scope: !90)
!112 = !DILocation(line: 70, column: 5, scope: !90)
!113 = !DILocation(line: 71, column: 17, scope: !90)
!114 = !DILocation(line: 71, column: 23, scope: !90)
!115 = !DILocation(line: 71, column: 36, scope: !90)
!116 = !DILocation(line: 71, column: 5, scope: !90)
!117 = !DILocation(line: 72, column: 17, scope: !90)
!118 = !DILocation(line: 72, column: 23, scope: !90)
!119 = !DILocation(line: 72, column: 35, scope: !90)
!120 = !DILocation(line: 72, column: 5, scope: !90)
!121 = !DILocation(line: 73, column: 17, scope: !90)
!122 = !DILocation(line: 73, column: 23, scope: !90)
!123 = !DILocation(line: 73, column: 35, scope: !90)
!124 = !DILocation(line: 73, column: 5, scope: !90)
!125 = !DILocation(line: 76, column: 9, scope: !126)
!126 = distinct !DILexicalBlock(scope: !90, file: !1, line: 76, column: 9)
!127 = !DILocation(line: 76, column: 15, scope: !126)
!128 = !DILocation(line: 76, column: 28, scope: !126)
!129 = !DILocation(line: 76, column: 9, scope: !90)
!130 = !DILocation(line: 78, column: 13, scope: !131)
!131 = distinct !DILexicalBlock(scope: !126, file: !1, line: 76, column: 33)
!132 = !DILocation(line: 78, column: 19, scope: !131)
!133 = !DILocation(line: 78, column: 32, scope: !131)
!134 = !DILocation(line: 77, column: 48, scope: !131)
!135 = !DILocation(line: 77, column: 27, scope: !131)
!136 = !DILocation(line: 77, column: 9, scope: !131)
!137 = !DILocation(line: 77, column: 15, scope: !131)
!138 = !DILocation(line: 77, column: 25, scope: !131)
!139 = !DILocation(line: 79, column: 5, scope: !131)
!140 = !DILocation(line: 80, column: 9, scope: !141)
!141 = distinct !DILexicalBlock(scope: !126, file: !1, line: 79, column: 12)
!142 = !DILocation(line: 80, column: 15, scope: !141)
!143 = !DILocation(line: 80, column: 25, scope: !141)
!144 = !DILocation(line: 83, column: 5, scope: !90)
!145 = !DILocation(line: 83, column: 11, scope: !90)
!146 = !DILocation(line: 83, column: 18, scope: !90)
!147 = !DILocation(line: 86, column: 30, scope: !90)
!148 = !DILocation(line: 86, column: 5, scope: !90)
!149 = !DILocation(line: 89, column: 9, scope: !150)
!150 = distinct !DILexicalBlock(scope: !90, file: !1, line: 89, column: 9)
!151 = !DILocation(line: 89, column: 15, scope: !150)
!152 = !DILocation(line: 89, column: 9, scope: !90)
!153 = !DILocation(line: 89, column: 31, scope: !150)
!154 = !DILocation(line: 89, column: 37, scope: !150)
!155 = !DILocation(line: 89, column: 26, scope: !150)
!156 = !DILocation(line: 90, column: 10, scope: !90)
!157 = !DILocation(line: 90, column: 5, scope: !90)
!158 = !DILocation(line: 92, column: 5, scope: !90)
!159 = !DILocation(line: 93, column: 1, scope: !90)
!160 = distinct !DISubprogram(name: "memset", scope: !161, file: !161, line: 12, type: !162, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !18, retainedNodes: !34)
!161 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!162 = !DISubroutineType(types: !163)
!163 = !{!3, !3, !9, !164}
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !165, line: 46, baseType: !166)
!165 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!166 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!167 = !DILocalVariable(name: "dst", arg: 1, scope: !160, file: !161, line: 12, type: !3)
!168 = !DILocation(line: 12, column: 20, scope: !160)
!169 = !DILocalVariable(name: "s", arg: 2, scope: !160, file: !161, line: 12, type: !9)
!170 = !DILocation(line: 12, column: 29, scope: !160)
!171 = !DILocalVariable(name: "count", arg: 3, scope: !160, file: !161, line: 12, type: !164)
!172 = !DILocation(line: 12, column: 39, scope: !160)
!173 = !DILocalVariable(name: "a", scope: !160, file: !161, line: 13, type: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!175 = !DILocation(line: 13, column: 9, scope: !160)
!176 = !DILocation(line: 13, column: 13, scope: !160)
!177 = !DILocation(line: 14, column: 3, scope: !160)
!178 = !DILocation(line: 14, column: 15, scope: !160)
!179 = !DILocation(line: 14, column: 18, scope: !160)
!180 = !DILocation(line: 15, column: 12, scope: !160)
!181 = !DILocation(line: 15, column: 7, scope: !160)
!182 = !DILocation(line: 15, column: 10, scope: !160)
!183 = distinct !{!183, !177, !180, !184}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 16, column: 10, scope: !160)
!186 = !DILocation(line: 16, column: 3, scope: !160)

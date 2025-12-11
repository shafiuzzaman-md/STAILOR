; ModuleID = 'se_runs/sa_llm/libxml2_62911_vul/228_relaxng.c_1283_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_62911_vul/228_relaxng.c_1283_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGValidState = type { i8*, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"state_buffer_size\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"SAILR_VULN_ASSERT\00", align 1
@.str.2 = private unnamed_addr constant [75 x i8] c"(sizeof(xmlRelaxNGValidState) <= state_buffer_size) && \22SAILR_VULN_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_62911_vul/228_relaxng.c_1283_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState = private unnamed_addr constant [71 x i8] c"xmlRelaxNGValidState *xmlRelaxNGCopyValidState(xmlRelaxNGValidState *)\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"state\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidState* noundef %0) #0 !dbg !22 {
  %2 = alloca %struct._xmlRelaxNGValidState*, align 8
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  %4 = alloca %struct._xmlRelaxNGValidState*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct._xmlRelaxNGValidState* %0, %struct._xmlRelaxNGValidState** %3, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %3, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %4, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i8** %5, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %6, metadata !32, metadata !DIExpression()), !dbg !33
  %8 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !34
  %9 = icmp eq %struct._xmlRelaxNGValidState* %8, null, !dbg !36
  br i1 %9, label %10, label %11, !dbg !37

10:                                               ; preds = %1
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !38
  br label %79, !dbg !38

11:                                               ; preds = %1
  %12 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !39
  %13 = bitcast i8* %12 to %struct._xmlRelaxNGValidState*, !dbg !40
  store %struct._xmlRelaxNGValidState* %13, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !41
  %14 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !42
  %15 = icmp eq %struct._xmlRelaxNGValidState* %14, null, !dbg !44
  br i1 %15, label %16, label %17, !dbg !45

16:                                               ; preds = %11
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !46
  br label %79, !dbg !46

17:                                               ; preds = %11
  call void @llvm.dbg.declare(metadata i32* %7, metadata !47, metadata !DIExpression()), !dbg !48
  %18 = bitcast i32* %7 to i8*, !dbg !49
  call void @klee_make_symbolic(i8* noundef %18, i64 noundef 4, i8* noundef getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0)), !dbg !50
  %19 = load i32, i32* %7, align 4, !dbg !51
  %20 = icmp sge i32 %19, 0, !dbg !52
  br i1 %20, label %21, label %25, !dbg !53

21:                                               ; preds = %17
  %22 = load i32, i32* %7, align 4, !dbg !54
  %23 = sext i32 %22 to i64, !dbg !54
  %24 = icmp ule i64 %23, 32, !dbg !55
  br label %25

25:                                               ; preds = %21, %17
  %26 = phi i1 [ false, %17 ], [ %24, %21 ], !dbg !56
  %27 = zext i1 %26 to i32, !dbg !53
  %28 = sext i32 %27 to i64, !dbg !51
  call void @klee_assume(i64 noundef %28), !dbg !57
  %29 = load i32, i32* %7, align 4, !dbg !58
  %30 = sext i32 %29 to i64, !dbg !58
  %31 = icmp ule i64 16, %30, !dbg !58
  br i1 %31, label %32, label %34, !dbg !58

32:                                               ; preds = %25
  br i1 true, label %33, label %34, !dbg !58

33:                                               ; preds = %32
  br label %36, !dbg !58

34:                                               ; preds = %32, %25
  %35 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([75 x i8], [75 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 52, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState, i64 0, i64 0)), !dbg !58
  br label %36, !dbg !58

36:                                               ; preds = %34, %33
  %37 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 55, i8* noundef getelementptr inbounds ([71 x i8], [71 x i8]* @__PRETTY_FUNCTION__.xmlRelaxNGCopyValidState, i64 0, i64 0)), !dbg !59
  %38 = load i32, i32* %7, align 4, !dbg !60
  %39 = sext i32 %38 to i64, !dbg !60
  %40 = icmp ule i64 16, %39, !dbg !62
  br i1 %40, label %41, label %47, !dbg !63

41:                                               ; preds = %36
  %42 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !64
  %43 = bitcast %struct._xmlRelaxNGValidState* %42 to i8*, !dbg !66
  %44 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !67
  %45 = bitcast %struct._xmlRelaxNGValidState* %44 to i8*, !dbg !66
  %46 = call i8* @memcpy(i8* %43, i8* %45, i64 16), !dbg !66
  br label %48, !dbg !68

47:                                               ; preds = %36
  br label %48

48:                                               ; preds = %47, %41
  %49 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !69
  %50 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %49, i32 0, i32 0, !dbg !70
  %51 = load i8*, i8** %50, align 8, !dbg !70
  store i8* %51, i8** %5, align 8, !dbg !71
  %52 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !72
  %53 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %52, i32 0, i32 1, !dbg !73
  %54 = load i32, i32* %53, align 8, !dbg !73
  store i32 %54, i32* %6, align 4, !dbg !74
  %55 = load i8*, i8** %5, align 8, !dbg !75
  %56 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !76
  %57 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %56, i32 0, i32 0, !dbg !77
  store i8* %55, i8** %57, align 8, !dbg !78
  %58 = load i32, i32* %6, align 4, !dbg !79
  %59 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !80
  %60 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %59, i32 0, i32 1, !dbg !81
  store i32 %58, i32* %60, align 8, !dbg !82
  %61 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !83
  %62 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %61, i32 0, i32 2, !dbg !85
  %63 = load i32, i32* %62, align 4, !dbg !85
  %64 = icmp sgt i32 %63, 0, !dbg !86
  br i1 %64, label %65, label %77, !dbg !87

65:                                               ; preds = %48
  %66 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !88
  %67 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %66, i32 0, i32 0, !dbg !91
  %68 = load i8*, i8** %67, align 8, !dbg !91
  %69 = icmp eq i8* %68, null, !dbg !92
  br i1 %69, label %70, label %76, !dbg !93

70:                                               ; preds = %65
  %71 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !94
  %72 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %71, i32 0, i32 1, !dbg !96
  %73 = load i32, i32* %72, align 8, !dbg !96
  %74 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !97
  %75 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %74, i32 0, i32 1, !dbg !98
  store i32 %73, i32* %75, align 8, !dbg !99
  br label %76, !dbg !100

76:                                               ; preds = %70, %65
  br label %77, !dbg !101

77:                                               ; preds = %76, %48
  %78 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %4, align 8, !dbg !102
  store %struct._xmlRelaxNGValidState* %78, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !103
  br label %79, !dbg !103

79:                                               ; preds = %77, %16, %10
  %80 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !104
  ret %struct._xmlRelaxNGValidState* %80, !dbg !104
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct._xmlRelaxNGValidState* @make_symbolic_state() #0 !dbg !105 {
  %1 = alloca %struct._xmlRelaxNGValidState*, align 8
  %2 = alloca %struct._xmlRelaxNGValidState*, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %2, metadata !108, metadata !DIExpression()), !dbg !109
  %3 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !110
  %4 = bitcast i8* %3 to %struct._xmlRelaxNGValidState*, !dbg !111
  store %struct._xmlRelaxNGValidState* %4, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !109
  %5 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !112
  %6 = icmp eq %struct._xmlRelaxNGValidState* %5, null, !dbg !114
  br i1 %6, label %7, label %8, !dbg !115

7:                                                ; preds = %0
  store %struct._xmlRelaxNGValidState* null, %struct._xmlRelaxNGValidState** %1, align 8, !dbg !116
  br label %18, !dbg !116

8:                                                ; preds = %0
  %9 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !117
  %10 = bitcast %struct._xmlRelaxNGValidState* %9 to i8*, !dbg !117
  call void @klee_make_symbolic(i8* noundef %10, i64 noundef 16, i8* noundef getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0)), !dbg !118
  %11 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !119
  %12 = getelementptr inbounds %struct._xmlRelaxNGValidState, %struct._xmlRelaxNGValidState* %11, i32 0, i32 2, !dbg !120
  %13 = load i32, i32* %12, align 4, !dbg !120
  %14 = icmp sge i32 %13, 0, !dbg !121
  %15 = zext i1 %14 to i32, !dbg !121
  %16 = sext i32 %15 to i64, !dbg !119
  call void @klee_assume(i64 noundef %16), !dbg !122
  %17 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !123
  store %struct._xmlRelaxNGValidState* %17, %struct._xmlRelaxNGValidState** %1, align 8, !dbg !124
  br label %18, !dbg !124

18:                                               ; preds = %8, %7
  %19 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %1, align 8, !dbg !125
  ret %struct._xmlRelaxNGValidState* %19, !dbg !125
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !126 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGValidState*, align 8
  %3 = alloca %struct._xmlRelaxNGValidState*, align 8
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %2, metadata !129, metadata !DIExpression()), !dbg !130
  %4 = call %struct._xmlRelaxNGValidState* @make_symbolic_state(), !dbg !131
  store %struct._xmlRelaxNGValidState* %4, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !130
  %5 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !132
  %6 = icmp eq %struct._xmlRelaxNGValidState* %5, null, !dbg !134
  br i1 %6, label %7, label %8, !dbg !135

7:                                                ; preds = %0
  store i32 0, i32* %1, align 4, !dbg !136
  br label %19, !dbg !136

8:                                                ; preds = %0
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidState** %3, metadata !137, metadata !DIExpression()), !dbg !138
  %9 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !139
  %10 = call %struct._xmlRelaxNGValidState* @xmlRelaxNGCopyValidState(%struct._xmlRelaxNGValidState* noundef %9), !dbg !140
  store %struct._xmlRelaxNGValidState* %10, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !138
  %11 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !141
  %12 = icmp ne %struct._xmlRelaxNGValidState* %11, null, !dbg !143
  br i1 %12, label %13, label %16, !dbg !144

13:                                               ; preds = %8
  %14 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %3, align 8, !dbg !145
  %15 = bitcast %struct._xmlRelaxNGValidState* %14 to i8*, !dbg !145
  call void @free(i8* noundef %15) #7, !dbg !146
  br label %16, !dbg !146

16:                                               ; preds = %13, %8
  %17 = load %struct._xmlRelaxNGValidState*, %struct._xmlRelaxNGValidState** %2, align 8, !dbg !147
  %18 = bitcast %struct._xmlRelaxNGValidState* %17 to i8*, !dbg !147
  call void @free(i8* noundef %18) #7, !dbg !148
  store i32 0, i32* %1, align 4, !dbg !149
  br label %19, !dbg !149

19:                                               ; preds = %16, %7
  %20 = load i32, i32* %1, align 4, !dbg !150
  ret i32 %20, !dbg !150
}

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memcpy(i8* noundef %0, i8* noundef %1, i64 noundef %2) #6 !dbg !151 {
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !160, metadata !DIExpression()), !dbg !161
  store i8* %1, i8** %5, align 8
  call void @llvm.dbg.declare(metadata i8** %5, metadata !162, metadata !DIExpression()), !dbg !163
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !164, metadata !DIExpression()), !dbg !165
  call void @llvm.dbg.declare(metadata i8** %7, metadata !166, metadata !DIExpression()), !dbg !169
  %9 = load i8*, i8** %4, align 8, !dbg !170
  store i8* %9, i8** %7, align 8, !dbg !169
  call void @llvm.dbg.declare(metadata i8** %8, metadata !171, metadata !DIExpression()), !dbg !174
  %10 = load i8*, i8** %5, align 8, !dbg !175
  store i8* %10, i8** %8, align 8, !dbg !174
  br label %11, !dbg !176

11:                                               ; preds = %15, %3
  %12 = load i64, i64* %6, align 8, !dbg !177
  %13 = add i64 %12, -1, !dbg !177
  store i64 %13, i64* %6, align 8, !dbg !177
  %14 = icmp ugt i64 %12, 0, !dbg !178
  br i1 %14, label %15, label %21, !dbg !176

15:                                               ; preds = %11
  %16 = load i8*, i8** %8, align 8, !dbg !179
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !179
  store i8* %17, i8** %8, align 8, !dbg !179
  %18 = load i8, i8* %16, align 1, !dbg !180
  %19 = load i8*, i8** %7, align 8, !dbg !181
  %20 = getelementptr inbounds i8, i8* %19, i32 1, !dbg !181
  store i8* %20, i8** %7, align 8, !dbg !181
  store i8 %18, i8* %19, align 1, !dbg !182
  br label %11, !dbg !176, !llvm.loop !183

21:                                               ; preds = %11
  %22 = load i8*, i8** %4, align 8, !dbg !185
  ret i8* %22, !dbg !186
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !12}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21, !21}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_62911_vul/228_relaxng.c_1283_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "44320fac44a25f8605797c5192d81aa1")
!2 = !{!3, !4}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidState", file: !1, line: 16, baseType: !6)
!6 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidState", file: !1, line: 11, size: 128, elements: !7)
!7 = !{!8, !9, !11}
!8 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !6, file: !1, line: 12, baseType: !3, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "maxAttrs", scope: !6, file: !1, line: 13, baseType: !10, size: 32, offset: 64)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_member, name: "nbAttrs", scope: !6, file: !1, line: 14, baseType: !10, size: 32, offset: 96)
!12 = distinct !DICompileUnit(language: DW_LANG_C99, file: !13, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!13 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!14 = !{i32 7, !"Dwarf Version", i32 5}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{i32 7, !"PIC Level", i32 2}
!18 = !{i32 7, !"PIE Level", i32 2}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"Ubuntu clang version 14.0.6"}
!22 = distinct !DISubprogram(name: "xmlRelaxNGCopyValidState", scope: !1, file: !1, line: 19, type: !23, scopeLine: 19, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!23 = !DISubroutineType(types: !24)
!24 = !{!4, !4}
!25 = !{}
!26 = !DILocalVariable(name: "state", arg: 1, scope: !22, file: !1, line: 19, type: !4)
!27 = !DILocation(line: 19, column: 70, scope: !22)
!28 = !DILocalVariable(name: "ret", scope: !22, file: !1, line: 20, type: !4)
!29 = !DILocation(line: 20, column: 27, scope: !22)
!30 = !DILocalVariable(name: "attrs", scope: !22, file: !1, line: 21, type: !3)
!31 = !DILocation(line: 21, column: 11, scope: !22)
!32 = !DILocalVariable(name: "maxAttrs", scope: !22, file: !1, line: 22, type: !10)
!33 = !DILocation(line: 22, column: 9, scope: !22)
!34 = !DILocation(line: 24, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !22, file: !1, line: 24, column: 9)
!36 = !DILocation(line: 24, column: 15, scope: !35)
!37 = !DILocation(line: 24, column: 9, scope: !22)
!38 = !DILocation(line: 25, column: 9, scope: !35)
!39 = !DILocation(line: 27, column: 34, scope: !22)
!40 = !DILocation(line: 27, column: 11, scope: !22)
!41 = !DILocation(line: 27, column: 9, scope: !22)
!42 = !DILocation(line: 28, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !22, file: !1, line: 28, column: 9)
!44 = !DILocation(line: 28, column: 13, scope: !43)
!45 = !DILocation(line: 28, column: 9, scope: !22)
!46 = !DILocation(line: 29, column: 9, scope: !43)
!47 = !DILocalVariable(name: "state_buffer_size", scope: !22, file: !1, line: 44, type: !10)
!48 = !DILocation(line: 44, column: 9, scope: !22)
!49 = !DILocation(line: 45, column: 24, scope: !22)
!50 = !DILocation(line: 45, column: 5, scope: !22)
!51 = !DILocation(line: 47, column: 17, scope: !22)
!52 = !DILocation(line: 47, column: 35, scope: !22)
!53 = !DILocation(line: 47, column: 40, scope: !22)
!54 = !DILocation(line: 47, column: 43, scope: !22)
!55 = !DILocation(line: 47, column: 61, scope: !22)
!56 = !DILocation(line: 0, scope: !22)
!57 = !DILocation(line: 47, column: 5, scope: !22)
!58 = !DILocation(line: 52, column: 5, scope: !22)
!59 = !DILocation(line: 55, column: 5, scope: !22)
!60 = !DILocation(line: 58, column: 41, scope: !61)
!61 = distinct !DILexicalBlock(scope: !22, file: !1, line: 58, column: 9)
!62 = !DILocation(line: 58, column: 38, scope: !61)
!63 = !DILocation(line: 58, column: 9, scope: !22)
!64 = !DILocation(line: 59, column: 16, scope: !65)
!65 = distinct !DILexicalBlock(scope: !61, file: !1, line: 58, column: 60)
!66 = !DILocation(line: 59, column: 9, scope: !65)
!67 = !DILocation(line: 59, column: 21, scope: !65)
!68 = !DILocation(line: 60, column: 5, scope: !65)
!69 = !DILocation(line: 65, column: 13, scope: !22)
!70 = !DILocation(line: 65, column: 18, scope: !22)
!71 = !DILocation(line: 65, column: 11, scope: !22)
!72 = !DILocation(line: 66, column: 16, scope: !22)
!73 = !DILocation(line: 66, column: 21, scope: !22)
!74 = !DILocation(line: 66, column: 14, scope: !22)
!75 = !DILocation(line: 67, column: 18, scope: !22)
!76 = !DILocation(line: 67, column: 5, scope: !22)
!77 = !DILocation(line: 67, column: 10, scope: !22)
!78 = !DILocation(line: 67, column: 16, scope: !22)
!79 = !DILocation(line: 68, column: 21, scope: !22)
!80 = !DILocation(line: 68, column: 5, scope: !22)
!81 = !DILocation(line: 68, column: 10, scope: !22)
!82 = !DILocation(line: 68, column: 19, scope: !22)
!83 = !DILocation(line: 69, column: 9, scope: !84)
!84 = distinct !DILexicalBlock(scope: !22, file: !1, line: 69, column: 9)
!85 = !DILocation(line: 69, column: 16, scope: !84)
!86 = !DILocation(line: 69, column: 24, scope: !84)
!87 = !DILocation(line: 69, column: 9, scope: !22)
!88 = !DILocation(line: 70, column: 13, scope: !89)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 70, column: 13)
!90 = distinct !DILexicalBlock(scope: !84, file: !1, line: 69, column: 29)
!91 = !DILocation(line: 70, column: 18, scope: !89)
!92 = !DILocation(line: 70, column: 24, scope: !89)
!93 = !DILocation(line: 70, column: 13, scope: !90)
!94 = !DILocation(line: 71, column: 29, scope: !95)
!95 = distinct !DILexicalBlock(scope: !89, file: !1, line: 70, column: 33)
!96 = !DILocation(line: 71, column: 36, scope: !95)
!97 = !DILocation(line: 71, column: 13, scope: !95)
!98 = !DILocation(line: 71, column: 18, scope: !95)
!99 = !DILocation(line: 71, column: 27, scope: !95)
!100 = !DILocation(line: 72, column: 9, scope: !95)
!101 = !DILocation(line: 73, column: 5, scope: !90)
!102 = !DILocation(line: 74, column: 12, scope: !22)
!103 = !DILocation(line: 74, column: 5, scope: !22)
!104 = !DILocation(line: 75, column: 1, scope: !22)
!105 = distinct !DISubprogram(name: "make_symbolic_state", scope: !1, file: !1, line: 78, type: !106, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!106 = !DISubroutineType(types: !107)
!107 = !{!4}
!108 = !DILocalVariable(name: "s", scope: !105, file: !1, line: 79, type: !4)
!109 = !DILocation(line: 79, column: 27, scope: !105)
!110 = !DILocation(line: 79, column: 54, scope: !105)
!111 = !DILocation(line: 79, column: 31, scope: !105)
!112 = !DILocation(line: 80, column: 9, scope: !113)
!113 = distinct !DILexicalBlock(scope: !105, file: !1, line: 80, column: 9)
!114 = !DILocation(line: 80, column: 11, scope: !113)
!115 = !DILocation(line: 80, column: 9, scope: !105)
!116 = !DILocation(line: 80, column: 20, scope: !113)
!117 = !DILocation(line: 81, column: 24, scope: !105)
!118 = !DILocation(line: 81, column: 5, scope: !105)
!119 = !DILocation(line: 83, column: 17, scope: !105)
!120 = !DILocation(line: 83, column: 20, scope: !105)
!121 = !DILocation(line: 83, column: 28, scope: !105)
!122 = !DILocation(line: 83, column: 5, scope: !105)
!123 = !DILocation(line: 84, column: 12, scope: !105)
!124 = !DILocation(line: 84, column: 5, scope: !105)
!125 = !DILocation(line: 85, column: 1, scope: !105)
!126 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 87, type: !127, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !25)
!127 = !DISubroutineType(types: !128)
!128 = !{!10}
!129 = !DILocalVariable(name: "state", scope: !126, file: !1, line: 88, type: !4)
!130 = !DILocation(line: 88, column: 27, scope: !126)
!131 = !DILocation(line: 88, column: 35, scope: !126)
!132 = !DILocation(line: 89, column: 9, scope: !133)
!133 = distinct !DILexicalBlock(scope: !126, file: !1, line: 89, column: 9)
!134 = !DILocation(line: 89, column: 15, scope: !133)
!135 = !DILocation(line: 89, column: 9, scope: !126)
!136 = !DILocation(line: 89, column: 24, scope: !133)
!137 = !DILocalVariable(name: "copy", scope: !126, file: !1, line: 90, type: !4)
!138 = !DILocation(line: 90, column: 27, scope: !126)
!139 = !DILocation(line: 90, column: 59, scope: !126)
!140 = !DILocation(line: 90, column: 34, scope: !126)
!141 = !DILocation(line: 91, column: 9, scope: !142)
!142 = distinct !DILexicalBlock(scope: !126, file: !1, line: 91, column: 9)
!143 = !DILocation(line: 91, column: 14, scope: !142)
!144 = !DILocation(line: 91, column: 9, scope: !126)
!145 = !DILocation(line: 91, column: 28, scope: !142)
!146 = !DILocation(line: 91, column: 23, scope: !142)
!147 = !DILocation(line: 92, column: 10, scope: !126)
!148 = !DILocation(line: 92, column: 5, scope: !126)
!149 = !DILocation(line: 93, column: 5, scope: !126)
!150 = !DILocation(line: 94, column: 1, scope: !126)
!151 = distinct !DISubprogram(name: "memcpy", scope: !152, file: !152, line: 12, type: !153, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !12, retainedNodes: !25)
!152 = !DIFile(filename: "runtime/Freestanding/memcpy.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "c636d77d986b2156da8c1ff12af1c5cd")
!153 = !DISubroutineType(types: !154)
!154 = !{!3, !3, !155, !157}
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!157 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !158, line: 46, baseType: !159)
!158 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!159 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!160 = !DILocalVariable(name: "destaddr", arg: 1, scope: !151, file: !152, line: 12, type: !3)
!161 = !DILocation(line: 12, column: 20, scope: !151)
!162 = !DILocalVariable(name: "srcaddr", arg: 2, scope: !151, file: !152, line: 12, type: !155)
!163 = !DILocation(line: 12, column: 42, scope: !151)
!164 = !DILocalVariable(name: "len", arg: 3, scope: !151, file: !152, line: 12, type: !157)
!165 = !DILocation(line: 12, column: 58, scope: !151)
!166 = !DILocalVariable(name: "dest", scope: !151, file: !152, line: 13, type: !167)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!169 = !DILocation(line: 13, column: 9, scope: !151)
!170 = !DILocation(line: 13, column: 16, scope: !151)
!171 = !DILocalVariable(name: "src", scope: !151, file: !152, line: 14, type: !172)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!174 = !DILocation(line: 14, column: 15, scope: !151)
!175 = !DILocation(line: 14, column: 21, scope: !151)
!176 = !DILocation(line: 16, column: 3, scope: !151)
!177 = !DILocation(line: 16, column: 13, scope: !151)
!178 = !DILocation(line: 16, column: 16, scope: !151)
!179 = !DILocation(line: 17, column: 19, scope: !151)
!180 = !DILocation(line: 17, column: 15, scope: !151)
!181 = !DILocation(line: 17, column: 10, scope: !151)
!182 = !DILocation(line: 17, column: 13, scope: !151)
!183 = distinct !{!183, !176, !179, !184}
!184 = !{!"llvm.loop.mustprogress"}
!185 = !DILocation(line: 18, column: 10, scope: !151)
!186 = !DILocation(line: 18, column: 3, scope: !151)

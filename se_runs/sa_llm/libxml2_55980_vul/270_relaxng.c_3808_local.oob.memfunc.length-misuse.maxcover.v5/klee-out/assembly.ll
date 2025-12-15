; ModuleID = 'se_runs/sa_llm/libxml2_55980_vul/270_relaxng.c_3808_local.oob.memfunc.length-misuse.maxcover.v5/bc/harness.bc'
source_filename = "se_runs/sa_llm/libxml2_55980_vul/270_relaxng.c_3808_local.oob.memfunc.length-misuse.maxcover.v5/harness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._xmlRelaxNGDefine = type { i32, i8* }
%struct._xmlNode = type { i32 }
%struct._xmlNs = type { i32 }
%struct._xmlRelaxNGValidCtxt = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"def1_type\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"def2_type\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"0 && \22SAILR_REACH_ASSERT\22\00", align 1
@.str.3 = private unnamed_addr constant [106 x i8] c"se_runs/sa_llm/libxml2_55980_vul/270_relaxng.c_3808_local.oob.memfunc.length-misuse.maxcover.v5/harness.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [15 x i8] c"int main(void)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !21 {
  %1 = alloca i32, align 4
  %2 = alloca %struct._xmlRelaxNGDefine*, align 8
  %3 = alloca %struct._xmlRelaxNGDefine*, align 8
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %2, metadata !25, metadata !DIExpression()), !dbg !26
  %5 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !27
  %6 = bitcast i8* %5 to %struct._xmlRelaxNGDefine*, !dbg !28
  store %struct._xmlRelaxNGDefine* %6, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !26
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %3, metadata !29, metadata !DIExpression()), !dbg !30
  %7 = call noalias i8* @malloc(i64 noundef 16) #7, !dbg !31
  %8 = bitcast i8* %7 to %struct._xmlRelaxNGDefine*, !dbg !32
  store %struct._xmlRelaxNGDefine* %8, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !30
  %9 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !33
  %10 = icmp ne %struct._xmlRelaxNGDefine* %9, null, !dbg !33
  br i1 %10, label %11, label %14, !dbg !35

11:                                               ; preds = %0
  %12 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !36
  %13 = icmp ne %struct._xmlRelaxNGDefine* %12, null, !dbg !36
  br i1 %13, label %27, label %14, !dbg !37

14:                                               ; preds = %11, %0
  %15 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !38
  %16 = icmp ne %struct._xmlRelaxNGDefine* %15, null, !dbg !38
  br i1 %16, label %17, label %20, !dbg !41

17:                                               ; preds = %14
  %18 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !42
  %19 = bitcast %struct._xmlRelaxNGDefine* %18 to i8*, !dbg !42
  call void @free(i8* noundef %19) #7, !dbg !43
  br label %20, !dbg !43

20:                                               ; preds = %17, %14
  %21 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !44
  %22 = icmp ne %struct._xmlRelaxNGDefine* %21, null, !dbg !44
  br i1 %22, label %23, label %26, !dbg !46

23:                                               ; preds = %20
  %24 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !47
  %25 = bitcast %struct._xmlRelaxNGDefine* %24 to i8*, !dbg !47
  call void @free(i8* noundef %25) #7, !dbg !48
  br label %26, !dbg !48

26:                                               ; preds = %23, %20
  store i32 0, i32* %1, align 4, !dbg !49
  br label %83, !dbg !49

27:                                               ; preds = %11
  %28 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !50
  %29 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %28, i32 0, i32 0, !dbg !51
  %30 = bitcast i32* %29 to i8*, !dbg !52
  call void @klee_make_symbolic(i8* noundef %30, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0)), !dbg !53
  %31 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !54
  %32 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %31, i32 0, i32 0, !dbg !55
  %33 = bitcast i32* %32 to i8*, !dbg !56
  call void @klee_make_symbolic(i8* noundef %33, i64 noundef 4, i8* noundef getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0)), !dbg !57
  %34 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !58
  %35 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %34, i32 0, i32 0, !dbg !59
  %36 = load i32, i32* %35, align 8, !dbg !59
  %37 = icmp sge i32 %36, 1, !dbg !60
  br i1 %37, label %38, label %43, !dbg !61

38:                                               ; preds = %27
  %39 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !62
  %40 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %39, i32 0, i32 0, !dbg !63
  %41 = load i32, i32* %40, align 8, !dbg !63
  %42 = icmp sle i32 %41, 3, !dbg !64
  br label %43

43:                                               ; preds = %38, %27
  %44 = phi i1 [ false, %27 ], [ %42, %38 ], !dbg !65
  %45 = zext i1 %44 to i32, !dbg !61
  %46 = sext i32 %45 to i64, !dbg !58
  call void @klee_assume(i64 noundef %46), !dbg !66
  %47 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !67
  %48 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %47, i32 0, i32 0, !dbg !68
  %49 = load i32, i32* %48, align 8, !dbg !68
  %50 = icmp sge i32 %49, 1, !dbg !69
  br i1 %50, label %51, label %56, !dbg !70

51:                                               ; preds = %43
  %52 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !71
  %53 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %52, i32 0, i32 0, !dbg !72
  %54 = load i32, i32* %53, align 8, !dbg !72
  %55 = icmp sle i32 %54, 3, !dbg !73
  br label %56

56:                                               ; preds = %51, %43
  %57 = phi i1 [ false, %43 ], [ %55, %51 ], !dbg !65
  %58 = zext i1 %57 to i32, !dbg !70
  %59 = sext i32 %58 to i64, !dbg !67
  call void @klee_assume(i64 noundef %59), !dbg !74
  %60 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !75
  %61 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %60, i32 0, i32 1, !dbg !76
  store i8* null, i8** %61, align 8, !dbg !77
  %62 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !78
  %63 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %62, i32 0, i32 1, !dbg !79
  store i8* null, i8** %63, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %4, metadata !81, metadata !DIExpression()), !dbg !82
  %64 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !83
  %65 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !84
  %66 = call i32 @xmlRelaxNGCompareNameClasses(%struct._xmlRelaxNGDefine* noundef %64, %struct._xmlRelaxNGDefine* noundef %65), !dbg !85
  store i32 %66, i32* %4, align 4, !dbg !82
  %67 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !86
  %68 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %67, i32 0, i32 0, !dbg !88
  %69 = load i32, i32* %68, align 8, !dbg !88
  %70 = icmp eq i32 %69, 1, !dbg !89
  br i1 %70, label %76, label %71, !dbg !90

71:                                               ; preds = %56
  %72 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !91
  %73 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %72, i32 0, i32 0, !dbg !92
  %74 = load i32, i32* %73, align 8, !dbg !92
  %75 = icmp eq i32 %74, 2, !dbg !93
  br i1 %75, label %76, label %78, !dbg !94

76:                                               ; preds = %71, %56
  %77 = call i32 (i8*, i8*, i32, i8*, ...) bitcast (i32 (...)* @__assert_fail to i32 (i8*, i8*, i32, i8*, ...)*)(i8* noundef getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* noundef getelementptr inbounds ([106 x i8], [106 x i8]* @.str.3, i64 0, i64 0), i32 noundef 94, i8* noundef getelementptr inbounds ([15 x i8], [15 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)), !dbg !95
  br label %78, !dbg !97

78:                                               ; preds = %76, %71
  %79 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %2, align 8, !dbg !98
  %80 = bitcast %struct._xmlRelaxNGDefine* %79 to i8*, !dbg !98
  call void @free(i8* noundef %80) #7, !dbg !99
  %81 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %3, align 8, !dbg !100
  %82 = bitcast %struct._xmlRelaxNGDefine* %81 to i8*, !dbg !100
  call void @free(i8* noundef %82) #7, !dbg !101
  store i32 0, i32* %1, align 4, !dbg !102
  br label %83, !dbg !102

83:                                               ; preds = %78, %26
  %84 = load i32, i32* %1, align 4, !dbg !103
  ret i32 %84, !dbg !103
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64 noundef) #2

; Function Attrs: nounwind
declare void @free(i8* noundef) #2

declare void @klee_make_symbolic(i8* noundef, i64 noundef, i8* noundef) #3

declare void @klee_assume(i64 noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xmlRelaxNGCompareNameClasses(%struct._xmlRelaxNGDefine* noundef %0, %struct._xmlRelaxNGDefine* noundef %1) #0 !dbg !104 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._xmlRelaxNGDefine*, align 8
  %5 = alloca %struct._xmlRelaxNGDefine*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct._xmlNode, align 4
  %8 = alloca %struct._xmlNs, align 4
  %9 = alloca %struct._xmlRelaxNGValidCtxt, align 4
  store %struct._xmlRelaxNGDefine* %0, %struct._xmlRelaxNGDefine** %4, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %4, metadata !108, metadata !DIExpression()), !dbg !109
  store %struct._xmlRelaxNGDefine* %1, %struct._xmlRelaxNGDefine** %5, align 8
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGDefine** %5, metadata !110, metadata !DIExpression()), !dbg !111
  call void @llvm.dbg.declare(metadata i32* %6, metadata !112, metadata !DIExpression()), !dbg !113
  store i32 1, i32* %6, align 4, !dbg !113
  call void @llvm.dbg.declare(metadata %struct._xmlNode* %7, metadata !114, metadata !DIExpression()), !dbg !118
  call void @llvm.dbg.declare(metadata %struct._xmlNs* %8, metadata !119, metadata !DIExpression()), !dbg !123
  call void @llvm.dbg.declare(metadata %struct._xmlRelaxNGValidCtxt* %9, metadata !124, metadata !DIExpression()), !dbg !129
  %10 = bitcast %struct._xmlRelaxNGValidCtxt* %9 to i8*, !dbg !130
  %11 = call i8* @memset(i8* %10, i32 0, i64 4), !dbg !130
  %12 = getelementptr inbounds %struct._xmlRelaxNGValidCtxt, %struct._xmlRelaxNGValidCtxt* %9, i32 0, i32 0, !dbg !131
  store i32 3, i32* %12, align 4, !dbg !132
  %13 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !133
  %14 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %13, i32 0, i32 0, !dbg !135
  %15 = load i32, i32* %14, align 8, !dbg !135
  %16 = icmp eq i32 %15, 1, !dbg !136
  br i1 %16, label %22, label %17, !dbg !137

17:                                               ; preds = %2
  %18 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !138
  %19 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %18, i32 0, i32 0, !dbg !139
  %20 = load i32, i32* %19, align 8, !dbg !139
  %21 = icmp eq i32 %20, 2, !dbg !140
  br i1 %21, label %22, label %36, !dbg !141

22:                                               ; preds = %17, %2
  %23 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %5, align 8, !dbg !142
  %24 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %23, i32 0, i32 0, !dbg !145
  %25 = load i32, i32* %24, align 8, !dbg !145
  %26 = icmp eq i32 %25, 3, !dbg !146
  br i1 %26, label %27, label %28, !dbg !147

27:                                               ; preds = %22
  store i32 1, i32* %3, align 4, !dbg !148
  br label %38, !dbg !148

28:                                               ; preds = %22
  %29 = load %struct._xmlRelaxNGDefine*, %struct._xmlRelaxNGDefine** %4, align 8, !dbg !149
  %30 = getelementptr inbounds %struct._xmlRelaxNGDefine, %struct._xmlRelaxNGDefine* %29, i32 0, i32 1, !dbg !151
  %31 = load i8*, i8** %30, align 8, !dbg !151
  %32 = icmp ne i8* %31, null, !dbg !152
  br i1 %32, label %33, label %35, !dbg !153

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4, !dbg !154
  store i32 %34, i32* %3, align 4, !dbg !156
  br label %38, !dbg !156

35:                                               ; preds = %28
  br label %36, !dbg !157

36:                                               ; preds = %35, %17
  %37 = load i32, i32* %6, align 4, !dbg !158
  store i32 %37, i32* %3, align 4, !dbg !159
  br label %38, !dbg !159

38:                                               ; preds = %36, %33, %27
  %39 = load i32, i32* %3, align 4, !dbg !160
  ret i32 %39, !dbg !160
}

; Function Attrs: noreturn
declare i32 @__assert_fail(...) #4

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noinline nounwind uwtable
define dso_local i8* @memset(i8* noundef %0, i32 noundef %1, i64 noundef %2) #6 !dbg !161 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  call void @llvm.dbg.declare(metadata i8** %4, metadata !168, metadata !DIExpression()), !dbg !169
  store i32 %1, i32* %5, align 4
  call void @llvm.dbg.declare(metadata i32* %5, metadata !170, metadata !DIExpression()), !dbg !171
  store i64 %2, i64* %6, align 8
  call void @llvm.dbg.declare(metadata i64* %6, metadata !172, metadata !DIExpression()), !dbg !173
  call void @llvm.dbg.declare(metadata i8** %7, metadata !174, metadata !DIExpression()), !dbg !177
  %8 = load i8*, i8** %4, align 8, !dbg !178
  store i8* %8, i8** %7, align 8, !dbg !177
  br label %9, !dbg !179

9:                                                ; preds = %13, %3
  %10 = load i64, i64* %6, align 8, !dbg !180
  %11 = add i64 %10, -1, !dbg !180
  store i64 %11, i64* %6, align 8, !dbg !180
  %12 = icmp ugt i64 %10, 0, !dbg !181
  br i1 %12, label %13, label %18, !dbg !179

13:                                               ; preds = %9
  %14 = load i32, i32* %5, align 4, !dbg !182
  %15 = trunc i32 %14 to i8, !dbg !182
  %16 = load i8*, i8** %7, align 8, !dbg !183
  %17 = getelementptr inbounds i8, i8* %16, i32 1, !dbg !183
  store i8* %17, i8** %7, align 8, !dbg !183
  store i8 %15, i8* %16, align 1, !dbg !184
  br label %9, !dbg !179, !llvm.loop !185

18:                                               ; preds = %9
  %19 = load i8*, i8** %4, align 8, !dbg !187
  ret i8* %19, !dbg !188
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { argmemonly nofree nounwind willreturn writeonly }
attributes #6 = { noinline nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20, !20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "se_runs/sa_llm/libxml2_55980_vul/270_relaxng.c_3808_local.oob.memfunc.length-misuse.maxcover.v5/harness.c", directory: "/home/shafi/workspace/SAILR", checksumkind: CSK_MD5, checksum: "46f784cf7e4a15f18c5c5b32846e07c7")
!2 = !{!3, !10}
!3 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!4 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefine", file: !1, line: 10, baseType: !5)
!5 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGDefine", file: !1, line: 13, size: 128, elements: !6)
!6 = !{!7, !9}
!7 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !5, file: !1, line: 14, baseType: !8, size: 32)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !5, file: !1, line: 15, baseType: !10, size: 64, offset: 64)
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = distinct !DICompileUnit(language: DW_LANG_C99, file: !12, producer: "Ubuntu clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!12 = !DIFile(filename: "/home/shafi/tools/klee/runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee/build/runtime/Freestanding", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!13 = !{i32 7, !"Dwarf Version", i32 5}
!14 = !{i32 2, !"Debug Info Version", i32 3}
!15 = !{i32 1, !"wchar_size", i32 4}
!16 = !{i32 7, !"PIC Level", i32 2}
!17 = !{i32 7, !"PIE Level", i32 2}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"Ubuntu clang version 14.0.6"}
!21 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !22, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!8}
!24 = !{}
!25 = !DILocalVariable(name: "def1", scope: !21, file: !1, line: 38, type: !3)
!26 = !DILocation(line: 38, column: 23, scope: !21)
!27 = !DILocation(line: 38, column: 50, scope: !21)
!28 = !DILocation(line: 38, column: 30, scope: !21)
!29 = !DILocalVariable(name: "def2", scope: !21, file: !1, line: 39, type: !3)
!30 = !DILocation(line: 39, column: 23, scope: !21)
!31 = !DILocation(line: 39, column: 50, scope: !21)
!32 = !DILocation(line: 39, column: 30, scope: !21)
!33 = !DILocation(line: 41, column: 10, scope: !34)
!34 = distinct !DILexicalBlock(scope: !21, file: !1, line: 41, column: 9)
!35 = !DILocation(line: 41, column: 15, scope: !34)
!36 = !DILocation(line: 41, column: 19, scope: !34)
!37 = !DILocation(line: 41, column: 9, scope: !21)
!38 = !DILocation(line: 42, column: 13, scope: !39)
!39 = distinct !DILexicalBlock(scope: !40, file: !1, line: 42, column: 13)
!40 = distinct !DILexicalBlock(scope: !34, file: !1, line: 41, column: 25)
!41 = !DILocation(line: 42, column: 13, scope: !40)
!42 = !DILocation(line: 42, column: 24, scope: !39)
!43 = !DILocation(line: 42, column: 19, scope: !39)
!44 = !DILocation(line: 43, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 43, column: 13)
!46 = !DILocation(line: 43, column: 13, scope: !40)
!47 = !DILocation(line: 43, column: 24, scope: !45)
!48 = !DILocation(line: 43, column: 19, scope: !45)
!49 = !DILocation(line: 44, column: 9, scope: !40)
!50 = !DILocation(line: 48, column: 25, scope: !21)
!51 = !DILocation(line: 48, column: 31, scope: !21)
!52 = !DILocation(line: 48, column: 24, scope: !21)
!53 = !DILocation(line: 48, column: 5, scope: !21)
!54 = !DILocation(line: 49, column: 25, scope: !21)
!55 = !DILocation(line: 49, column: 31, scope: !21)
!56 = !DILocation(line: 49, column: 24, scope: !21)
!57 = !DILocation(line: 49, column: 5, scope: !21)
!58 = !DILocation(line: 52, column: 17, scope: !21)
!59 = !DILocation(line: 52, column: 23, scope: !21)
!60 = !DILocation(line: 52, column: 28, scope: !21)
!61 = !DILocation(line: 52, column: 33, scope: !21)
!62 = !DILocation(line: 52, column: 36, scope: !21)
!63 = !DILocation(line: 52, column: 42, scope: !21)
!64 = !DILocation(line: 52, column: 47, scope: !21)
!65 = !DILocation(line: 0, scope: !21)
!66 = !DILocation(line: 52, column: 5, scope: !21)
!67 = !DILocation(line: 53, column: 17, scope: !21)
!68 = !DILocation(line: 53, column: 23, scope: !21)
!69 = !DILocation(line: 53, column: 28, scope: !21)
!70 = !DILocation(line: 53, column: 33, scope: !21)
!71 = !DILocation(line: 53, column: 36, scope: !21)
!72 = !DILocation(line: 53, column: 42, scope: !21)
!73 = !DILocation(line: 53, column: 47, scope: !21)
!74 = !DILocation(line: 53, column: 5, scope: !21)
!75 = !DILocation(line: 56, column: 5, scope: !21)
!76 = !DILocation(line: 56, column: 11, scope: !21)
!77 = !DILocation(line: 56, column: 16, scope: !21)
!78 = !DILocation(line: 57, column: 5, scope: !21)
!79 = !DILocation(line: 57, column: 11, scope: !21)
!80 = !DILocation(line: 57, column: 16, scope: !21)
!81 = !DILocalVariable(name: "result", scope: !21, file: !1, line: 60, type: !8)
!82 = !DILocation(line: 60, column: 9, scope: !21)
!83 = !DILocation(line: 60, column: 47, scope: !21)
!84 = !DILocation(line: 60, column: 53, scope: !21)
!85 = !DILocation(line: 60, column: 18, scope: !21)
!86 = !DILocation(line: 80, column: 10, scope: !87)
!87 = distinct !DILexicalBlock(scope: !21, file: !1, line: 80, column: 9)
!88 = !DILocation(line: 80, column: 16, scope: !87)
!89 = !DILocation(line: 80, column: 21, scope: !87)
!90 = !DILocation(line: 80, column: 45, scope: !87)
!91 = !DILocation(line: 81, column: 10, scope: !87)
!92 = !DILocation(line: 81, column: 16, scope: !87)
!93 = !DILocation(line: 81, column: 21, scope: !87)
!94 = !DILocation(line: 80, column: 9, scope: !21)
!95 = !DILocation(line: 94, column: 9, scope: !96)
!96 = distinct !DILexicalBlock(scope: !87, file: !1, line: 81, column: 48)
!97 = !DILocation(line: 95, column: 5, scope: !96)
!98 = !DILocation(line: 97, column: 10, scope: !21)
!99 = !DILocation(line: 97, column: 5, scope: !21)
!100 = !DILocation(line: 98, column: 10, scope: !21)
!101 = !DILocation(line: 98, column: 5, scope: !21)
!102 = !DILocation(line: 100, column: 5, scope: !21)
!103 = !DILocation(line: 101, column: 1, scope: !21)
!104 = distinct !DISubprogram(name: "xmlRelaxNGCompareNameClasses", scope: !1, file: !1, line: 104, type: !105, scopeLine: 105, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !24)
!105 = !DISubroutineType(types: !106)
!106 = !{!8, !107, !107}
!107 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGDefinePtr", file: !1, line: 11, baseType: !3)
!108 = !DILocalVariable(name: "def1", arg: 1, scope: !104, file: !1, line: 104, type: !107)
!109 = !DILocation(line: 104, column: 54, scope: !104)
!110 = !DILocalVariable(name: "def2", arg: 2, scope: !104, file: !1, line: 105, type: !107)
!111 = !DILocation(line: 105, column: 54, scope: !104)
!112 = !DILocalVariable(name: "ret", scope: !104, file: !1, line: 106, type: !8)
!113 = !DILocation(line: 106, column: 9, scope: !104)
!114 = !DILocalVariable(name: "node", scope: !104, file: !1, line: 108, type: !115)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNode", scope: !104, file: !1, line: 108, size: 32, elements: !116)
!116 = !{!117}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !115, file: !1, line: 108, baseType: !8, size: 32)
!118 = !DILocation(line: 108, column: 36, scope: !104)
!119 = !DILocalVariable(name: "ns", scope: !104, file: !1, line: 109, type: !120)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlNs", scope: !104, file: !1, line: 109, size: 32, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "dummy", scope: !120, file: !1, line: 109, baseType: !8, size: 32)
!123 = !DILocation(line: 109, column: 34, scope: !104)
!124 = !DILocalVariable(name: "ctxt", scope: !104, file: !1, line: 110, type: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "xmlRelaxNGValidCtxt", file: !1, line: 18, baseType: !126)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "_xmlRelaxNGValidCtxt", file: !1, line: 19, size: 32, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !1, line: 20, baseType: !8, size: 32)
!129 = !DILocation(line: 110, column: 25, scope: !104)
!130 = !DILocation(line: 113, column: 5, scope: !104)
!131 = !DILocation(line: 115, column: 10, scope: !104)
!132 = !DILocation(line: 115, column: 16, scope: !104)
!133 = !DILocation(line: 117, column: 10, scope: !134)
!134 = distinct !DILexicalBlock(scope: !104, file: !1, line: 117, column: 9)
!135 = !DILocation(line: 117, column: 16, scope: !134)
!136 = !DILocation(line: 117, column: 21, scope: !134)
!137 = !DILocation(line: 117, column: 45, scope: !134)
!138 = !DILocation(line: 118, column: 10, scope: !134)
!139 = !DILocation(line: 118, column: 16, scope: !134)
!140 = !DILocation(line: 118, column: 21, scope: !134)
!141 = !DILocation(line: 117, column: 9, scope: !104)
!142 = !DILocation(line: 119, column: 13, scope: !143)
!143 = distinct !DILexicalBlock(scope: !144, file: !1, line: 119, column: 13)
!144 = distinct !DILexicalBlock(scope: !134, file: !1, line: 118, column: 48)
!145 = !DILocation(line: 119, column: 19, scope: !143)
!146 = !DILocation(line: 119, column: 24, scope: !143)
!147 = !DILocation(line: 119, column: 13, scope: !144)
!148 = !DILocation(line: 120, column: 13, scope: !143)
!149 = !DILocation(line: 121, column: 13, scope: !150)
!150 = distinct !DILexicalBlock(scope: !144, file: !1, line: 121, column: 13)
!151 = !DILocation(line: 121, column: 19, scope: !150)
!152 = !DILocation(line: 121, column: 24, scope: !150)
!153 = !DILocation(line: 121, column: 13, scope: !144)
!154 = !DILocation(line: 123, column: 20, scope: !155)
!155 = distinct !DILexicalBlock(scope: !150, file: !1, line: 121, column: 33)
!156 = !DILocation(line: 123, column: 13, scope: !155)
!157 = !DILocation(line: 125, column: 5, scope: !144)
!158 = !DILocation(line: 127, column: 12, scope: !104)
!159 = !DILocation(line: 127, column: 5, scope: !104)
!160 = !DILocation(line: 128, column: 1, scope: !104)
!161 = distinct !DISubprogram(name: "memset", scope: !162, file: !162, line: 12, type: !163, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !11, retainedNodes: !24)
!162 = !DIFile(filename: "runtime/Freestanding/memset.c", directory: "/home/shafi/tools/klee", checksumkind: CSK_MD5, checksum: "f66ef9ef9131ab198e93a41b1a9ae1fc")
!163 = !DISubroutineType(types: !164)
!164 = !{!10, !10, !8, !165}
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !166, line: 46, baseType: !167)
!166 = !DIFile(filename: "/usr/lib/llvm-14/lib/clang/14.0.6/include/stddef.h", directory: "", checksumkind: CSK_MD5, checksum: "2499dd2361b915724b073282bea3a7bc")
!167 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!168 = !DILocalVariable(name: "dst", arg: 1, scope: !161, file: !162, line: 12, type: !10)
!169 = !DILocation(line: 12, column: 20, scope: !161)
!170 = !DILocalVariable(name: "s", arg: 2, scope: !161, file: !162, line: 12, type: !8)
!171 = !DILocation(line: 12, column: 29, scope: !161)
!172 = !DILocalVariable(name: "count", arg: 3, scope: !161, file: !162, line: 12, type: !165)
!173 = !DILocation(line: 12, column: 39, scope: !161)
!174 = !DILocalVariable(name: "a", scope: !161, file: !162, line: 13, type: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!177 = !DILocation(line: 13, column: 9, scope: !161)
!178 = !DILocation(line: 13, column: 13, scope: !161)
!179 = !DILocation(line: 14, column: 3, scope: !161)
!180 = !DILocation(line: 14, column: 15, scope: !161)
!181 = !DILocation(line: 14, column: 18, scope: !161)
!182 = !DILocation(line: 15, column: 12, scope: !161)
!183 = !DILocation(line: 15, column: 7, scope: !161)
!184 = !DILocation(line: 15, column: 10, scope: !161)
!185 = distinct !{!185, !179, !182, !186}
!186 = !{!"llvm.loop.mustprogress"}
!187 = !DILocation(line: 16, column: 10, scope: !161)
!188 = !DILocation(line: 16, column: 3, scope: !161)
